using System.Collections;
using System.Collections.Generic;
using InkEngine;
using UnityEngine;
using UnityEngine.Events;

[System.Serializable]
public class OnFinishMove : UnityEvent<FixedMovePoint> { }

[System.Serializable]
public class FixedMovePoint {
    public string id;
    public Transform movePoint;
}
public class Player : MonoBehaviour {
    public Transform m_playerTransform;
    public float m_speed;

    public List<FixedMovePoint> m_targetPositions = new List<FixedMovePoint> { };
    public OnFinishMove m_playerMoveStart;
    public OnFinishMove m_playerMoveFinished;
    private FixedMovePoint m_targetPos;
    private Coroutine m_moveCoroutine;
    private bool m_paused = false;

    public void MoveToPointInkEvent (InkDialogueLine dialogLine, InkTextVariable variable) { // Listen to this with a regular listener
        // We know the variable is correct, all we need is the id of where we are going
        string id = variable.VariableArguments[0];
        MoveToMovePoint (id);
        // set it up manually so the onfinished event calls the writer unpause / unhide event
    }

    public void MoveToMovePoint (string id) {
        FixedMovePoint targetPoint = m_targetPositions.Find ((x) => x.id == id);
        if (targetPoint != null) {
            m_targetPos = targetPoint;
            MoveTo ((Vector2) targetPoint.movePoint.transform.position);
            m_playerMoveStart.Invoke (targetPoint);
        }
    }

    public void MoveTo (Vector2 point) {
        if (m_moveCoroutine != null) {
            StopCoroutine (m_moveCoroutine);
        }
        m_moveCoroutine = StartCoroutine (Translate (point));
    }

    IEnumerator Translate (Vector2 targetPos) {
        while ((Vector2) m_playerTransform.position != targetPos) {
            m_playerTransform.position = Vector2.MoveTowards (m_playerTransform.transform.position, targetPos, Time.deltaTime * m_speed);
            yield return new WaitUntil (() => !m_paused); // in case we're pausing
            yield return new WaitForFixedUpdate ();
        }
        yield return new WaitForEndOfFrame (); // in case we go to the same spot we're on
        m_moveCoroutine = null;
        m_playerMoveFinished.Invoke (m_targetPos);
        m_targetPos = null;
    }

    public bool PauseMove {
        get {
            return m_paused;
        }
        set {
            m_paused = value;
        }

    }

    [NaughtyAttributes.Button]
    void DebugMoveToOne () {
        MoveToMovePoint ("one");
    }

    [NaughtyAttributes.Button]
    void DebugMoveToTwo () {
        MoveToMovePoint ("two");
    }
}