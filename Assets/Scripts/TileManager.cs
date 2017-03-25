using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TileManager : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OncollisonEnter(Collision coll){
		
		if (coll.gameObject.tag == "Player2") {

			this.GetComponent<AudioSource>().Play();

		}
	}
}
