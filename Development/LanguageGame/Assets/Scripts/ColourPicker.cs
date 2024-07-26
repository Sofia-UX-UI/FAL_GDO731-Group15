using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events; 
using UnityEngine.EventSystems; 
using UnityEngine.UI; 

public class ColourPicker : MonoBehaviour
{
    public UnityEvent<Color> ColourPickerEvent; 
    [SerializeField] Texture2D colourChart;
    [SerializeField] GameObject chart;
    [SerializeField] RectTransform colourChartRect;
    [SerializeField] RectTransform cursor;
    [SerializeField] Image button;
    [SerializeField] Image cursorColour; 


    public void PickColour(BaseEventData data)
    {
        PointerEventData pointer = data as PointerEventData; 
        cursor.position = pointer.position;

        Vector2 cursorRealPosition = new Vector2(colourChartRect.rect.width/2 + cursor.localPosition.x, colourChartRect.rect.height/2 + cursor.localPosition.y);
        Color pickedColour = colourChart.GetPixel((int)(cursorRealPosition.x * (colourChart.width/colourChartRect.rect.width)), (int)(cursorRealPosition.y * (colourChart.height /colourChartRect.rect.height))); 
        Debug.Log(pickedColour);
        button.color = pickedColour;
        cursorColour.color = pickedColour; 
        ColourPickerEvent.Invoke(pickedColour); 
    }
}
