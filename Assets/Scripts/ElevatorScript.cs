using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ElevatorScript : MonoBehaviour {

    public GameObject elevatorDoor;
    public float speed;
	float openHeight = 4.5f;	// How high the elevator door is when it is considered 'open'
	float closedHeight = 1.583f;			// How high the elevator door is when it is considered 'closed'
    public static bool isElevatorOpen = false;
	public static bool doorOpen = false;
    public static bool isElevatorClosing = false;
	Transform headCollider;
	public GameObject readyLight;

	void Start()
	{
		headCollider = GameObject.Find("HeadCollider").transform;
	}

    void OnTriggerStay(Collider other)
    {
        if (this.name == "Open Trigger")
        {
            if (other.gameObject.name == "Foot Cube")
            {
                Debug.Log("Test working");
                isElevatorOpen = true;
                isElevatorClosing = false;
            }
        }

        if(this.name == "Close Trigger")
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

        if (isElevatorOpen == true && doorOpen == false)
        {
            Debug.Log("Elevator Opening");
            isElevatorClosing = false;
            elevatorDoor.transform.Translate(Vector3.up * speed * Time.deltaTime);
			if (elevatorDoor.transform.localPosition.y >= openHeight)
			{
				doorOpen = true;
			}
        }

        if (isElevatorClosing == true)
        {
            Debug.Log("Elevator Closing");
            isElevatorOpen = false;
            if (elevatorDoor.transform.localPosition.y > closedHeight)
			{
				elevatorDoor.transform.Translate(Vector3.down * speed * Time.deltaTime);
			}
			else
			{
				StartCoroutine(SceneChange(0));
			}
        }

		isElevatorOpen = false;
		isElevatorClosing = false;
    }

    IEnumerator SceneChange(float time)
    {
        yield return new WaitForSeconds(time);
        isElevatorClosing = false;
        SceneManager.LoadScene("Level1");
    }
}
