using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Carpet : MonoBehaviour {

    int dirtyFeetInMe = 0;

    Basin basin;


    private void Start()
    {
        basin = FindObjectOfType<Basin>();
    }


    private void Update()
    {
        if (dirtyFeetInMe > 0)
        {
            FindObjectOfType<Pyre>().unLight();
        }

        else
        {
            FindObjectOfType<Pyre>().Light();
        }
    }


    private void OnTriggerEnter(Collider other)
    {
        if ((other.gameObject == basin.foot1 && basin.foot1Cleanliness < 1f)
            || (other.gameObject == basin.foot2 && basin.foot2Cleanliness < 1f))
        {
            dirtyFeetInMe++;
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if ((other.gameObject == basin.foot1 && basin.foot1Cleanliness < 1f)
            || (other.gameObject == basin.foot2 && basin.foot2Cleanliness < 1f))
        {
            dirtyFeetInMe--;
        }
    }
}
