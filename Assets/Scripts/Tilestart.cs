using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tilestart : MonoBehaviour {

	public GameObject GameManager;
	public TileLevelManager tileLevelManager;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){



		if (coll.gameObject.tag == "Player") {

			//this.GetComponent<AudioSource> ().Play ();
	
			tileLevelManager.enabled = true;
			Debug.Log (tileLevelManager);
			Debug.Log ("start");

		}
	}
}
