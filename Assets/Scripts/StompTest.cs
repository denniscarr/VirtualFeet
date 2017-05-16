using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StompTest : MonoBehaviour {

	// For selecting the mode of the footstep tester.
	public enum footstepMode
	{
		Stomp,
		Tiptoe,
		None
	}

	public footstepMode selectedMode = footstepMode.Stomp;


    // USED FOR TESTING VELOCITY.
	Vector3 previousPosition;
	public float previousAcceleration;
	public float currentVelocityMagnitude;
    public Vector3 currentVelocity;
	bool onFloor = false;
    public bool tooFast;

    // USED FOR STOMPING
	public float stompSpeed = 0.01f;	// How fast the foot has to be travelling to trigger a stomp.
	public float stompDeceleration = 1f;	// How great the acceleration difference has to be to register as a stomp.
	public float stompCooldown = 0.1f;    // How often this foot is allowed to stomp.
	float timeSinceLastStomp;
	bool readyForStomp;	   // Gets set to true when the foot is travelling over stompSpeed.
    bool alreadyStompedOnce;
	public GameObject stompExplosion;

	// USED FOR TIPTOEING
	public float tipToeTooFast = 1f;	  // What is considered too fast when tiptoeing.
    AudioSource audioSource;

    // USED FOR PICKING UP/DROPPING OBJECTS
    //bool footGlue = false;
    public float jointSpring = 200f;
    public float jointBreakForce = 50f;


	void Start ()
	{
		previousPosition = Vector3.zero;
		currentVelocityMagnitude = 0.0f;
		previousAcceleration = 0.0f;

        timeSinceLastStomp = stompCooldown;

        audioSource = GetComponent<AudioSource>();
	}


	void Update ()
	{
        if (SceneManager.GetActiveScene().name == "Drawsometing" && !GetComponent<LineRender>().enabled)
        {
            GetComponent<LineRender>().enabled = true;
        }

        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb.velocity.magnitude > 20)
        {
            Vector3 vel = rb.velocity;
            vel = Vector3.ClampMagnitude(vel, 20);
            rb.velocity = vel;
        }

        // Calcuate the current frame's acceleration
        currentVelocity = transform.position - previousPosition;
		currentVelocityMagnitude = Vector3.Distance(previousPosition, transform.position);
        currentVelocityMagnitude /= Time.deltaTime;
        //Debug.Log(currentVelocity);

		if (selectedMode == footstepMode.Stomp)
		{
			// Get the time since the last stomp.
			timeSinceLastStomp += Time.deltaTime;

			// See if the foot is moving quickly enough to be considered a stomp and the cooldown is over.
			if (currentVelocityMagnitude >= stompSpeed && timeSinceLastStomp >= stompCooldown) {
				readyForStomp = true;
                //Debug.Log(readyForStomp);
			} else {
				readyForStomp = false;
			}

			// Test the difference between current & previous acceleration to see if the player has stomped.
			if (readyForStomp
                && !alreadyStompedOnce
				&& onFloor
				&& currentVelocityMagnitude < previousAcceleration
				&& Mathf.Abs (currentVelocityMagnitude - previousAcceleration) > stompDeceleration)
			{
				Debug.Log ("STOMP!");

				// Spawn an explosion.
				Instantiate(stompExplosion, transform.position, Quaternion.identity);

				timeSinceLastStomp = 0.0f;
				readyForStomp = false;
                alreadyStompedOnce = true;
			}
		}

		else if (selectedMode == footstepMode.Tiptoe)
		{
			//if (onFloor)
			//{
				// For now, just make sure the foot is not moving more quickly than a certain speed.
				if (currentVelocityMagnitude > tipToeTooFast)
				{
					Debug.Log ("Too Fast!");
                    tooFast = true;
                    //audioSource.Play();
				}
            else
            {
                tooFast = false;
                Debug.Log("Tip toe through the tulips");
            }
			//}
		}
			
		// Save previous acceleration.
		previousAcceleration = currentVelocityMagnitude;

		// Save previous position
		previousPosition = transform.position;
	}


	/* Collision */

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Foot Pickup")
        {
            Debug.Log("Touched a pickup item.");

            // Attach to foot with joint.
            SpringJoint newJoint = collision.gameObject.AddComponent<SpringJoint>();
            newJoint.connectedBody = GetComponent<Rigidbody>();
            newJoint.spring = jointSpring;
            newJoint.breakForce = jointBreakForce;
        }
    }

	void OnTriggerEnter(Collider collider) 
	{
        if (collider.tag == "Floor")
        {
            onFloor = true;
        }

        // Removed glue functionality for now.
        //else if (collider.tag == "Glue")
        //{
        //    GetComponent<MeshRenderer>().material = collider.GetComponent<MeshRenderer>().material;
        //    footGlue = true;
        //}
	}

	void OnTriggerExit(Collider collider)
	{
		if (collider.tag == "Floor")
		{
			onFloor = false;
            alreadyStompedOnce = false;
		}
	}
}
