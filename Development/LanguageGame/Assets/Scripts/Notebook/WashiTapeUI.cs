using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WashiTapeUI : MonoBehaviour
{
    public Animator animator;
  public void Start()
  {
    animator = GetComponent<Animator>();
  }

  public void ShowBox()
  {
    animator.SetTrigger("EndAnimation");

  }
  public void HideBox()
  {
    animator.SetTrigger("StartAnimation");
  }
}
