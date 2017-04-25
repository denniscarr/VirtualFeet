using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CeilingLightPlacer : MonoBehaviour {

    // Number of lights on each axis.
    [SerializeField] int numberX;
    [SerializeField] int numberY;

    // Gap between the lights on each axis.
    [SerializeField] float gapX; 
    [SerializeField] float gapY;

    [SerializeField] GameObject lightPrefab;

    public void PlaceLights()
    {
        // Delete all existing lights.
        if (transform.childCount > 0)
        {
            for (int i = 0; i < transform.childCount; i++)
            {
                DestroyImmediate(transform.GetChild(i).gameObject);
            }
        }

        // Get the position of the first light.
        Vector2 startingPosition = new Vector2(
            ((numberX-1) * gapX) * -0.5f,
            ((numberY-1) * gapY) * -0.5f
            );

        Vector2 currentPosition = startingPosition;
        
        // Create the lights in a grid or whatever.
        for (int j = 0; j < numberY; j++)
        {
            for (int i = 0; i < numberX; i++)
            {
                // Create a light.
                GameObject newLight = Instantiate(lightPrefab);

                // Adopt it.
                newLight.transform.SetParent(transform);

                // Set its position.
                newLight.transform.localPosition = new Vector3(currentPosition.x, 0.0f, currentPosition.y);

                // Iterate the current x position.
                currentPosition.x += gapX;
            }

            // Iterate the current y position.
            currentPosition.x = startingPosition.x;
            currentPosition.y += gapY;
        }
    }
}
