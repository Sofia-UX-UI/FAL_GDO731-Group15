using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 
using FMOD.Studio; 

public class LoadScene : MonoBehaviour
{
    public void LoadLevel1()
    {
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position);
        UnityEngine.SceneManagement.SceneManager.LoadScene("Level_One"); 
    }

      public void LoadLevel2()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("Level_Two"); 
    }
       public void LoadMenu()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("MainMenu"); 
       
    }
}
