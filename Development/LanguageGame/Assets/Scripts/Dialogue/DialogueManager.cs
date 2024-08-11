using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro; 
using Ink.Runtime; 
using UnityEngine.EventSystems;
using UnityEngine.UI; 

// Code inspired by https://youtu.be/vY0Sk93YUhA?si=D1BYUhYjx0vQ22t7 's tutorial 
//Code inspired by https://youtu.be/tVrxeUIEV9E?si=5G0IFErsbNYxoyQk 's tutorial 

public class DialogueManager : MonoBehaviour
{
    [Header ("Parameters")]
    [SerializeField] public float typingSpeed = 0.04f; //smaller number, faster it types

    [Header("Load Globals JSON")]
    [SerializeField] private TextAsset loadGlobalsJSON; 

    [Header ("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel; //to enable / disable dialogue Popup 
    [SerializeField] private GameObject continueIcon; 
    [SerializeField] private TextMeshProUGUI dialogueText; //to change dialogue text 
    [SerializeField] private TextMeshProUGUI displayNameText; //to change Speaker name
    [SerializeField] private Image speakerWashi; 

    //[SerializeField] private Animator portraitAnimator; //to change Speaker image
   // private Animator layoutAnimator; 

    [Header ("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;
    
    
    private Story currentStory; //track which story 
    public bool dialogueIsPlaying {get; private set;} //Track to see if dialogue is actively playing or not. 
    
    [SerializeField] private GameObject settingsPanel;
    private bool canContinueToNextLine = false; 
    private Coroutine displayLineCoroutine; 

    public static DialogueManager instance {get; private set;} 

    private const string SPEAKER_TAG = "speaker";
    //private const string PORTRAIT_TAG = "portrait";
    //private const string LAYOUT_TAG = "layout"; 
    private const string VOICEOVER_TAG = "voiceover";

    private DialogueVariables dialogueVariables;
     
    // ------------------- Functions 
    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Found more than 1 Dialogue Manager");
        }
        instance = this;

        typingSpeed = AudioManager.instance.typingSpeed;  

        dialogueVariables = new DialogueVariables(loadGlobalsJSON);
    }

    public static DialogueManager GetInstance()
    {
        return instance; 
    }

    private void Start()
    {
        dialogueIsPlaying = false; 
        dialoguePanel.SetActive(false); 
        //get the layout animator 
        //layoutAnimator = dialoguePanel.GetComponent<Animator>(); 
        
        //get all the choices 
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices) 
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();    //grabs the text for each of the choices that a player has avaliable to them 
            index++;
        }
    }

    private void Update()
    {
        if(!dialogueIsPlaying)  //checks to see if dialogue is not running. 
        {
            return;
        }

        if (canContinueToNextLine && currentStory.currentChoices.Count ==0 && InputManager.GetInstance().GetSubmitPressed() && !settingsPanel.active)    //if space or continue is pressed it continues to the next line of dialogue 
        {
            ContinueStory(); 
        }
    }
    public void UpdateSpeed()
    {
        typingSpeed = AudioManager.instance.typingSpeed;
    }
    public void EnterDialogueMode (TextAsset inkJSON) //starts up visual dialogue system 
    {
        currentStory = new Story(inkJSON.text); 
        dialogueIsPlaying = true; 
        dialoguePanel.SetActive(true); 

        dialogueVariables.StartListening(currentStory); 

        //reset portrait, speaker name and layout 
        displayNameText.text = "???";
       // portraitAnimator.Play("default"); 
        //layoutAnimator.Play("right"); 

        ContinueStory();  //grab next line of dialogue and continue forward. 
    }

    private IEnumerator ExitDialogueMode() // Exits out of Dialogue and closes down all visual pop ups. 
    {
        yield return new WaitForSeconds(0.2f); 
        
        dialogueVariables.StopListening(currentStory); 

        dialogueIsPlaying = false; 
        dialoguePanel.SetActive(false);
        dialogueText.text = ""; //safe check to make sure its not displaying any linger text. 
    }

    public void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            if (displayLineCoroutine != null)
            {
                StopCoroutine(displayLineCoroutine); 
            }
            displayLineCoroutine = StartCoroutine(DisplayLine(currentStory.Continue()));
            HandleTags(currentStory.currentTags);  //Dealing with tags 
        }
        else 
        {
            StartCoroutine(ExitDialogueMode());  //if end of dialogue redirect to close things out
        }
    }

    private IEnumerator DisplayLine(string line)
    {
        dialogueText.text = line;
        dialogueText.maxVisibleCharacters = 0; 
        continueIcon.SetActive(false); //hide items until done typing 
        HideChoices(); 
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position);

        canContinueToNextLine = false; 
        bool isAddingRichTextTag = false; 

        foreach (char letter in line.ToCharArray())
        {
           if(InputManager.GetInstance().GetSubmitPressed())
           {
                dialogueText.maxVisibleCharacters = line.Length; 
                break; 
           }
           if (letter == '<' || isAddingRichTextTag) //Rich text tags
           {
                isAddingRichTextTag = true; 
                if (letter == '>')
                {
                    isAddingRichTextTag = false; 
                }
           }
           else
           {
                dialogueText.maxVisibleCharacters++; 
                yield return new WaitForSeconds(typingSpeed); 
           }
        }
        canContinueToNextLine = true; 
        continueIcon.SetActive(true);
        DisplayChoices(); 
    }

    private void HandleTags(List<string> currentTags)
    {
        foreach (string tag in currentTags)
        {
            //parse tag --- grabs information and splits tags up so its readable 
            string[] splitTag = tag.Split(':');         // first item is the key and second is the value based on formatting
            if (splitTag.Length !=2)
            {
                Debug.LogError("Tag could not be parsed:" + tag); 
            }
            string tagKey = splitTag[0].Trim();  //Trim cleans up whitespace 
            string tagValue = splitTag[1].Trim(); 

            //handle tag  ---- Grabs the type of handle and does the action based on what kind. 
            switch (tagKey)
            {
                case SPEAKER_TAG:
                    displayNameText.text = tagValue;
                    if (displayNameText.text == "Nomad")
                    { 
                        speakerWashi.color = new Color32(255, 139, 212, 255); 
                    }
                    else if (displayNameText.text == "Travel Agent")
                    {
                        speakerWashi.color = new Color32(175, 85, 60, 255);
                    }
                    else if (displayNameText.text == "Security")
                    {
                        speakerWashi.color = new Color32(68, 113, 199, 255);
                    }
                    else if (displayNameText.text == "Barista")
                    {
                        speakerWashi.color = new Color32(192, 207, 68, 255);
                    }
                    else {
                        speakerWashi.color = new Color32(0, 0, 0, 255);
                    }
                    break;
              
                case VOICEOVER_TAG:
                    if (tagValue == "Welcome1")
                    { 
                        AudioManager.instance.PlayOneShot(FMODEvents.instance.Welcome1, this.transform.position);
                    }
                    else if (tagValue == "Welcome2")
                    {
                        AudioManager.instance.PlayOneShot(FMODEvents.instance.Welcome2, this.transform.position);
                    }
                    else if (tagValue == "Customs1")
                    {
                        AudioManager.instance.PlayOneShot(FMODEvents.instance.Customs1, this.transform.position);
                    }
                    else if (tagValue == "Barista")
                    {
                        AudioManager.instance.PlayOneShot(FMODEvents.instance.Gracias, this.transform.position);
                    }
                    else {
                    }
                    break;
                default: 
                    Debug.LogWarning("Tag came in but is not currently being handeled:" + tag); 
                    break; 
            }
        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices; 
        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices were given than UI suppot. # of choices given:" + currentChoices.Count); 
        }
        int index = 0; 

        //enable & initialize the choices up to # of choices for this line of dialogue 
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text; 
            index++;
        }

        //go through the remaining choices the UI supports and hides unused ones 
        for (int i = index; i< choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false); 
        }
        StartCoroutine(SelectFirstchoice()); 
    }

    private void HideChoices()
    {
        foreach (GameObject choiceButton in choices)
        {
            choiceButton.SetActive(false); 
        }
    }
    private IEnumerator SelectFirstchoice()
    {
        //Grabs the first choice first and waits. 
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject); 
    }

    public void MakeChoice(int choiceIndex)
    {
        if (canContinueToNextLine)
        {
            currentStory.ChooseChoiceIndex(choiceIndex);
           //ContinueStory(); 
        }
    }

   public Ink.Runtime.Object GetVariableState(string variableName) 
    {
        Ink.Runtime.Object variableValue = null;
        dialogueVariables.variables.TryGetValue(variableName, out variableValue);
        if (variableValue == null) 
        {
            Debug.LogWarning("Ink Variable was found to be null: " + variableName);
        }
        return variableValue;
    }
}
