using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class StartGame : MonoBehaviour {
    // Start is called before the first frame update
    public string startGameScene;
    public void LoadGameScene () {
        SceneManager.LoadScene(startGameScene);
    }
    public void QuitGame () {
        Application.Quit ();
    }
}