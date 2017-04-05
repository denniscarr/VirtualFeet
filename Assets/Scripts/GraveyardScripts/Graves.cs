using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Graves : MonoBehaviour {

    protected string name = "Graves";
    protected float incrementDirt = .1f;

    public void OnCollisionEnter(Collision other)
    {
        XOnCollisionEnter(other);
    }

    public virtual void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Skull in the Grave!");
    }

}
