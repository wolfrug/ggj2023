using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace InkEngine {

    [System.Serializable]
    public class CustomInkChoiceButton {
        public InkFunctionEvent targetButtonFunction;
        public Button assignableButton;
    }
    public class InkCustomChoiceButtons : MonoBehaviour { // This script lets you set up custom choice buttons based on what's in the gathered choices
        public SimpleInkWriter m_targetWriter; // writer that is used to play any preceding text lines & that we watch for appropriate gather choices
        public CustomInkChoiceButton[] m_customButtons;

        private Dictionary<string, List<CustomInkChoiceButton>> m_inkFunctionDict = new Dictionary<string, List<CustomInkChoiceButton>> { };

        void Awake () {
            foreach (CustomInkChoiceButton btn in m_customButtons) { // adds the ones added in the editor initially
                AddNewFunctionEvent (btn);
                SetButtonInteractable (btn, false);
            }
            // Adds all of the target button function thingies to the ink writer too

        }
        void Start () {
            m_targetWriter.m_choicesShownEvent.AddListener (CheckChoices);
            foreach (CustomInkChoiceButton btn in m_customButtons) {
                m_targetWriter.m_manager.AddSearchableFunction (new InkTextVariable {
                    variableName = btn.targetButtonFunction.targetVariable,
                        VariableArguments = btn.targetButtonFunction.targetArguments.ToList ()
                });
            }
        }

        public void AddNewFunctionEvent (CustomInkChoiceButton evt) {
            if (m_inkFunctionDict.ContainsKey (evt.targetButtonFunction.targetVariable)) {
                m_inkFunctionDict[evt.targetButtonFunction.targetVariable].Add (evt);
            } else {
                m_inkFunctionDict.Add (evt.targetButtonFunction.targetVariable, new List<CustomInkChoiceButton> { evt });
            }
        }
        public void SetButtonInteractable (CustomInkChoiceButton button, bool interactable) {
            button.assignableButton.interactable = interactable;
        }

        void CheckChoices (List < (InkChoiceLine, Button) > args) {
            // Check if any of the button choicelines have our arguments
            foreach ((InkChoiceLine, Button) button in args) {
                CustomInkChoiceButton foundButton = HasFunctionEvent (button.Item1.choiceText);
                // We found a button, yay!
                if (foundButton != null) {
                    Debug.Log ("Found a button matching variable " + foundButton.targetButtonFunction.targetVariable + " and the button is " + foundButton.assignableButton);
                    // We disable the 'real' button first so it can't be clicked
                    button.Item2.gameObject.SetActive (false);
                    // We move the onclick to the new button
                    foundButton.assignableButton.onClick = button.Item2.onClick;
                    // We add a listener to -all- the other buttons, so we know if one has been clicked
                    foreach (var otherbutton in args) {
                        otherbutton.Item2.onClick.AddListener (() => ClickedButton (foundButton));
                    }
                    // And set it to interactable, if the original button is
                    SetButtonInteractable (foundButton, button.Item2.interactable);
                    // And change the displayed text, in a rather ugly way
                    foundButton.assignableButton.gameObject.GetComponentInChildren<TextMeshProUGUI> ().SetText (button.Item1.choiceText.displayText);
                };
            }
        }
        void ClickedButton (CustomInkChoiceButton targetButton) {
            SetButtonInteractable (targetButton, false);
            targetButton.assignableButton.onClick.RemoveAllListeners (); // we also remove all listeners, just in case
        }

        CustomInkChoiceButton HasFunctionEvent (InkDialogueLine dialogueLine) {
            if (dialogueLine.inkVariables.Count < 1) {
                return null;
            }
            foreach (CustomInkChoiceButton btn in m_customButtons) {
                string variableName = btn.targetButtonFunction.targetVariable;
                List<CustomInkChoiceButton> functionEvents = new List<CustomInkChoiceButton> { };
                m_inkFunctionDict.TryGetValue (variableName, out functionEvents);
                if (functionEvents != null) {
                    if (functionEvents.Count > 0) {
                        foreach (CustomInkChoiceButton evt in functionEvents) {
                            if (evt.targetButtonFunction.ArgumentMatch (dialogueLine.inkVariables[0].VariableArguments)) {
                                evt.targetButtonFunction.onEvent.Invoke (dialogueLine, dialogueLine.inkVariables[0]);
                                return evt;
                            }
                        }
                    }

                }
            }
            return null;
        }

    }
}