using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tilestart : MonoBehaviour {

	public GameObject GameManager;
	public TileLevelManager tileLevelManager;


	// Use this for initialization
	void Start () {
		tileLevelManager = GameManager.GetComponent<TileLevelManager> ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){



		if (coll.gameObject.tag == "Player") {

			//this.GetComponent<AudioSource> ().Play ();
		
			if (tileLevelManager.enabled == false) {
				tileLevelManager.enabled = true;
				Debug.Log ("start");
			}

			else if (tileLevelManager.enabled == true) {
				
				if (tileLevelManager.isfunction == false) {
					
					tileLevelManager.Setup ();
				}
			}

		}
	}
}
