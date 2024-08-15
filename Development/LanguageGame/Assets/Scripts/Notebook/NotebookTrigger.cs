using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotebookTrigger : MonoBehaviour
{
[Header("Visual popup")]
   [SerializeField] private GameObject popup; 
[Header("Notebook")]
   [SerializeField] private GameObject notebook; 
   private bool playerInRange; 
   public bool notebookCheck = false; 

   private void Awake()
   {
    playerInRange = false;
    popup.SetActive(false); 
   }

   private void Update()
   {
        if (playerInRange)
        {
            popup.SetActive(true); 
            if (InputManager.GetInstance().GetInteractPressed())
            {
                notebook.SetActive(true);
                notebookCheck = true; 
                AudioManager.instance.PlayOneShot(FMODEvents.instance.JournalOpen, this.transform.position); 
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
