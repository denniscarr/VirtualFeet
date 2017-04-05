using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DirtPile : Skulls {

    public Vector3 dir;
    public GameObject pile;
    public Vector3 dirtMod;

	// Use this for initialization
	void Start () {

        name = "Dirt Pile";
	}

    public override void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Kicked a DirtPile");
        GameObject dirt = Instantiate(Resources.Load("Dirt")) as GameObject;
        dirt.GetComponent<Transform>().localPosition = pile.transform.localPosition + dirtMod;
        dirt.GetComponent<Rigidbody>().velocity = dir;

    }

    // Update is called once per frame
    void Update () {
		
	}
}
