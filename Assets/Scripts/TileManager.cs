using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TileManager : MonoBehaviour {

	public GameObject gamemanager;
	private Color originalColor;


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

			originalColor = this.GetComponent<Renderer>().material.GetColor("_EmissionColor");

			this.GetComponent<Renderer> ().material.SetColor("_EmissionColor",Color.yellow);

			StartCoroutine (Wait());

		}
	}

	IEnumerator Wait(){

			
			yield return new WaitForSeconds(1);

			this.GetComponent<Renderer> ().material.SetColor("_EmissionColor",originalColor);


	}
}
