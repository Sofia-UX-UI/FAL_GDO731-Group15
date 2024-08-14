using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CustomerTriggerOff : MonoBehaviour
{
    [SerializeField] private GameObject DoorOff;
    [SerializeField] private GameObject MainMenuOn;
    public Animator animator; 
    
    void Update()
    {
       //Talked to customer
       string objectiveComplete = ((Ink.Runtime.StringValue) DialogueManager.GetInstance().GetVariableState("nextCustomer")).value;
       string NomadOrderComplete = ((Ink.Runtime.StringValue) DialogueManager.GetInstance().GetVariableState("nextCustomer")).value;
        if (objectiveComplete == "yes"|| NomadOrderComplete == "yes") 
            {
                DoorOff.SetActive(false);
                MainMenuOn.SetActive(true); 
            } 
        //Check to see if customer got their order 
        string CustOrderComplete = ((Ink.Runtime.StringValue) DialogueManager.GetInstance().GetVariableState("customerFinished")).value;
        if (CustOrderComplete == "yes") 
            {
                animator.SetBool("Ordered", true);
            }
        //Placed and got Nomad's Order 
        
    }
}
