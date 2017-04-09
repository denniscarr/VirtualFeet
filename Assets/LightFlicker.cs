using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightFlicker : MonoBehaviour {

    Light myLight;
    Material mat;

    [SerializeField] float flickerThreshold = 0.6f;
    [SerializeField] float noiseSpeed = 0.01f;
    float noiseTime = 0f;

    [SerializeField] float flickerIntensity = 0.5f;
    float originalIntensity;
    Color originalColor;

	void Start ()
    {
        myLight = GetComponent<Light>();
        mat = GetComponentInParent<MeshRenderer>().material;
        originalColor = mat.color;

        originalIntensity = myLight.intensity;
	}
	
	void Update ()
    {
        noiseTime += noiseSpeed;
        float noise = Mathf.PerlinNoise(noiseTime, 0);

        Debug.Log(noise);

        if (noise > flickerThreshold)
        {
            myLight.intensity = flickerIntensity + Random.Range(-0.2f, 0.2f);
            mat.SetColor("_EmissionColor", Color.gray);
        }

        else
        {
            myLight.intensity = originalIntensity;
            mat.SetColor("_EmissionColor", originalColor);
        }
    }
}
