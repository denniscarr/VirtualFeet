using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Skulls : MonoBehaviour {

    protected string name = "Skull";

    public void OnCollisionEnter (Collision other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            XOnCollisionEnter(other);
        }
    }

    public void OnCollisionExit(Collision other)
    {
        XOnCollisionExit(other);
    }

    public virtual void XOnCollisionEnter(Collision other)
    {
        Debug.Log("Kicked a Skull");
    }

    public virtual void XOnCollisionExit(Collision other)
    {
        Debug.Log("Done Kicking");
    }


}
