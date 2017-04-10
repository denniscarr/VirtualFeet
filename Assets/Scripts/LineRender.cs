using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineRender : MonoBehaviour {

	public LineRenderer linerenderer;



	// Use this for initialization
	void Start () {

		linerenderer = GetComponent<LineRenderer> ();


	}
	
	// Update is called once per frame
	void Update () {

			
	}

	void OnTriggerEnter(Collider col){
		
		if (col.gameObject.tag == "Player") {
			Debug.Log ("aaa");
			linerenderer.SetPosition (0, this.gameObject.transform.position);
			linerenderer.SetPosition (1, col.gameObject.transform.position);
		}

	}
}
