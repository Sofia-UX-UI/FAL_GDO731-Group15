using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerText : MonoBehaviour
{
   [Header("item to disable")]
   [SerializeField] private GameObject disableditem; 
   [Header("item to enable")]
   [SerializeField] private GameObject enableditem; 
    
    private bool playerInRange; 
   
 private void Awake()
   {
    playerInRange = false;
    disableditem.SetActive(true); 
    enableditem.SetActive(false); 
   }

   private void OnTriggerEnter2D(Collider2D collider)
   {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = true;
            disableditem.SetActive(false);
            enableditem.SetActive(true); 
        }
   }
}