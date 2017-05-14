using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Kickable : MonoBehaviour {

    [SerializeField] static float kickForce = 20f;

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.gameObject.name == "Foot Cube")
        {
            Debug.Log("Kicked by player");
            // Get the velocity of the player's foot.
            Vector3 footVelocity = collision.collider.GetComponent<StompTest>().currentVelocity;
            footVelocity.Normalize();
            //Debug.Log(footVelocity);
            //GetComponent<Rigidbody>().AddExplosionForce(collision.relativeVelocity.magnitude * 1.1f, collision.transform.position, 1f, 0.1f, ForceMode.Impulse);
            GetComponent<Rigidbody>().AddForce(footVelocity * kickForce * collision.relativeVelocity.magnitude, ForceMode.Impulse);
        }
    }
}
