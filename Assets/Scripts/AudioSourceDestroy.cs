using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioSourceDestroy : MonoBehaviour {

    AudioSource myAudioSource;


    private void Start()
    {
        myAudioSource = GetComponent<AudioSource>();
    }


    private void Update()
    {
        if (!myAudioSource.isPlaying)
        {
            Destroy(gameObject);
        }
    }
}
