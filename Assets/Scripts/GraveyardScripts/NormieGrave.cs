﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NormieGrave : Graves {

    bool normieSkull = false;

	// Use this for initialization
	void Start () {
        name = "NormieGrave";
        this.incrementDirt = .1f;
    }

    public override void XOnCollisionEnter(Collision other)
    {
        //Debug.Log("Skull in the AliGrave!");
        if(other.gameObject.tag == "skull")
        {
            normieSkull = true;
           // Debug.Log("good! Yay! Normie!");
        }
        else
        {
            if (other.gameObject.tag == "dirt" && normieSkull == true)
            {
                //Debug.Log("FILLMEUPBUTTERCUP");
                FillMeUp(other);
            }
            //Debug.Log("EW GROSS WRONG. NOT NORMIE");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
