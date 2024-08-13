using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTriggerAuto : MonoBehaviour
{
    [Header("Ink JSON")]
    [SerializeField] TextAsset inkJSON; 
   private bool playerInRange; 
   [SerializeField] private GameObject customerTrigger;

   private void Awake()
   {
    playerInRange = false;
   }

   private void Update()
   {
        if (playerInRange && !DialogueManager.GetInstance().dialogueIsPlaying)
        {
              if (customerTrigger.activeInHierarchy)
              {
                customerTrigger.SetActive(false); 
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON); 
              }
        }
        else
        {
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

