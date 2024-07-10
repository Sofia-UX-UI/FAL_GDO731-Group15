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


    [Header ("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;
    
    
    private Story currentStory; //track which story 
    public bool dialogueIsPlaying {get; private set;} //Track to see if dialogue is actively playing or not. 

    private static DialogueManager instance; 
    
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
        
        //get all the choices 
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices) 
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }
    }

    private void Update()
    {
        if(!dialogueIsPlaying)
        {
            return;
        }

        if (InputManager.GetInstance().GetSubmitPressed())
        {
            ContinueStory(); 
        }
    }

    public void EnterDialogueMode (TextAsset inkJSON)
    {
        currentStory = new Story(inkJSON.text); 
        dialogueIsPlaying = true; 
        dialoguePanel.SetActive(true); 
        ContinueStory(); 
    }

    public void ExitDialogueMode()
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
        }
        else 
        {
            ExitDialogueMode(); 
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
    }
}
