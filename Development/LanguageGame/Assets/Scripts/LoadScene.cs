using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 
using FMOD.Studio; 

public class LoadScene : MonoBehaviour
{
    [Header("Area")]
    [SerializeField] private MusicTransition area; 
    [Header("Moving Area")]
    [SerializeField] private MusicTransition newArea; 
    public void LoadLevel1()
    {
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position);
        AudioManager.instance.SetBackgroundMusic(newArea); 
        Debug.Log(newArea); 
        UnityEngine.SceneManagement.SceneManager.LoadScene("Level_One"); 
    }

      public void LoadLevel2()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("Level_Two"); 
        AudioManager.instance.SetBackgroundMusic(newArea); 
    }
       public void LoadMenu()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("MainMenu"); 
        AudioManager.instance.SetBackgroundMusic(area); 
       
    }
}
