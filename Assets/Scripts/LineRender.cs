using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineRender : MonoBehaviour {

	public LineRenderer linerenderer;
	bool isdrawing;
	public Transform playerPosition;
	public GameObject dot1;
	public GameObject dot2;
	public GameObject dot3;
	public GameObject dot4;
	public GameObject dot5;



	// Use this for initialization
	void Start () {

		linerenderer = GetComponent<LineRenderer> ();
		isdrawing = false;

	}
	
	// Update is called once per frame
	void Update () {

		if (isdrawing == true) {
			linerenderer.SetPosition (0, this.gameObject.transform.position);
			linerenderer.startWidth = 0.05f;

			ConnectCheck ();

		}
	}

	void OnTriggerEnter(Collider col){
		
		if (col.gameObject.tag == "Player") {
			linerenderer.enabled = true;
			isdrawing = true;

			playerPosition = col.gameObject.transform;

		}

	}

	void ConnectCheck(){
		
		if (playerPosition.position == dot1.transform.position) {
			linerenderer.SetPosition (1, dot1.transform.position);
			isdrawing = false;
		}
		if (playerPosition.position == dot2.transform.position) {
			linerenderer.SetPosition (1, dot2.transform.position);
			isdrawing = false;
		}
		if (playerPosition.position == dot3.transform.position) {
			linerenderer.SetPosition (1, dot3.transform.position);
			isdrawing = false;
		}
		if (playerPosition.position == dot4.transform.position) {
			linerenderer.SetPosition (1, dot4.transform.position);
			isdrawing = false;
		}
		if (playerPosition.position == dot5.transform.position) {
			linerenderer.SetPosition (1, dot5.transform.position);
			isdrawing = false;
		}

		else linerenderer.SetPosition (1, playerPosition.position);
	}


}
