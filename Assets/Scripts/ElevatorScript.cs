using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ElevatorScript : MonoBehaviour {

    GameObject elevatorDoor;
    public float speed;

	// Use this for initialization
	void Start () {

        elevatorDoor = GameObject.Find("Door");

	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            Debug.Log("Test working");
            elevatorDoor.transform.Translate(Vector3.up * speed * Time.deltaTime);
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
