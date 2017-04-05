using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AliGrave : Graves {

    bool aliSkull = false;

	// Use this for initialization
	void Start () {

        name = "AliGrave";
		
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Skull in the AliGrave!");
        if (other.gameObject.name == "AliSkull")
        {
            aliSkull = true;
            Debug.Log("GOOD YAY! ALI!");
        }
        else
        {
            if (other.gameObject.tag == "dirt" && aliSkull == true)
            {
                FillMeUp(other);
            }
            Debug.Log("NO BAD! NOT ALI");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
