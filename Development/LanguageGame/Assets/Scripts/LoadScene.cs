using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 
using FMOD.Studio; 

public class LoadScene : MonoBehaviour

{
    public Animator transition;
    public Animator plane;
    
    [Header("Area")]
    [SerializeField] private MusicTransition area; 
    [Header("Moving Area")]
    [SerializeField] private MusicTransition newArea; 
    public void LoadLevel1()
    {
        StartCoroutine ("Transition");
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position);
        AudioManager.instance.SetBackgroundMusic(newArea); 
        Debug.Log(newArea); 
        UnityEngine.SceneManagement.SceneManager.LoadScene("1_Airport"); 
        
    }

    public void LoadLevel2()
    {
        StartCoroutine ("Transition");
        UnityEngine.SceneManagement.SceneManager.LoadScene("Level_Two"); 
        AudioManager.instance.SetBackgroundMusic(newArea);
        
    }
    public void LoadMenu()
    {
        StartCoroutine ("Transition");
        UnityEngine.SceneManagement.SceneManager.LoadScene("0_mainmenu"); 
        AudioManager.instance.SetBackgroundMusic(area); 
        
       
    }

    IEnumerator Transition()
    {
        
        transition.SetTrigger("Start");
        plane.Play("Plane_Transition");
        yield return new WaitForSeconds(1f);
        

    }
}
