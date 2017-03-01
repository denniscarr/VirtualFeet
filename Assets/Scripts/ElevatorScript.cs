using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ElevatorScript : MonoBehaviour {

    GameObject elevatorDoor;
    public float speed;
    public static bool isElevatorOpen = false;
    public static bool isElevatorClosing = false;

	// Use this for initialization
	void Start () {

        elevatorDoor = GameObject.Find("Door");

	}

    void OnTriggerEnter(Collider other)
    {
        if (this.name == "ElevatorOpenPos")
        {
            if (other.gameObject.name == "Foot Cube")
            {
                Debug.Log("Test working");
                isElevatorOpen = true;
                isElevatorClosing = false;
            }
        }

        if(this.name == "ElevatorClosePos")
        {
            if (other.gameObject.name == "Foot Cube")
            {
                isElevatorClosing = true;
                isElevatorOpen = false;
            }
        }
    }
	
	// Update is called once per frame
	void Update () {

        if (isElevatorOpen == true)
        {
            Debug.Log("Elevator Opening");
            isElevatorClosing = false;
            elevatorDoor.transform.Translate(Vector3.up * speed * Time.deltaTime);
        }

        if (isElevatorClosing == true)
        {
            Debug.Log("Elevator Closing");
            isElevatorOpen = false;
            elevatorDoor.transform.Translate(Vector3.down * speed * Time.deltaTime);
            StartCoroutine(SceneChange(5));
        }

    }

    IEnumerator SceneChange(float time)
    {
        yield return new WaitForSeconds(time);
        isElevatorClosing = false;
        SceneManager.LoadScene("Level1");

    }
}
