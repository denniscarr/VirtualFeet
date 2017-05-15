using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tilestart : MonoBehaviour {

	public GameObject GameManager;
	public TileLevelManager tileLevelManager;

    public bool startPressed;

	public Transform HighPosition;
	public Transform LowPosition;
	public float n;
	private float startTime;
	private float journeyLength;
	public bool startclosing;
	public bool startopen;


	// Use this for initialization
	void Start () {
		
		tileLevelManager = GameManager.GetComponent<TileLevelManager> ();

		journeyLength = Vector3.Distance (HighPosition.position, LowPosition.position);
	
		startclosing = false;
		startopen = false;
	
	}
	
	// Update is called once per frame
	void Update () {

		if (startclosing == true) {
			float distCovered = Time.time / n;
			float fracJourney = distCovered / journeyLength;
			transform.position = Vector3.Lerp (HighPosition.position, LowPosition.position, fracJourney);
			//Debug.Log ("golow");
		}

		if (startopen == true) {
			float distCovered = Time.time / n;
			float fracJourney = distCovered / journeyLength;
			transform.position = Vector3.Lerp (LowPosition.position, HighPosition.position, fracJourney);
			//Debug.Log ("golow");
		}
		
	}

	void OnTriggerEnter(Collider coll){

		if (coll.gameObject.tag == "Player") {

            if (startPressed) return;

			//this.GetComponent<AudioSource> ().Play ();
		
			if (tileLevelManager.enabled == false) {
				tileLevelManager.enabled = true;
				Debug.Log ("start");
				startclosing = true;
			}

			else if (tileLevelManager.enabled == true) {
				
				if (tileLevelManager.isfunction == false) {
					startclosing = true;
					startopen = false;

                    Debug.Log("reset");
					tileLevelManager.Setup ();
				}
			}

            startPressed = true;
		}
	}
}
