using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DictionaryAudio : MonoBehaviour
{
   public void PlayHola(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.Hola, this.transform.position); 
    }
    public void PlayGracias(){
        AudioManager.instance.PlayOneShot(FMODEvents.instance.Gracias, this.transform.position); 
    }
}
