using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CustomsGate : MonoBehaviour
{
     [SerializeField] private GameObject toggleObject;

   private void Update()
   {
        string objectiveComplete = ((Ink.Runtime.StringValue) DialogueManager
            .GetInstance()
            .GetVariableState("customsCheck")).value;
        if (objectiveComplete == "yes") 
        {
            toggleObject.SetActive(false); 
        }
        
    }
}
