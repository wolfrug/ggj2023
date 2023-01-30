/*
Copyright (c) 2015 Kyle Halladay

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

using System.Collections;
using UnityEngine;
using UnityEngine.Events;

[System.Serializable]
public class DissolveEvent : UnityEvent<DissolveEffect> { }

public class DissolveEffect : MonoBehaviour {
	private float _value = 1.0f;
	private bool _isRunning = false;
	private Material _dissolveMaterial = null;
	public float timeScale = 1.0f;
	public bool m_reverseDissolve = false; // Dissolves from 0 - 1
	public BoxCollider m_randomColliderBox;

	public DissolveEvent m_onDissolveStarted;
	public DissolveEvent m_onDissolveEnded;

	void Awake () {
		_dissolveMaterial = GetComponent<Renderer> ().material;
		/*float maxVal = 0.0f;
		var verts = GetComponent<MeshFilter> ().mesh.vertices;
		for (int i = 0; i < verts.Length; i++) {
			var v1 = verts[i];
			for (int j = 0; j < verts.Length; j++) {
				if (j == i) continue;
				var v2 = verts[j];
				float mag = (v1 - v2).magnitude;
				if (mag > maxVal) maxVal = mag;
			}
		}

		_dissolveMaterial.SetFloat ("_LargestVal", maxVal * 0.5f);
		*/
		Reset ();
	}

	[NaughtyAttributes.Button]
	public void Reset () {
		if (m_reverseDissolve) {
			_value = 0f;
		} else {
			_value = 1.0f;
		}
		_dissolveMaterial.SetFloat ("_DissolveValue", _value);
	}

	public void TriggerDissolve (Vector3 hitPoint) {
		Reset ();
		_dissolveMaterial.SetVector ("_HitPos", (new Vector4 (hitPoint.x, hitPoint.y, hitPoint.z, 1.0f)));
		_isRunning = true;
		m_onDissolveStarted.Invoke (this);
	}

	public void TriggerDissolveRandom () {
		if (m_randomColliderBox != null) {
			TriggerDissolve (GetRandomPointInsideCollider (m_randomColliderBox));
		} else {
			TriggerDissolve (Vector3.zero);
		}
	}
	public void TriggerDissolveFromTop () {
		if (m_randomColliderBox != null) {
			TriggerDissolve (new Vector3 (0f, m_randomColliderBox.bounds.extents.y, 0f));
		} else {
			TriggerDissolve (Vector3.zero);
		}
	}

	public void ManualDissolve (float value) {
		_value = value;
		_dissolveMaterial.SetFloat ("_DissolveValue", _value);
	}

	public Vector3 GetRandomPointInsideCollider (BoxCollider boxCollider) {
		Vector3 extents = boxCollider.size / 2f;
		Vector3 point = new Vector3 (
			Random.Range (-extents.x, extents.x),
			Random.Range (-extents.y, extents.y),
			Random.Range (-extents.z, extents.z)
		);

		return boxCollider.transform.TransformPoint (point);
	}

	void Update () {
		if (_isRunning && _dissolveMaterial != null) {
			if (m_reverseDissolve) {
				_value = Mathf.Min (1.0f, _value + Time.deltaTime * timeScale);
			} else {
				_value = Mathf.Max (0.0f, _value - Time.deltaTime * timeScale);
			}
			_dissolveMaterial.SetFloat ("_DissolveValue", _value);
			if ((m_reverseDissolve && _value >= 1f) || (!m_reverseDissolve && _value <= 0f)) {
				_isRunning = false;
				m_onDissolveEnded.Invoke (this);
			};
		}

	}
}