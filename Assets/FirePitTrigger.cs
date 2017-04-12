using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirePitTrigger : MonoBehaviour {

    bool didOnce = false;

    private void Update()
    {
        didOnce = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Foot Pickup" && !didOnce)
        {
            GameObject.Find("Game Manager").GetComponent<LighthouseLevelManager>().statuesBurned++;
            Destroy(other.gameObject);
            didOnce = true;
        }
    }
}
