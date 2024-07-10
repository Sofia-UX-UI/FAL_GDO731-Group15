using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
   [Header("Visual popup")]
   [SerializeField] private GameObject popup; 


    [Header("Ink JSON")]
    [SerializeField] TextAsset inkJSON; 
   private bool playerInRange; 

   private void Awake()
   {
    playerInRange = false;
    popup.SetActive(false); 
   }

   private void Update()
   {
        if (playerInRange && !DialogueManager.GetInstance().dialogueIsPlaying)
        {
            popup.SetActive(true); 
            if (InputManager.GetInstance().GetInteractPressed())
            {
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
           }
        }
        else
        {
            popup.SetActive(false); 
        }
   }

   private void OnTriggerEnter2D(Collider2D collider)
   {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = true;
        }
   }

    private void OnTriggerExit2D(Collider2D collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = false;
        }
    }
}
