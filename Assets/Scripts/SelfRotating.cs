﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelfRotating : MonoBehaviour {

	public float n = 0;

	// Use this for initialization
	void Start () {


	}
	
	// Update is called once per frame
	void Update () {

		transform.Rotate (Vector3.forward * n * Time.deltaTime);
		
	}

}
