using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Heart : MonoBehaviour {

    Light myLight;
    [SerializeField] float intensityMin = 1f;
    [SerializeField] float intensityMax = 5f;

    [SerializeField] float pulseSpeed = 0.1f;
    float sineTime = 0.0f;

    BreakLevelManager levelManager;
    GameObject heartGoal;

    AudioSource beatAudioSource;


	void Start ()
    {
        myLight = GetComponent<Light>();
        levelManager = FindObjectOfType<BreakLevelManager>();
        heartGoal = FindObjectOfType<HeartGoal>().gameObject;
        beatAudioSource = GetComponent<AudioSource>();
	}


    public void PlayBeat(float pitch)
    {
        if (beatAudioSource.isPlaying) beatAudioSource.Stop();
        beatAudioSource.pitch = pitch;
        beatAudioSource.Play();
    }

	
	void Update ()
    {
        //myLight.intensity = MyMath.Map(Mathf.Sin(sineTime), -1f, 1f, intensityMin, intensityMax);
        //sineTime += MyMath.Map(Vector3.Distance(transform.position, heartGoal.transform.position), 1f, 5f, levelManager.pulseSpeedSlow, levelManager.pulseSpeedFast);
    }
}
