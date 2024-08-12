using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FMODUnity; 
// code inspired from: https://www.youtube.com/watch?v=rcBHIOjZDpk 
public class FMODEvents : MonoBehaviour
{
   //Voice Acting 
    [field: Header("Dictionary")]
    [field: SerializeField] public EventReference Hola {get; private set;} 
    [field: SerializeField] public EventReference Gracias {get; private set;} 
    [field: Header("Notebook")]
    [field: SerializeField] public EventReference JournalOpen {get; private set;} 
    [field: SerializeField] public EventReference FlipPage {get; private set;}
    [field: SerializeField] public EventReference Sticker {get; private set;}
    [field: SerializeField] public EventReference WritingSound {get; private set;}
    [field: Header("Voice Over")]
    [field: SerializeField] public EventReference Welcome1 {get; private set;} 
    [field: SerializeField] public EventReference Welcome2 {get; private set;}
    [field: SerializeField] public EventReference Customs1 {get; private set;}  
   //SFX
    
    [field: Header("Continue SFX")]
    [field: SerializeField] public EventReference ContinueButton {get; private set;} 
    [field: SerializeField] public EventReference DialogueContinueButton {get; private set;} 
    [field: Header("Door Sound")]
    [field: SerializeField] public EventReference DoorSound {get; private set;} 

//Music 
   [field: Header("Background Music")]
   [field: SerializeField] public EventReference BackgroundMusic {get; private set;} 

    public static FMODEvents instance {get; private set;}

   private void Awake()
   {
    if (instance != null)
    {
        Debug.LogError("Found more than one FMOD Events instance in the scene.");
    }
    instance = this; 
   }
}
