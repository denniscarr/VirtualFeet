using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoopSkull : Skulls {

	// Use this for initialization
	void Start () {

        name = "PoopSkull";
		
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Kicked an PoopSkull");
    }

    // Update is called once per frame
    void Update () {
		
	}
}
