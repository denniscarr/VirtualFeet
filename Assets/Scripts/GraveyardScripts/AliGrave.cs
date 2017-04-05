using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AliGrave : Graves {

	// Use this for initialization
	void Start () {

        name = "AliGrave";
		
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Skull in the AliGrave!");
        if (other.gameObject.name == "AliSkull")
        {
            Debug.Log("GOOD YAY! ALI!");
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
            Debug.Log("NO BAD! NOT ALI");
        }
    }

    // Update is called once per frame
    void Update () {
		
	}
}
