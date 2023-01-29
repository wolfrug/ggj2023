using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CameraController : MonoBehaviour {
    public CinemachineVirtualCamera m_followCam;
    public CinemachineVirtualCamera m_zoomInCam;

    public void ActivateFollowCam () {
        m_followCam.Priority = 10;
        m_zoomInCam.Priority = 0;
    }
    public void ActivateZoomInCam () {
        m_followCam.Priority = 0;
        m_zoomInCam.Priority = 10;
    }
}