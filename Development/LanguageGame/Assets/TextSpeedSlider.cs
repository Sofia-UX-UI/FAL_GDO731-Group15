using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextSpeedSlider : MonoBehaviour
{
    private Slider typingSpeedSlider; 

    private void Awake()
    {
        typingSpeedSlider = this.GetComponentInChildren<Slider>(); 
    }

    public void OnSliderValueChanged()
    {
        DialogueManager.instance.typingSpeed = typingSpeedSlider.value; 
    }
}
