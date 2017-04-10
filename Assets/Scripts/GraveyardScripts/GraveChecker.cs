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
            levelDone = false;
            graveCounter = 0;
        }

	}
}
