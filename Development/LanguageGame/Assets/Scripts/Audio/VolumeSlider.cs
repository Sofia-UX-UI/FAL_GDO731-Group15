using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
// Code from: https://www.youtube.com/watch?v=rcBHIOjZDpk 

public class VolumeSlider : MonoBehaviour
{
   private enum VolumeType 
    {
        MASTER, 
        MUSIC, 
        VOICE, 
        SFX
    }

    [Header("Type")]
    [SerializeField] private VolumeType volumeType; 
    private Slider volumeSlider; 

private void Awake()
{
    volumeSlider = this.GetComponentInChildren<Slider>(); 
}

private void Update()
{
    switch (volumeType)
    {
        case VolumeType.MASTER:
            volumeSlider.value = AudioManager.instance.masterVolume;
            break; 
        case VolumeType.MUSIC:
            volumeSlider.value = AudioManager.instance.musicVolume;
            break; 
        case VolumeType.VOICE:
            volumeSlider.value = AudioManager.instance.voiceVolume;
            break; 
        case VolumeType.SFX:
            volumeSlider.value = AudioManager.instance.SFXVolume;
            break; 
        default:
            Debug.LogWarning("Volume Type not supported:" + volumeType);
            break; 
    }
}
public void OnSliderValueChanged()
{
    switch (volumeType)
    {
        case VolumeType.MASTER:
            AudioManager.instance.masterVolume = volumeSlider.value; 
            break; 
        case VolumeType.MUSIC:
            AudioManager.instance.musicVolume = volumeSlider.value; 
            break; 
        case VolumeType.VOICE:
            AudioManager.instance.voiceVolume = volumeSlider.value; 
            break; 
        case VolumeType.SFX:
            AudioManager.instance.SFXVolume = volumeSlider.value; 
            break; 
        default:
            Debug.LogWarning("Volume Type not supported:" + volumeType);
            break; 
    }
}

}
