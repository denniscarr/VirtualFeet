using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Basin : MonoBehaviour {

    // References to the game object containing each foot
    [SerializeField] public GameObject foot1;
    [SerializeField] public GameObject foot2;

    // References to the dirty mesh of each foot.
    [SerializeField] private GameObject foot1Dirty;
    [SerializeField] private GameObject foot2Dirty;


    // Whether each foot is in the basin.
    private bool foot1In, foot2In;

    // The cleanliness of each foot (percentage)
    public float foot1Cleanliness = 0f;
    public float foot2Cleanliness = 0f;

    // Whether each foot is fully clean.
    bool foot1Clean, foot2Clean;

    [SerializeField] bool justOneFootRequired;   // Used for testing with the mouse.

    [SerializeField] float swishSpeed = 0.1f;   // How fast you need to swish your foot around in the water to clean it.
    [SerializeField] float cleanSpeed = 0.1f;   // How quickly your foot gets cleaned.

    [SerializeField] AudioSource successAudioSource;
    bool foot1AudioPlayed;
    bool foot2AudioPlayed;

    [SerializeField] GameObject sparkles;   // The particle system which appears when a foot becomes fully clean.

    Pyre pyre;


    private void Start()
    {
        pyre = GameObject.Find("Pyre").GetComponent<Pyre>();
    }


    private void Update()
    {
        if (pyre.lit) return;

        // If both feet are clean, light the pyre.
        if ((foot1Clean && foot2Clean) || (justOneFootRequired && (foot1Clean || foot2Clean)))
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
                    GameObject newSparkles = Instantiate(sparkles);
                    newSparkles.transform.SetParent(foot1.transform);
                    newSparkles.transform.localPosition = Vector3.zero;
                    foot1AudioPlayed = true;
                }

                // Make the foot more white (debug)
                //float newColorValue = MyMath.Map(foot1Cleanliness, 0f
                //foot1.GetComponent<MeshRenderer>().material.color = new Color(foot1Cleanliness, foot1Cleanliness, foot1Cleanliness, 1f);

                // Fade out the dirty mesh according to cleanliness.
                foot1Dirty.GetComponent<MeshRenderer>().material.color = Color.Lerp(Color.white, new Color(1f, 1f, 1f, 0f), foot1Cleanliness);
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

                // Fade out the dirty mesh
                foot2Dirty.GetComponent<MeshRenderer>().material.color = Color.Lerp(Color.white, new Color(1f, 1f, 1f, 0f), foot2Cleanliness);
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
