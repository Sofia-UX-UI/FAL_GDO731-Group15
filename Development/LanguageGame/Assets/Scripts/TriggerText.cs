using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerText : MonoBehaviour
{
   [Header("item to disable")]
   [SerializeField] private GameObject item; 
    
    private bool playerInRange; 
   
 private void Awake()
   {
    playerInRange = false;
    item.SetActive(true); 
   }

   private void OnTriggerEnter2D(Collider2D collider)
   {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = true;
            item.SetActive(false); 
        }
   }
}
