using System.Collections;
using System.Collections.Generic;
using UnityEngine;
// code from:  https://www.youtube.com/watch?v=rcBHIOjZDpk

public class ContinueAudio : MonoBehaviour
{
    public void PlayAudioSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    }
    public void PlayStickerSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    }
    public void PlayWashiSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    }
     public void PlayPhotoSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    }
      public void PlayWritingSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    } 
    public void PlayDialogueSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    }
     public void PlayPageFlipSound(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.ContinueButton, this.transform.position); 
    }
}
