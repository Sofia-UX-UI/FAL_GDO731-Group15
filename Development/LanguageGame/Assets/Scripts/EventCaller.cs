using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventCaller : MonoBehaviour
{
    public void SetColour (Color newColour)
    {
        GetComponent<MeshRenderer>().material.color = newColour;
        Debug.Log(newColour); 
    }
}
