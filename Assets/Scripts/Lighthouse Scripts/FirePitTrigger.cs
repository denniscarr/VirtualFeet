using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirePitTrigger : MonoBehaviour {

    bool didOnce = false;

    [SerializeField] ParticleSystem flameParticles;
    [SerializeField] Light flameLight;

    private void Update()
    {
        didOnce = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Foot Pickup" && !didOnce)
        {
            // Change the color of the flames according to the statue dropped in.
            Color statueColor = Color.Lerp(
                other.GetComponentInChildren<MeshRenderer>().material.GetColor("_EmissionColor"),
                other.GetComponentInChildren<MeshRenderer>().material.color,
                0.5f
                );
            ParticleSystem.MainModule mainModule = flameParticles.main;
            mainModule.startColor = statueColor;

            flameLight.color = statueColor;

            GetComponent<AudioSource>().pitch = Random.Range(0.7f, 1f);
            GetComponent<AudioSource>().Play();

            // Tell the level manager that a statue has been burned.
            GameObject.Find("Game Manager").GetComponent<LighthouseLevelManager>().statuesBurned++;

            // Destroy the burned statue.
            Destroy(other.gameObject);

            didOnce = true;
        }
    }
}
