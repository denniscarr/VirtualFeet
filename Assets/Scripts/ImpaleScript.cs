using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImpaleScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            Debug.Log("OUCH");
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
