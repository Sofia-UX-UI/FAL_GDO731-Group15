using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestTrigger : MonoBehaviour
{
    [Header("Area")]
    [SerializeField] private MusicTransition area; 

    private void OnTriggerEnter2D(Collider2D collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            AudioManager.instance.SetBackgroundMusic(area); 
            Debug.Log("I enter"); 
            Debug.Log(area); 
        }
    }
}
