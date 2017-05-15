using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hatch : MonoBehaviour {

    public bool isOpening;
    public bool isClosing;
    [SerializeField] float openingSpeed = 0.5f;

    AudioSource myAudioSource;
    AudioClip openingClip;
    [SerializeField] AudioClip finishedOpeningClip;

    private void Start()
    {
        myAudioSource = GetComponent<AudioSource>();
        openingClip = myAudioSource.clip;
    }


    private void Update()
    {
        if (isOpening)
        {
            if (!myAudioSource.isPlaying) myAudioSource.Play();

            transform.position = new Vector3(transform.position.x, transform.position.y + openingSpeed * Time.deltaTime, transform.position.z);

            // See if I've finished opening.
            if (transform.localPosition.y >= 0.75f)
            {
                myAudioSource.Stop();
                myAudioSource.clip = finishedOpeningClip;
                myAudioSource.Play();

                isOpening = false;
            }
        }

        else if (isClosing)
        {
            if (myAudioSource.clip != openingClip)
            {
                myAudioSource.Stop();
                myAudioSource.clip = openingClip;
            }

            if (!myAudioSource.isPlaying)
            {
                myAudioSource.Play();
            }

            transform.position = new Vector3(transform.position.x, transform.position.y - openingSpeed * Time.deltaTime, transform.position.z);

            if (transform.localPosition.y <= 0.246f)
            {
                transform.localPosition = new Vector3(transform.localPosition.x, 0.246f, transform.localPosition.z);

                myAudioSource.Stop();
                myAudioSource.clip = finishedOpeningClip;
                myAudioSource.Play();

                isClosing = false;
            }
        }
    }
}
