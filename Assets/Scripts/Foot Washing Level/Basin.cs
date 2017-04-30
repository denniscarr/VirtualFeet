using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Basin : MonoBehaviour {

    [SerializeField] public GameObject foot1;
    [SerializeField] public GameObject foot2;

    private bool foot1In, foot2In;

    public float foot1Cleanliness = 0f;
    public float foot2Cleanliness = 0f;

    [SerializeField] float swishSpeed = 0.1f;   // How fast you need to swish your foot around in the water to clean it.
    [SerializeField] float cleanSpeed = 0.1f;


    private void Update()
    {
        if (foot1In)
        {
            if (foot1.GetComponent<StompTest>().currentVelocityMagnitude > swishSpeed)
            {
                foot1Cleanliness += cleanSpeed * Time.deltaTime;

                // Make the foot more white (debug)
                foot1.GetComponent<MeshRenderer>().material.color = Color.Lerp(foot1.GetComponent<MeshRenderer>().material.color, Color.white, 0.05f);
            }
        }


        if (foot2In)
        {
            if (foot2.GetComponent<StompTest>().currentVelocityMagnitude > swishSpeed)
            {
                foot2Cleanliness += cleanSpeed * Time.deltaTime;

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
