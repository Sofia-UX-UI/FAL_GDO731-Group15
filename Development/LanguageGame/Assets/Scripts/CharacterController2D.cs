using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(BoxCollider2D))]
[RequireComponent(typeof(Rigidbody2D))]
public class CharacterController2D : MonoBehaviour
{
 [Header("Movement Params")]
    public float runSpeed = 6.0f;
    public float gravityScale = 20.0f;

    // components attached to player
    private BoxCollider2D coll;
    private Rigidbody2D rb;
    
    private Animator animator; 
    private bool MoveRight = false; 
     private bool MoveLeft = false; 

    // other 
   // private bool isGrounded = false;

    private void Awake()
    {
        coll = GetComponent<BoxCollider2D>();
        rb = GetComponent<Rigidbody2D>();

        rb.gravityScale = gravityScale;
        animator = GetComponent<Animator>(); 
    }

    private void FixedUpdate()
    {
        if (DialogueManager.GetInstance().dialogueIsPlaying)   //checks to see if dialogue is running and disabled ability to move around. 
        {
            return;
        }
       // if (NotebookTrigger.notebookCheck)   //checks to see if dialogue is running and disabled ability to move around. 
       // {
       //     return;
       // }
        HandleHorizontalMovement();
    }
    
    private void HandleHorizontalMovement()
    {
        Vector2 moveDirection = InputManager.GetInstance().GetMoveDirection();
        rb.velocity = new Vector2(moveDirection.x * runSpeed, rb.velocity.y);
        AnimateWalk(moveDirection); 
    }

    public void AnimateWalk(Vector2 moveDirection)
    {
        MoveRight = (moveDirection.x > 0.001f) ? true : false; 
        animator.SetBool("WalkingRight", MoveRight); 
        MoveLeft = (moveDirection.x < -0.001f) ? true : false; 
        animator.SetBool("WalkingLeft", MoveLeft); 
    }
}
