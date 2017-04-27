using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DirtPile : Skulls {

    public Vector3 dir;
    public GameObject pile;
    public Vector3 dirtMod;
    public AudioClip dirtKick;
    AudioSource audioSource;
    bool kickingDirt;

	// Use this for initialization
	void Start () {

        name = "Dirt Pile";
        audioSource = GetComponent<AudioSource>();
	}

    public void OnTriggerEnter(Collider other)
    {
        if (kickingDirt == false)
        {
            kickingDirt = true;
            Debug.Log("Kicked a DirtPile");
            GameObject dirt = Instantiate(Resources.Load("Dirt")) as GameObject;
            dirt.GetComponent<Transform>().localPosition = pile.transform.localPosition + dirtMod;
            dirt.GetComponent<Rigidbody>().velocity = dir;
            audioSource.PlayOneShot(dirtKick);
        }

    }

    public void OnTriggerExit(Collider other)
    {
        kickingDirt = false;
    }

    // Update is called once per frame
    void Update () {
		
	}
}
