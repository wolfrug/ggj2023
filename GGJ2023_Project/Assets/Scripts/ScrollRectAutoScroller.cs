using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScrollRectAutoScroller : MonoBehaviour {
    public ScrollRect m_targetRect;

    public void ScrollDown () {
        UIX.UpdateLayout (m_targetRect.transform);
        m_targetRect.verticalNormalizedPosition = 0f;
    }
}