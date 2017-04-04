using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoopGrave : Graves {

	// Use this for initialization
	void Start () {

        name = "PoopGrave";
		
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Skull in the PoopGrave!");
    }

    // Update is called once per frame
    void Update () {
		
	}
}
