using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NormieSkull : Skulls {

	// Use this for initialization
	void Start () {

        name = "NormieSkull";

	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Kicked an NormieSkull");
    }

    // Update is called once per frame
    void Update () {
		
	}
}
