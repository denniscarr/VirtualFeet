using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightPulse : MonoBehaviour {

    Light myLight;
    [SerializeField] float intensityMin = 1;
    [SerializeField] float intensityMax = 20;

	void Start ()
    {
        myLight = GetComponent<Light>();
	}
	
	void Update ()
    {
        myLight.intensity = MyMath.Map(Mathf.Sin(Time.time), -1, 1, intensityMin, intensityMax);
	}
}
