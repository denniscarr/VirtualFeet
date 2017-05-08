using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Basin : MonoBehaviour {

    [SerializeField] public GameObject foot1;
    [SerializeField] public GameObject foot2;

    private bool foot1In, foot2In;

    public float foot1Cleanliness = 0f;
    public float foot2Cleanliness = 0f;

    bool foot1Clean, foot2Clean;

    [SerializeField] float swishSpeed = 0.1f;   // How fast you need to swish your foot around in the water to clean it.
    [SerializeField] float cleanSpeed = 0.1f;

    [SerializeField] AudioSource successAudioSource;
    bool foot1AudioPlayed;
    bool foot2AudioPlayed;

    Pyre pyre;


    private void Start()
    {
        pyre = GameObject.Find("Pyre").GetComponent<Pyre>();
    }


    private void Update()
    {
        if (pyre.lit) return;

        // If both feet are clean, light the pyre.
        if (foot1Clean && foot2Clean)
        {
            pyre.Light();
        }

        // See if either foot is actually clean.
        if (foot1Cleanliness >= 1f)
        {
            // Play some audio & maybe particles here too idk.
            foot1Clean = true;
        }

        if (foot2Cleanliness >= 1f)
        {
            // Play some audio here.
            foot2Clean = true;
        }

        // Cleaning stuff for one foot.
        if (foot1In)
        {
            if (foot1.GetComponent<StompTest>().currentVelocityMagnitude > swishSpeed)
            {
                foot1Cleanliness += cleanSpeed * Time.deltaTime;

                if (!foot1AudioPlayed && foot1Cleanliness >= 1f)
                {
                    successAudioSource.Play();
                    foot1AudioPlayed = true;
                }

                // Make the foot more white (debug)
                foot1.GetComponent<MeshRenderer>().material.color = Color.Lerp(foot1.GetComponent<MeshRenderer>().material.color, Color.white, 0.05f);
            }
        }

        // Cleaning stuff for the other foot.
        if (foot2In)
        {
            if (foot2.GetComponent<StompTest>().currentVelocityMagnitude > swishSpeed)
            {
                foot2Cleanliness += cleanSpeed * Time.deltaTime;

                if (!foot2AudioPlayed && foot2Cleanliness >= 1f)
                {
                    successAudioSource.Play();
                    foot2AudioPlayed = true;
                }

                // Make the foot more white (debug)
                foot2.GetComponent<MeshRenderer>().material.color = Color.Lerp(foot2.GetComponent<MeshRenderer>().material.color, Color.white, 0.05f);
            }
        }
    }


    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject == foot1)
        {
            foot1In = true;
        }

        else if (collider.gameObject == foot2)
        {
            foot2In = true;
        }
    }


    private void OnTriggerExit(Collider collider)
    {
        if (collider.gameObject == foot1)
        {
            foot1In = false;
        }

        else if (collider.gameObject == foot2)
        {
            foot2In = false;
        }
    }
}
