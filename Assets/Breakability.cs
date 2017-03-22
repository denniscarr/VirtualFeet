using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Breakability : MonoBehaviour {

    [SerializeField] float breakForce = 1f;
    [SerializeField] float breakExplodeForce = 100f;

    // Lists of colliders and rigidbodies to activate when object is shattered.
    List<Rigidbody> rigidbodiesToActivate;
    List<MeshCollider> meshCollidersToActivate;

    List<GameObject> shatterbuddies;

	void Start ()
    {
        rigidbodiesToActivate = new List<Rigidbody>();
        meshCollidersToActivate = new List<MeshCollider>();

        shatterbuddies = new List<GameObject>();

        // Setup colliders and rigidbodies, then add them to the above lists.
        SetupShatterBuddies(transform);
    }


    void OnCollisionEnter(Collision collision)
    {
        if (collision.relativeVelocity.magnitude >= breakForce)
        {
            Shatter();
        }
    }


    void SetupShatterBuddies(Transform targetObject)
    {
        // Setup any children also.
        if (targetObject.childCount > 0)
        {
            for (int i = 0; i < targetObject.childCount; i++)
            {
                SetupShatterBuddies(targetObject.GetChild(i));
            }
        }

        // Make sure this object has a MeshRenderer and MeshFilter (i.e. make sure it's visible).
        if (targetObject.GetComponent<MeshRenderer>() != null && targetObject.GetComponent<MeshFilter>() != null)
        {
            GameObject shatterBuddy = Instantiate(targetObject.gameObject, targetObject.position, Quaternion.identity);
            shatterBuddy.transform.parent = transform;

            // Give the shatterbuddy a rigidbody.
            if (shatterBuddy.GetComponent<Rigidbody>() == null)
            {
                Rigidbody newRigidbody = shatterBuddy.gameObject.AddComponent<Rigidbody>();
                newRigidbody.isKinematic = true;
                //rigidbodiesToActivate.Add(newRigidbody);
            }

            // Add and set up a mesh collider if there is no collider already, then disable it.
            if (shatterBuddy.GetComponent<Collider>() == null)
            {
                MeshCollider newCollider = shatterBuddy.gameObject.AddComponent<MeshCollider>();
                newCollider.sharedMesh = shatterBuddy.GetComponent<MeshFilter>().mesh;
                newCollider.convex = true;
                newCollider.enabled = false;
                //meshCollidersToActivate.Add(newCollider);
            }

            // Add shatterbuddy to list and deactivate it.
            shatterBuddy.transform.localScale = targetObject.lossyScale;
            shatterBuddy.SetActive(false);
            shatterbuddies.Add(shatterBuddy);
        }
    }


    void Shatter()
    {
        // Activate all shatterbuddies.
        foreach (GameObject shatterbuddy in shatterbuddies)
        {
            shatterbuddy.SetActive(true);
            shatterbuddy.GetComponent<Rigidbody>().isKinematic = false;
            ExplodeAllChildren(shatterbuddy.transform);
        }

        // Deactivate self.
        gameObject.SetActive(false);

        //foreach (rigidbody rb in rigidbodiestoactivate)
        //{
        //    rb.iskinematic = false;
        //    rb.transform.parent = null;
        //}

        //// activate all mesh colliders.
        //foreach (meshcollider mc in meshcolliderstoactivate)
        //{
        //    mc.enabled = true;
        //}

        // Add explosion force to all children.
    }


    void ExplodeAllChildren(Transform target)
    {
        // Do it to all children.
        if (transform.childCount > 0)
        {
            for (int i = 0; i < transform.childCount; i++)
            {
                if (transform.GetChild(i).GetComponent<Rigidbody>() != null)
                {
                    transform.GetChild(i).GetComponent<Rigidbody>().AddExplosionForce(breakExplodeForce, transform.position, 5f);
                }
            }
        }

        // Explode myself.
        GetComponent<Rigidbody>().AddExplosionForce(breakExplodeForce, transform.position, 10f);
    }
}


