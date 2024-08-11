using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerText : MonoBehaviour
{
   [Header("item to enable/disable")]
   [SerializeField] private GameObject item; 
  // [Header("item to enable")]
   //[SerializeField] private GameObject enableditem;  
   public bool objectEnable; 
 private void Awake()
   {
   // item.SetActive(true); 
    //enableditem.SetActive(false); 
   }

   private void OnTriggerEnter2D(Collider2D collider)
   {
        if (collider.gameObject.tag == "Player")
        {
           if(objectEnable) 
           {
            item.SetActive(true);
           }
           else
           {
            item.SetActive(false);
           }
        }
   }
}
