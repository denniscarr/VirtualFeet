using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour {

    // USED FOR MOVEMENT
    Vector3 baseDirection;  // The general direction that I want to wander in.
    float meanderRange = 1f;  // How far I meander from the base direction.
    [SerializeField] float lookForwardRange = 0.5f;    // How far this NPC looks in front of them for objects/obstacles to react to.
    [SerializeField] float moveForce = 5f;
    [SerializeField] float maxVelocity = 10f;

    // FOR PERLIN NOISE
    float noiseSpeed = 1f;
    float noiseX = 0.0f;
    float noiseY = 0.0f;
    float noiseXOffset = 100f;
    float noiseYOffset = 1000f;

    // COMPONENT REFERENCES
    Rigidbody rb;



    void Start()
    {
        rb = transform.parent.GetComponent<Rigidbody>();

        RandomizeBaseDirection();
    }


    void Update()
    {
        // MOVING

        transform.parent.rotation = Quaternion.Euler(new Vector3(0f, transform.parent.rotation.eulerAngles.y, 0f));

        // See if I'm on the ground.
        if (!Physics.Raycast(transform.position, Vector3.down, 1f))
        {
            // Check for obstacles.
            Vector3 rayOrigin = transform.parent.position;
            RaycastHit hit;

            // Raise the origin of the ray slightly so that it's above ground.
            rayOrigin.y += 0.25f;

            Vector3 rayDirection = baseDirection;

            // Get a ray direction that is modified to follow the current slope of the ground.
            if (Physics.Raycast(rayOrigin, Vector3.down, out hit, 5f))
            {
                rayDirection = Vector3.ProjectOnPlane(rayDirection, hit.normal);
            }

            Debug.DrawRay(rayOrigin, rayDirection * lookForwardRange, Color.red);

            // Get a meandering path towards my base direction with perlin noise.
            Vector3 meanderDirection = baseDirection + new Vector3(
                                            MyMath.Map(Mathf.PerlinNoise(noiseX, 0.0f), 0f, 1f, -meanderRange, meanderRange),
                                            0f,
                                            0f
                                            );

            noiseX += noiseSpeed * Time.deltaTime;
            noiseY += noiseSpeed * Time.deltaTime;

            // Get a meander that is modified to follow the current slope of the ground
            if (Physics.Raycast(rayOrigin, Vector3.down, out hit, 5f))
            {
                meanderDirection = Vector3.ProjectOnPlane(meanderDirection, hit.normal);
            }

            // Do a raycast in the base direction to see if we're heading towards a wall or cliff.
            bool sawAnObstacle = false;
            if (Physics.Raycast(rayOrigin, meanderDirection, out hit, lookForwardRange, 1 << 8))
            {
                Debug.Log("wall");
                sawAnObstacle = true;
                RandomizeBaseDirection();
            }

            Debug.DrawRay(rayOrigin, meanderDirection);

            if (!sawAnObstacle) MoveInDirection(meanderDirection);
            else
            {
                float tempVel = rb.velocity.z;
                tempVel *= 0.3f;
                rb.velocity = new Vector3(rb.velocity.x, rb.velocity.y, tempVel);
            }
        }
    }


    // Gets a new base direction.
    void RandomizeBaseDirection()
    {
        Vector2 randomInCircle = Random.insideUnitCircle;
        baseDirection = new Vector3(randomInCircle.x, 0f, randomInCircle.y);
        baseDirection.Normalize();
    }


    void MoveInDirection(Vector3 _direction)
    {
        // Turn me to face the meander direction.
        transform.parent.rotation = Quaternion.RotateTowards(
            Quaternion.LookRotation(transform.parent.forward),
            Quaternion.LookRotation(_direction),
            150f * Time.deltaTime
        );

        // Move me forwards
        rb.AddForce(transform.parent.forward * moveForce * Time.deltaTime, ForceMode.Impulse);
        rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxVelocity);
    }
}