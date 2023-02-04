using System;
using System.Collections;
using UnityEngine;

namespace UI {
    [RequireComponent (typeof (CanvasGroup))]
    public class CanvasGroupFader : MonoBehaviour {
        private CanvasGroup m_canvasGroup;
        [SerializeField]
        private bool m_visible;

        public bool Visible {
            get {
                return m_visible;
            }
            set {
                m_visible = value;
                SetVisible (m_visible);
            }
        }

        private void SetVisible (bool visible) {
            //   Debug.Log ("Setting Canvas Group to: " + visible);
            if (visible) {
                m_canvasGroup.alpha = 1f;
            } else {
                m_canvasGroup.alpha = 0f;
            }

            m_canvasGroup.interactable = visible;
            m_canvasGroup.blocksRaycasts = visible;
        }

        private void Start () {
            m_canvasGroup = GetComponent<CanvasGroup> ();
            Visible = m_visible;
        }

        /// <summary>
        /// Enable interaction with canvasgroup and animate alpha 0 -> 1
        /// </summary>
        public void FadeIn (float duration = 1f) {
            StartCoroutine (Fader (duration, true));
        }

        IEnumerator Fader (float duration, bool fadeIn) {
            float timeElapsed = 0f;
            float targetAlpha = fadeIn ? 1f : 0f;
            float startAlpha = m_canvasGroup.alpha;
            while (timeElapsed < duration) {
                m_canvasGroup.alpha = Mathf.Lerp (startAlpha, targetAlpha, timeElapsed / duration);
                timeElapsed += Time.deltaTime;
                yield return new WaitForEndOfFrame ();
            }
            m_canvasGroup.alpha = targetAlpha;
            SetVisible (fadeIn);
        }

        /// <summary>
        /// Disable interaction with canvasgroup and animate alpha 1 -> 0
        /// </summary>
        public void FadeOut (float duration = 1f) {
            StartCoroutine (Fader (duration, false));
        }
    }
}