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
        if(other.gameObject.name == "PoopSkull")
        {
            Debug.Log("YAY POOP LOVE!");
        }
        else
        {
            if(other.gameObject.tag == "dirt")
            {
                Destroy(other.gameObject);
                transform.position += new Vector3(0, incrementDirt, 0);
                if (transform.position.y > 0)
                {
                    incrementDirt = 0;
                    Debug.Log(incrementDirt);
                }
            }
            Debug.Log("NO. NOT POOP. BAD");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
