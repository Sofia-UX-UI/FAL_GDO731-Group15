using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro; 
using Ink.Runtime; 
using UnityEngine.EventSystems; 

// Code inspired by https://youtu.be/vY0Sk93YUhA?si=D1BYUhYjx0vQ22t7 's tutorial 

public class DialogueManager : MonoBehaviour
{
    [Header ("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel; //to enable / disable dialogue Popup 
    [SerializeField] private TextMeshProUGUI dialogueText; //to change dialogue text 
    [SerializeField] private TextMeshProUGUI displayNameText; //to change Speaker name
    [SerializeField] private Animator portraitAnimator; //to change Speaker image
    private Animator layoutAnimator; 


    [Header ("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;
    
    
    private Story currentStory; //track which story 
    public bool dialogueIsPlaying {get; private set;} //Track to see if dialogue is actively playing or not. 

    private static DialogueManager instance; 

    private const string SPEAKER_TAG = "speaker";
    private const string PORTRAIT_TAG = "portrait";
    private const string LAYOUT_TAG = "layout"; 
    
    // ------------------- Functions 
    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Found more than 1 Dialogue Manager");
        }
        instance = this; 
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
        layoutAnimator = dialoguePanel.GetComponent<Animator>(); 
        
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

        if (InputManager.GetInstance().GetSubmitPressed())    //if space or continue is pressed it continues to the next line of dialogue 
        {
            ContinueStory(); 
        }
    }

    public void EnterDialogueMode (TextAsset inkJSON) //starts up visual dialogue system 
    {
        currentStory = new Story(inkJSON.text); 
        dialogueIsPlaying = true; 
        dialoguePanel.SetActive(true); 

        //reset portrait, speaker name and layout 
        displayNameText.text = "???";
        portraitAnimator.Play("default"); 
        layoutAnimator.Play("right"); 

        ContinueStory();  //grab next line of dialogue and continue forward. 
    }

    public void ExitDialogueMode() // Exits out of Dialogue and closes down all visual pop ups. 
    {
        dialogueIsPlaying = false; 
        dialoguePanel.SetActive(false);
        dialogueText.text = ""; //safe check to make sure its not displaying any linger text. 
    }

    public void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue(); //will pull next line of dialogue 
            DisplayChoices(); 
            //Dealing with tags 
            HandleTags(currentStory.currentTags); 
        }
        else 
        {
            ExitDialogueMode();  //if end of dialogue redirect to close things out
        }
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
                    break;
                case PORTRAIT_TAG:
                    portraitAnimator.Play(tagValue); 
                    break; 
                case LAYOUT_TAG:
                    layoutAnimator.Play(tagValue);
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

    private IEnumerator SelectFirstchoice()
    {
        //Grabs the first choice first and waits. 
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject); 
    }

    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);

    }
}
