using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MoveFaceTowardsPlayer : MonoBehaviour {

    public GameObject target;
    public float speed;
    AudioSource audioSource;
    public AudioClip suckingIn;
    public bool playing;

	// Use this for initialization
	void Start () {
        audioSource = GetComponent<AudioSource>();
        playing = false;
        target = GameObject.Find("VRCamera");
	}
	
	// Update is called once per frame
	void Update () {

        float step = speed * Time.deltaTime;

        //transform.position = Vector3.MoveTowards(transform.position, target.transform.position, step);

        if (playing == false)
        {
            playing = true;
            audioSource.clip = suckingIn;
            audioSource.PlayOneShot(suckingIn);
        }
        //StartCoroutine(WaitToChange(1.5f));

    }

    IEnumerator WaitToChange(float time)
    {
        yield return new WaitForSeconds(time);
        SceneManager.LoadScene("StepSoftly");
    }
}
