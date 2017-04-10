using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeartGoal : MonoBehaviour {

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Heart")
        {
            GameObject.Find("Pyre").GetComponent<Pyre>().Light();
        }
    }
}
