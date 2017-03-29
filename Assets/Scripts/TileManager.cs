using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TileManager : MonoBehaviour {

	public GameObject gamemanager;


	// Use this for initialization
	void Start () {

		gamemanager = GameObject.Find ("Game Manager"); 
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){
		
		if (coll.gameObject.tag == "Player") {

			this.GetComponent<AudioSource>().Play();

			Debug.Log (this.GetComponent<AudioSource> ().clip.name);

			gamemanager.GetComponent<TileLevelManager> ().playersteps.Add(this.GetComponent<AudioSource> ().clip.name);

		}
	}
}
