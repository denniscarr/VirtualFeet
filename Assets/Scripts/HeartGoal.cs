using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeartGoal : MonoBehaviour {

    private void OnTriggerEnter(Collider other)
    {
        if (other.name.Contains("Heart"))
        {
            GameObject.Find("Pyre").GetComponent<Pyre>().Light();
        }
    }
}
