using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TileManager : MonoBehaviour {

	public GameObject gamemanager;
	public AudioClip thisClip;
	private Color originalColor;

	public bool ismoving;
	public bool reset;


	// Use this for initialization
	void Start () {

		ismoving = false;
		reset = false;

		gamemanager = GameObject.Find ("Game Manager"); 

		thisClip = this.gameObject.GetComponent<AudioSource> ().clip;

		originalColor = this.GetComponent<Renderer> ().material.GetColor ("_EmissionColor");
	}
	
	// Update is called once per frame
	void Update () {

		if (ismoving == true) {

			this.gameObject.transform.position = new Vector3(transform.position.x, -0.24f, transform.position.z);
		}

		if (reset == true) {

			this.gameObject.GetComponent<Renderer>().material.SetColor("_EmissionColor", originalColor);
		
			reset = false;

		}
	}

	void OnTriggerEnter(Collider coll){
		
		if (coll.gameObject.tag == "Player") {

			this.GetComponent<AudioSource>().PlayOneShot(thisClip,1f);

			Debug.Log (this.GetComponent<AudioSource> ().clip.name);

			gamemanager.GetComponent<TileLevelManager> ().playersteps.Add(this.GetComponent<AudioSource> ().clip.name);

			ismoving = true;

			StartCoroutine (Wait());

		}
	}

	IEnumerator Wait(){

			
			yield return new WaitForSeconds(1);

			ismoving = false;

			this.gameObject.transform.position = new Vector3(transform.position.x,0f, transform.position.z);


	}
}
