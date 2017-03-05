using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImpaleScript : MonoBehaviour {

    GameObject lightSource;
    GameObject door;

    public AudioClip hurt;
    AudioSource audioSource;

	// Use this for initialization
	void Start () {

        lightSource = GameObject.Find("Directional Light");
        door = GameObject.Find("Door");
        audioSource = door.GetComponent<AudioSource>();
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            Debug.Log("OUCH");
            audioSource.clip = hurt;
            audioSource.Play();
            lightSource.GetComponent<Light>().color = Color.blue;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            Debug.Log("OUCH");
            lightSource.GetComponent<Light>().color = Color.red;
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
