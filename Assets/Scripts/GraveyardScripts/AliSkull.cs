using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AliSkull : Skulls {

	// Use this for initialization
	void Start () {

        name = "AliSkull";
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Kicked an AliSkull");
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
