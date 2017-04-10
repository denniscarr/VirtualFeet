using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AliGrave : Graves {

    bool aliSkull = false;

	// Use this for initialization
	void Start () {

        name = "AliGrave";
        this.incrementDirt = .1f;

    }

    public override void XOnCollisionEnter(Collision other)
    {
        //Debug.Log("Skull in the AliGrave!");
        if (other.gameObject.tag == "skull")
        {
            aliSkull = true;
            //Debug.Log("GOOD YAY! ALI!");
        }
        else
        {
            if (other.gameObject.tag == "dirt" && aliSkull == true)
            {
                //Debug.Log("FILLMEUPBUTTERCUP");
                FillMeUp(other);
            }
            //Debug.Log("NO BAD! NOT ALI");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
