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
        if(other.gameObject.name == "NormieSkull")
        {
            Debug.Log("good! Yay! Normie!");
        }
        else
        {
            if (other.gameObject.tag == "dirt")
            {
                Destroy(other.gameObject);
                transform.position += new Vector3(0, incrementDirt, 0);
                if (transform.position.y > 0)
                {
                    incrementDirt = 0;
                    Debug.Log(incrementDirt);
                }
            }
            Debug.Log("EW GROSS WRONG. NOT NORMIE");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
