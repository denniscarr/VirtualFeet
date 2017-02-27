using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StompTest : MonoBehaviour {

	// For selecting the mode of the footstep tester.
	public enum mode
	{
		Stomp,
		Tiptoe
	}

	public mode selectedMode = mode.Stomp;

	Vector3 previousPosition;

	float previousAcceleration;
	float currentVelocity;

	bool onFloor = false;

    // USED FOR STOMPING
	public float stompSpeed = 0.01f;	// How fast the foot has to be travelling to trigger a stomp.
	public float stompDeceleration = 1f;	// How great the acceleration difference has to be to register as a stomp.
	public float stompCooldown = 0.1f;    // How often this foot is allowed to stomp.
	float timeSinceLastStomp;
	bool readyForStomp;	   // Gets set to true when the foot is travelling over stompSpeed.
    bool alreadyStompedOnce;
	public GameObject stompExplosion;

	// USED FOR TIPTOEING
	public float tipToeTooFast = 0.01f;	  // What is considered too fast when tiptoeing.
    AudioSource audioSource;


	void Start ()
	{
		previousPosition = Vector3.zero;
		currentVelocity = 0.0f;
		previousAcceleration = 0.0f;

        timeSinceLastStomp = stompCooldown;

        audioSource = GetComponent<AudioSource>();
	}


	void Update ()
	{
		// Calcuate the current frame's acceleration
		currentVelocity = Vector3.Distance(previousPosition, transform.position);
        currentVelocity /= Time.deltaTime;
        Debug.Log(currentVelocity);

		if (selectedMode == mode.Stomp)
		{
			// Get the time since the last stomp.
			timeSinceLastStomp += Time.deltaTime;

			// See if the foot is moving quickly enough to be considered a stomp and the cooldown is over.
			if (currentVelocity >= stompSpeed && timeSinceLastStomp >= stompCooldown) {
				readyForStomp = true;
			} else {
				readyForStomp = false;
			}

			// Test the difference between current & previous acceleration to see if the player has stomped.
			if (readyForStomp
                && !alreadyStompedOnce
				&& onFloor
				&& currentVelocity < previousAcceleration
				&& Mathf.Abs (currentVelocity - previousAcceleration) > stompDeceleration)
			{
				Debug.Log ("STOMP!");

				// Spawn an explosion.
				Instantiate(stompExplosion, transform.position, Quaternion.identity);

				timeSinceLastStomp = 0.0f;
				readyForStomp = false;
                alreadyStompedOnce = true;
			}
		}

		else if (selectedMode == mode.Tiptoe)
		{
			if (onFloor)
			{
				// For now, just make sure the foot is not moving more quickly than a certain speed.
				if (currentVelocity > tipToeTooFast)
				{
					Debug.Log ("Too Fast!");
                    audioSource.Play();
				}
			}
		}
			
		// Save previous acceleration.
		previousAcceleration = currentVelocity;

		// Save previous position
		previousPosition = transform.position;
	}


	/* Collision */

	void OnTriggerEnter(Collider collider) 
	{
		if (collider.tag == "Floor")
		{
			onFloor = true;
		}
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
