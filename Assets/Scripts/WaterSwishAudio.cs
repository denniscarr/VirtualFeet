using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterSwishAudio : MonoBehaviour {

	[SerializeField] AudioClip[] clips;
    AudioSource myAudioSource;

    private void Start()
    {
        myAudioSource = GetComponent<AudioSource>();

        // Choose a clip
        myAudioSource.clip = clips[Random.Range(0, clips.Length)];
        myAudioSource.pitch = Random.Range(0.8f, 1.2f);
        myAudioSource.Play();
    }
}
