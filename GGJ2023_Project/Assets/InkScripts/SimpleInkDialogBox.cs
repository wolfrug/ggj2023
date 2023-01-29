using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class SimpleInkDialogBox : MonoBehaviour {

    [Tooltip ("This is the box that can be safely turned off when not in use")]
    public GameObject m_activeSelf;
    public Transform m_textParent;
    public Transform m_optionsParent;
    public GameObject m_textBoxPrefab;
    public GameObject m_optionBoxPrefab;
    public Button m_continueButton;
    public Button m_skipButton; // put this -above- the continue button ;)
    public Image m_dialogImage;
    public bool m_canContinue;
    // Start is called before the first frame update
    void Start () {
        if (m_continueButton != null) {
            m_continueButton.onClick.AddListener (() => m_canContinue = true);
        } else {
            m_canContinue = true;
        }
        if (m_dialogImage != null) {
            SetDialogImage (m_dialogImage.sprite);
        };
    }

    public bool Active {
        get {
            return m_activeSelf.activeInHierarchy;
        }
        set {
            m_activeSelf.SetActive (value);
        }
    }
    public void SetContinueButtonActive (bool active) {
        if (HasContinueButton) {
            m_continueButton.gameObject.SetActive (active);
        }
    }

    public void SetSkipButtonActive (bool active) {
        if (HasSkipButton) {
            m_skipButton.gameObject.SetActive (active);
        }
    }

    public bool HasContinueButton {
        get {
            return m_continueButton != null;
        }
    }
    public bool HasSkipButton {
        get {
            return m_skipButton != null;
        }
    }

    public GameObject SpawnTextObject (string text) {
        GameObject inkTextObject = Instantiate (m_textBoxPrefab, m_textParent);

        // Special stuff for the special tags
        TypeWriter writer = inkTextObject.GetComponent<TypeWriter> ();
        if (writer != null) {
            if (writer.useFade_) {
                if (text[0] == '<') {
                    writer.useFade_ = false;
                }
            }
        }
        inkTextObject.GetComponentInChildren<TextMeshProUGUI> ().SetText (text);
        LayoutRebuilder.ForceRebuildLayoutImmediate (m_textParent.GetComponent<RectTransform> ());
        return inkTextObject;
    }
    public GameObject SpawnButtonObject (string text) {
        GameObject inkOptionButton = Instantiate (m_optionBoxPrefab, m_optionsParent);
        inkOptionButton.GetComponentInChildren<TextMeshProUGUI> ().SetText (text);
        LayoutRebuilder.ForceRebuildLayoutImmediate (m_optionsParent.GetComponent<RectTransform> ());
        return inkOptionButton;
    }
    public GameObject SpawnPrefabInText (GameObject prefab) {
        GameObject inkObject = Instantiate (prefab, m_textParent);
        LayoutRebuilder.ForceRebuildLayoutImmediate (m_textParent.GetComponent<RectTransform> ());
        return inkObject;
    }
    public GameObject SpawnPrefabInOptions (GameObject prefab) {
        GameObject inkObject = Instantiate (prefab, m_optionsParent);
        LayoutRebuilder.ForceRebuildLayoutImmediate (m_optionsParent.GetComponent<RectTransform> ());
        return inkObject;
    }

    public void SetDialogImage (Sprite newImage) {
        if (newImage != null) {
            if (m_dialogImage != null) {
                m_dialogImage.sprite = newImage;
                m_dialogImage.gameObject.SetActive (true);
            }
        } else {
            if (m_dialogImage != null) {
                m_dialogImage.gameObject.SetActive (false);
            }
        }
    }
    public void ClearAllText () {
        foreach (Transform child in m_textParent) {
            Destroy (child.gameObject);
        }
    }
    public void ClearAllOptions () {
        foreach (Transform child in m_optionsParent) {
            Destroy (child.gameObject);
        }
    }

}