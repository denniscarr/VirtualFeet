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

    public virtual void FillMeUp (Collision other)
    {
        Destroy(other.gameObject);
        transform.position += new Vector3(0, incrementDirt, 0);
        if (transform.position.y > 0)
        {
            incrementDirt = 0;
            Debug.Log(incrementDirt);
        }
    }

}
