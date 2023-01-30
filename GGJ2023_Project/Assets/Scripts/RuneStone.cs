using System.Collections;
using System.Collections.Generic;
using InkEngine;
using UnityEngine;

public class RuneStone : MonoBehaviour {
    public GameObject m_selfObject;
    public DissolveEffect m_backRunestone;
    public DissolveEffect m_coveringRunestone;
    public GameObject m_textCanvas;
    public TypeWriter m_typeWriter;

    void Start () {
        // add events!
        m_coveringRunestone.m_onDissolveEnded.AddListener ((x) => m_textCanvas.SetActive (false));
        m_backRunestone.m_onDissolveEnded.AddListener ((x) => m_selfObject.SetActive (false));
        m_selfObject.SetActive (false);
    }

    public void TriggerFromListener (InkDialogueLine dialogueLine, InkTextVariable variable) {
        if (variable.VariableArguments[0] == "true") {
            ShowRuneStone (dialogueLine.displayText);
        } else {
            DissolveRuneStone ();
        }
    }
    public void ShowRuneStone (string textToShow) {
        m_selfObject.SetActive (true);
        m_textCanvas.SetActive (true);
         m_coveringRunestone.gameObject.SetActive (true);
        m_backRunestone.Reset ();
        m_coveringRunestone.Reset ();
        m_typeWriter.ClearWriter ();
        m_typeWriter.Write (textToShow);
    }

    public void DissolveText () {
        m_coveringRunestone.TriggerDissolveRandom ();
    }
    public void DissolveRuneStone () {
        m_textCanvas.SetActive (false);
        m_coveringRunestone.gameObject.SetActive (false);
        m_backRunestone.TriggerDissolveFromTop ();
    }
}