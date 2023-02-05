using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

[System.Serializable]
public class BetterTooltipActivated : UnityEvent<BetterTooltip, bool> { }

public class BetterTooltip : MonoBehaviour, IPointerExitHandler, IPointerEnterHandler {

    public GameObject m_tooltipPrefab;
    public GameObject m_spawnedTooltip;

    public BetterTooltipActivated m_onTooltipActivated;
    private Canvas m_parentCanvas;
    private RectTransform m_tooltipRectTransform;
    private bool m_active = true;

    void Start () {
        m_parentCanvas = new GameObject ().AddComponent<Canvas> ();
        m_parentCanvas.renderMode = RenderMode.ScreenSpaceOverlay;
        m_parentCanvas.gameObject.name = "BetterTooltipCanvas";
        m_parentCanvas.sortingOrder = 999;
        Tooltip.transform.SetParent (m_parentCanvas.transform);
        m_tooltipRectTransform = Tooltip.GetComponent<RectTransform> ();
        Tooltip.SetActive (false);

    }

    public bool Active {
        get {
            return m_active;
        }
        set {
            m_active = value;
        }
    }

    void SetAtMousePointer () {
        if (TopHalf && RightHalf) { // top right
            m_tooltipRectTransform.anchorMax = new Vector2 (1f, 1f);
            m_tooltipRectTransform.anchorMin = new Vector2 (1f, 1f);
            m_tooltipRectTransform.pivot = new Vector2 (1, 1);
        }
        if (TopHalf && !RightHalf) { // top left
            m_tooltipRectTransform.anchorMin = new Vector2 (0, 1);
            m_tooltipRectTransform.anchorMax = new Vector2 (0, 1);
            m_tooltipRectTransform.pivot = new Vector2 (0, 1);
        }
        if (!TopHalf && RightHalf) // bottom right
        {
            m_tooltipRectTransform.anchorMin = new Vector2 (1, 0);
            m_tooltipRectTransform.anchorMax = new Vector2 (1, 0);
            m_tooltipRectTransform.pivot = new Vector2 (1, 0);
        }
        if (!TopHalf && !RightHalf) { // bottom left
            m_tooltipRectTransform.anchorMin = new Vector2 (0, 0);
            m_tooltipRectTransform.anchorMax = new Vector2 (0, 0);
            m_tooltipRectTransform.pivot = new Vector2 (0, 0);
        }
        Tooltip.transform.position = Input.mousePosition;
    }

    bool TopHalf {
        get { return Input.mousePosition.y > Screen.height / 2.0f; }
    }
    bool RightHalf {
        get { return Input.mousePosition.x > Screen.width / 2.0f; }
    }

    public GameObject Tooltip {
        get {
            if (m_spawnedTooltip == null) {
                m_spawnedTooltip = Instantiate (m_tooltipPrefab, m_parentCanvas.transform);
            }
            return m_spawnedTooltip;
        }
        set {
            m_spawnedTooltip = value;
        }
    }
    public void Activate () {
        Tooltip.SetActive (true);
        m_onTooltipActivated.Invoke (this, true);
        SetAtMousePointer ();
    }
    public void Deactivate () {
        Tooltip.SetActive (false);
        m_onTooltipActivated.Invoke (this, false);
    }
    public void OnPointerEnter (PointerEventData data) // Hint -> don't raycast the tooltip object, or it might block this event!
    {
        if (Active) {
            //Debug.Log("Pointer entered - activate tooltip after waittime");
            CancelInvoke ("Activate");
            Invoke ("Activate", 0f);
        };
    }
    public void OnPointerExit (PointerEventData data) {
        //Debug.Log("Point exited, deactivate tooltip!");
        // We don't check for IsActive here, we just close it
        CancelInvoke ("Activate");
        Deactivate ();
    }
    void OnDestroy () {
        // Destroy the tooltip object too
        if (m_parentCanvas != null) {
            Destroy (m_parentCanvas.gameObject);
        }
    }
}