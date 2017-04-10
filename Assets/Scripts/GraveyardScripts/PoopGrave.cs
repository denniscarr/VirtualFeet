using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoopGrave : Graves {

    bool poopSkull = false;

    // Use this for initialization
    void Start () {

        name = "PoopGrave";
        this.incrementDirt = .1f;

    }

    public override void XOnCollisionEnter(Collision other)
    {
        //Debug.Log("Skull in the PoopGrave!");
        if(other.gameObject.tag == "skull")
        {
            //Debug.Log("YAY POOP LOVE!");
            poopSkull = true;
        }
        else
        {
            if(other.gameObject.tag == "dirt" && poopSkull == true)
            {
                //Debug.Log("FILLMEUPBUTTERCUP");
                FillMeUp(other);
            }
            //Debug.Log("NO. NOT POOP. BAD");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
