using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TileManager : MonoBehaviour {

	public GameObject gamemanager;
	//private Color originalColor;

	public Transform TileHighPosition;
	public Transform TileLowPosition;
	public float n;
	private float startTime;
	private float journeyLength;
	public bool startclosing;
	public bool startopen;


	// Use this for initialization
	void Start () {

		TileHighPosition = this.gameObject.transform;
		TileLowPosition = this.gameObject.transform;


		gamemanager = GameObject.Find ("Game Manager");

		//journeyLength = Vector3.Distance(HighPosition.position, LowPosition.position);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){
		
		if (coll.gameObject.tag == "Player") {

			this.GetComponent<AudioSource>().PlayOneShot();

			Debug.Log (this.GetComponent<AudioSource> ().clip.name);

			gamemanager.GetComponent<TileLevelManager> ().playersteps.Add(this.GetComponent<AudioSource> ().clip.name);

//			originalColor = this.GetComponent<Renderer>().material.GetColor("_EmissionColor");
//
//			this.GetComponent<Renderer> ().material.SetColor("_EmissionColor",Color.yellow);

			StartCoroutine (Wait());

		}
	}

	IEnumerator Wait(){

			
			yield return new WaitForSeconds(1);

//			this.GetComponent<Renderer> ().material.SetColor("_EmissionColor",originalColor);


	}
}
