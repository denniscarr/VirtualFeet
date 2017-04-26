using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightFlicker : MonoBehaviour {

    Light myLight;
    Material mat;

    [SerializeField] float flickerThreshold = 0.6f;
    [SerializeField] float noiseSpeed = 0.01f;
    float noiseTime = 0f;
    float noiseOffset;

    [SerializeField] float flickerIntensity = 0.5f;
    float originalIntensity;
    Color originalColor;

    [SerializeField] AudioSource hum;
    [SerializeField] float humVolumeOriginal;
    [SerializeField] float humVolumeLow;
    [SerializeField] float humPitchOriginal;
    [SerializeField] float humPitchLow;

    [SerializeField] AudioSource flicker;
    [SerializeField] AudioClip[] flickerClips;

	void Start ()
    {
        myLight = GetComponent<Light>();
        mat = GetComponentInParent<MeshRenderer>().material;
        originalColor = mat.color;

        originalIntensity = myLight.intensity;

        noiseOffset = Random.Range(-10000f, 10000f);

        hum.Play();
	}
	
	void Update ()
    {
        noiseTime += noiseSpeed;
        float noise = Mathf.PerlinNoise(noiseTime+noiseOffset, 0);

        if (noise > flickerThreshold)
        {
            myLight.intensity = flickerIntensity + Random.Range(-0.2f, 0.2f);
            mat.SetColor("_EmissionColor", Color.gray);
            hum.volume = humVolumeLow;
            hum.pitch = humPitchLow;
            flicker.Stop();
            flicker.clip = flickerClips[Random.Range(0, flickerClips.Length)];
            flicker.Play();
        }

        else
        {
            myLight.intensity = originalIntensity;
            mat.SetColor("_EmissionColor", originalColor);
            hum.volume = humVolumeOriginal;
            hum.pitch = humPitchOriginal;
        }
    }
}
