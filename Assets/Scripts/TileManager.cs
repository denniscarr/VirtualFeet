using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TileManager : MonoBehaviour {

	public GameObject gamemanager;
	public AudioClip thisClip;
	private Color originalColor;

//	public Transform TileHighPosition;
//	public Transform TileLowPosition;
//	public float n;
//	private float startTime;
//	private float journeyLength;
	public bool ismoving;
	public bool reset;


	// Use this for initialization
	void Start () {

		ismoving = false;
		reset = false;

//		TileHighPosition = this.gameObject.transform;
//		TileLowPosition = this.gameObject.transform;
		gamemanager = GameObject.Find ("Game Manager");

		thisClip = this.gameObject.GetComponent<AudioSource> ().clip;

		originalColor = this.GetComponent<Renderer>().material.GetColor("_EmissionColor");

	}
	
	// Update is called once per frame
	void Update () {

		if (ismoving == true) {

//			TileLowPosition.position = new Vector3 (TileHighPosition.position.x, - 0.1f, TileHighPosition.position.z);
//			Debug.Log (TileLowPosition.position);
//
//			journeyLength = Vector3.Distance(TileHighPosition.position, TileLowPosition.position);
//			Debug.Log (journeyLength);
//
//			float distCovered = Time.time/n;
//			float fracJourney = distCovered / journeyLength;
//			transform.position = Vector3.Lerp (TileHighPosition.position, TileLowPosition.position, fracJourney);
			this.gameObject.transform.position = new Vector3(transform.position.x, -0.24f, transform.position.z);
		}

		if (reset == true) {
			

			this.gameObject.GetComponent<Renderer>().material.SetColor("_EmissionColor", originalColor);


			//Debug.Log ("originalcolor" + originalColor);

			reset = false;
		
		}
		
	}

	void OnTriggerEnter(Collider coll){
		
		if (coll.gameObject.tag == "Player") {

			//Debug.Log ("trigger");

			this.GetComponent<AudioSource>().PlayOneShot(thisClip,1f);

			Debug.Log (this.GetComponent<AudioSource> ().clip.name);

			gamemanager.GetComponent<TileLevelManager> ().playersteps.Add(this.GetComponent<AudioSource> ().clip.name);

			ismoving = true;

			StartCoroutine (Wait());
		}
	}

	IEnumerator Wait(){

			
			yield return new WaitForSeconds(1);

//			this.GetComponent<Renderer> ().material.SetColor("_EmissionColor",originalColor);

			ismoving = false;

			this.gameObject.transform.position = new Vector3(transform.position.x,0f, transform.position.z);


//			float distCovered = Time.time/n;
//			float fracJourney = distCovered / journeyLength;
//			transform.position = Vector3.Lerp (TileLowPosition.position, TileHighPosition.position, fracJourney);
			//Debug.Log ("moveback");


	}
}
