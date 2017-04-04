using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NormieGrave : Graves {

	// Use this for initialization
	void Start () {
        name = "NormieGrave";
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Skull in the AliGrave!");
    }

    // Update is called once per frame
    void Update () {
		
	}
}
