﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineRender : MonoBehaviour {

	public List<GameObject> lines = new List<GameObject>();
	public GameObject lineRender;

	public GameObject dot1;
	public GameObject dot2;
	public GameObject dot3;
	public GameObject dot4;
	public GameObject dot5;
	private Vector3 startPosition;
	private Vector3 endPosition;
	public string startName;
	public string endName;

	bool L1,L2,L3,L4,L5;
	bool startaline;
	bool isdrawing;
	int i;


	// Use this for initialization
	void Start () {

		lineRender = Resources.Load<GameObject> ("LineRender");

		isdrawing = false;

		startaline = false;

		startPosition = transform.position;

		L1 = L2 = L3 = L4 = L5 = false;

		i = 0; 

	}
	
	// Update is called once per frame
	void Update () {


			if (startaline == true) {
			
				DrawALine ();
			}



		if (isdrawing == true) {

			lines[i].GetComponent<LineRenderer> ().SetPosition (1, transform.position);
		}

		if (isdrawing == false) {

			lines[i].GetComponent<LineRenderer> ().SetPosition (1, endPosition);

			LineCheck ();
		}




		

	}

	void OnTriggerEnter(Collider col){
		
		if (col.gameObject.tag == "Dot") {

			isdrawing = !isdrawing;


			if (isdrawing == true) {

				startaline = true;
				startName = col.gameObject.name;
				startPosition = col.gameObject.transform.position;

			}

			if (isdrawing == false) {

				endPosition = col.gameObject.transform.position;
				endName = col.gameObject.name;

			}


		}
	}

	void DrawALine(){

		GameObject newlineRender = Instantiate (lineRender, startPosition, Quaternion.identity) as GameObject;

		lines.Add (newlineRender);

		lines[i].GetComponent<LineRenderer> ().SetPosition (0, startPosition);
		lines[i].GetComponent<LineRenderer> ().startWidth = 0.1f;

		startaline = false;
	
	}

	void LineCheck(){
	
		if (startName == "Dot1") {
			if (endName == "Dot4" || endName == "Dot5") {
				L1 = true;
				i = i + 1;
			} 
			else{
				Destroy (lines [i]);
				lines.Remove (lines [i].gameObject);
			}
		}

		if (startName == "Dot2") {
			if (endName == "Dot3" || endName == "Dot4") {
				L2 = true;
				i = i + 1;
			} 
			else{
				Destroy (lines [i]);
				lines.Remove (lines [i].gameObject);
			}
		}

		if (startName == "Dot3") {
			if (endName == "Dot2" || endName == "Dot5") {
				L3 = true;
				i = i + 1;
			} 
			else{
				Destroy (lines [i]);
				lines.Remove (lines [i].gameObject);
			}
		}

		if (startName == "Dot4") {
			if (endName == "Dot1" || endName == "Dot2") {
				L4 = true;
				i = i + 1;
			} 
			else{
				Destroy (lines [i]);
				lines.Remove (lines [i].gameObject);
			}
		}

		if (startName == "Dot5") {
			if (endName == "Dot1" || endName == "Dot3") {
				L5 = true;
				i = i + 1;
			} 
			else{
				Destroy (lines [i]);
				lines.Remove (lines [i].gameObject);
			}
		}

		if (L1 && L2 && L3 && L4 && L5 == true) {
			
			GameObject.Find ("Pyre").SendMessage ("Light");
		}
	}

}
