using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem; 

[RequireComponent(typeof(PlayerInput))]
public class InputManager : MonoBehaviour
{
    private Vector2 moveDirection = Vector2.zero;
    private bool interactPressed = false;
    private bool submitPressed = false; 
    private bool pausePressed = false; 
    
    [Header ("Components")]
    [SerializeField] private GameObject menu; 
    [SerializeField] private GameObject firstSelected; 

    [Header ("Player")]
    [SerializeField] private CharacterController2D characterController;

    private static InputManager instance; 
    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogError("Found more than 1 Input Manager");
        }
        instance = this; 
    }

    private void Start()
    {
        menu.gameObject.SetActive(false); 
    }

    public static InputManager GetInstance()
    {
        return instance; 
    }

    public void MovePressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            moveDirection = context.ReadValue<Vector2>(); 
        }
        else if (context.canceled)
        {
            moveDirection = context.ReadValue<Vector2>(); 
        }
    }

    public void InteractButtonPressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            interactPressed = true;
        }
        else if (context.canceled)
        {
            interactPressed = false;
        }
    }

    public void SubmitPressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            submitPressed = true;
        }
        else if (context.canceled)
        {
            submitPressed = false;
        }
    }

      public Vector2 GetMoveDirection() 
    {
        return moveDirection;
    }

    public void PausePressed(InputAction.CallbackContext context)
    {        
        if(context.performed)
        {
            pausePressed = true;  
            if(menu.gameObject.activeInHierarchy) //toggle off
            {
                    menu.gameObject.SetActive(false);
                    //  characterController.EnableMovement(); 
            }
            else  //toggle on
            {
                menu.gameObject.SetActive(true);
                //EventSystem.current.SetSelectedGameObject(firstSelected);
            //  characterController.DisableMovement(); 
            }        
        }
        else if (context.canceled)
        {
            pausePressed = false;
        }
    }

    public bool GetInteractPressed() 
    {
        bool result = interactPressed;
        interactPressed = false;
        return result;
    }

    public bool GetSubmitPressed() 
    {
        bool result = submitPressed;
        submitPressed = false;
        return result;
    }

    public void RegisterSubmitPressed() 
    {
        submitPressed = false;
    }

    public bool GetPausePressed()
    {
        bool result = pausePressed; 
        pausePressed = false;
        return result;
    }
}
