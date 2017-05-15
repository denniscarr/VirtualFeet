using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShatterSound : MonoBehaviour {

    AudioSource audioSource;
    [SerializeField] AudioClip[] shatterClips;

	void Start ()
    {
        audioSource = GetComponent<AudioSource>();
        audioSource.pitch = Random.Range(0.8f, 1.2f);
        audioSource.clip = shatterClips[Random.Range(0, shatterClips.Length)];
        audioSource.Play();
	}
	
	void Update ()
    {
		if (!audioSource.isPlaying)
        {
            Destroy(gameObject);
        }
	}
}
