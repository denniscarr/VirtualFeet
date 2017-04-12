using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineRender : MonoBehaviour {

	public LineRenderer linerenderer;
	bool isdrawing;
	public GameObject dot1;
	public GameObject dot2;
	public GameObject dot3;
	public GameObject dot4;
	public GameObject dot5;
	private Vector3 startPosition;
	bool isdot1;
	bool isdot2;
	bool isdot3;
	bool isdot4;
	bool isdot5;



	// Use this for initialization
	void Start () {

		linerenderer = GetComponent<LineRenderer> ();

		isdrawing = false;

		startPosition = transform.position;

		isdot1 = isdot2 = isdot3 = isdot4 = isdot5 = false;

	}
	
	// Update is called once per frame
	void Update () {

		if (isdrawing == true) {

			linerenderer.SetPosition (0, new Vector3(0,0,0));

			linerenderer.startWidth = 0.05f;

			linerenderer.SetPosition (1, new Vector3(100f,100f,100f);
				

		}
	}

	void OnTriggerEnter(Collider col){
		
		if (col.gameObject.tag == "Dot") {

			isdrawing = !isdrawing;

			Debug.Log (isdrawing);

//			if (isdrawing == true) {
//
//				linerenderer.SetPosition (1, col.gameObject.transform.position);
//
//				//isdrawing = false;
//			}
//
//			if (isdrawing == false) {
//
//				isdrawing = true;
//
//				startPosition = col.gameObject.transform.position;
//			}


		}

//		if (col.gameObject.name == "Dot2") {
//
//			isdot2 = true;
//
//			if (isdrawing == true) {
//
//				linerenderer.SetPosition (1, col.gameObject.transform.position);
//
//				//isdrawing = false;
//			}
//
//			if (isdrawing == false) {
//
//				isdrawing = true;
//
//				startPosition = col.gameObject.transform.position;
//			}
				

//		}



	}


}
