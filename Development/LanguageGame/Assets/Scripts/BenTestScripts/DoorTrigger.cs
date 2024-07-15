using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class DoorTrigger : MonoBehaviour
{
   [SerializeField] private GameObject Popup;

   private bool playerInRange;

   private void Awake()
   {
    playerInRange = false;
    Popup.SetActive(false); 
   }

   private void Update()
   {
    if (playerInRange && Input.GetKeyDown(KeyCode.E))
    {
        SceneManager.LoadScene("SampleScene");
    }    
   }

    private void FixedUpdate()
    {
        if (playerInRange = true)
        {
            Popup.SetActive(true);
        }
    else
        {
            Popup.SetActive(false);
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
