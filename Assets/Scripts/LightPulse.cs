using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightPulse : MonoBehaviour {

    Light myLight;
    [SerializeField] float intensityMin = 1;
    [SerializeField] float intensityMax = 20;

    [SerializeField] float pulseSpeed = 0.1f;
    float time = 0.0f;

	void Start ()
    {
        myLight = GetComponent<Light>();
	}
	
	void Update ()
    {
        time += pulseSpeed;
        myLight.intensity = MyMath.Map(Mathf.Sin(time), -1, 1, intensityMin, intensityMax);
	}
}
