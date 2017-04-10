using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GraveChecker : MonoBehaviour {

    public static float graveCounter;
    public bool levelDone;

	// Use this for initialization
	void Start () {

        graveCounter = 0;
        levelDone = false;
		
	}

    public void OnTriggerEnter(Collider other)
    {
        graveCounter += 1;
        Debug.Log(other.gameObject.name + " collided with the collider");
    }
	
	// Update is called once per frame
	void Update () {

        Debug.Log("graveCounter = " + graveCounter);

        if(graveCounter == 3)
        {
            levelDone = true;
        }

        if(levelDone == true)
        {
            Debug.Log("LEVEL IS DONE!");
            graveCounter = 0;
            levelDone = false;

        }

	}
}
