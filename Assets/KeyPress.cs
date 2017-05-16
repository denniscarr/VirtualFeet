using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class KeyPress : MonoBehaviour {

    void Update ()
    {
		if (Input.GetKeyDown(KeyCode.Return))
        {
            FindObjectOfType<Pyre>().ChangeScene();
        }
	}
}
