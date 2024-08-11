using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FMODUnity; 
using FMOD.Studio; 
// code from: https://www.youtube.com/watch?v=rcBHIOjZDpk & https://learn.unity.com/tutorial/implement-data-persistence-between-scenes

public class AudioManager : MonoBehaviour
{
    private List<EventInstance> eventInstances;
    //public EventInstance ambienceEventInstance; 
    public EventInstance BackgroundMusic; 
    public static AudioManager instance {get; private set;}
   
//Menu 
    [Header ("Volume")]
    [Range(0, 1)]
    public float masterVolume = 1; 
    [Range(0, 1)]
    public float musicVolume = 1; 
   [Range(0, 1)]
    public float voiceVolume = 1; 
    [Range(0, 1)]
    public float SFXVolume = 1;
    
    [Header("TypingSpeed")]
    [Range(-100, 100)]
    public float typingSpeed = 0.04f;

    private Bus masterBus; 
    private Bus musicBus; 
    private Bus voiceBus; 
    private Bus sfxBus; 
  
  //public bool PlayMusic; 
    public bool MusicOn; 
  //private EventInstance noiseEventInstance; 
    public string Gain = "MusicGain"; 
    public float parameterValue;

    FMOD.Studio.EventInstance bMusic; 
   // FMOD.Studio.EventInstance AmbienceSounds; 
//singleton. 
  private void Awake()
  {
    if (instance != null)
    {
        Debug.LogError("Found more than one audio manager in the scene."); 
        Destroy(gameObject); 
        return; 
    }
    instance = this; 
    DontDestroyOnLoad(gameObject);

    eventInstances = new List<EventInstance>();

    masterBus = RuntimeManager.GetBus("bus:/"); 
    musicBus = RuntimeManager.GetBus("bus:/Music"); 
    voiceBus = RuntimeManager.GetBus("bus:/voice"); 
    sfxBus = RuntimeManager.GetBus("bus:/SFX"); 
  }

  private void Start()
  {
        bMusic = FMODUnity.RuntimeManager.CreateInstance("event:/Backgounds/BackgroundMusic"); 
        bMusic.start(); 
       // AmbienceSounds = FMODUnity.RuntimeManager.CreateInstance("event:/Background/BakingSounds"); 
       // AmbienceSounds.start(); 
  }
  
   private void Update() //Sets volume based on values that I can edit in editor. 
   {
      masterBus.setVolume(masterVolume); 
      musicBus.setVolume(musicVolume);
      voiceBus.setVolume(voiceVolume); 
      sfxBus.setVolume(SFXVolume); 
   }

  public void SetBackgroundMusic(MusicTransition area) //transition background music
  {
    bMusic.setParameterByName("BackgroundMusic", (float) area);
    Debug.Log(area); 
  }

  public void PlayOneShot(EventReference sound, Vector3 worldPos) //This is used to play one off music clips
  {
    RuntimeManager.PlayOneShot(sound, worldPos); 
  }

  public EventInstance CreateInstance(EventReference eventReference)
  {
    EventInstance eventInstance = RuntimeManager.CreateInstance(eventReference);
    return eventInstance; 
  }
  
  //private void InitializeAmbience (EventReference ambienceEventReference)
  //{
    //ambienceEventInstance = CreateInstance(ambienceEventReference); 
    //ambienceEventInstance.start(); 
  //}

  public void PleaseStop()
  {
    bMusic.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT); 
    //AmbienceSounds.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);  
  }
}
