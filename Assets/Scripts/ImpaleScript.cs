using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ImpaleScript : MonoBehaviour {

    public GameObject ceiling;
    float impaledCount;
    public float speed;
    public float ceilingTrigger;

    GameObject lightSource;
    GameObject door;

    public AudioClip hurt;
    AudioSource audioSource;

	// Use this for initialization
	void Start () {

        impaledCount = 0;
        lightSource = GameObject.Find("Directional Light");
        door = GameObject.Find("Door");
        audioSource = door.GetComponent<AudioSource>();
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            Debug.Log("OUCH");
            audioSource.clip = hurt;
            audioSource.Play();
            lightSource.GetComponent<Light>().color = Color.blue;
            impaledCount += 1;
            Debug.Log("ImpaledCount = " + impaledCount);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.name == "Foot Cube")
        {
            Debug.Log("OUCH");
            lightSource.GetComponent<Light>().color = Color.red;
        }
    }
	
	// Update is called once per frame
	void Update () {

        if (impaledCount > ceilingTrigger)
        {
            ceiling.transform.Translate(Vector3.forward * speed * Time.deltaTime);
            StartCoroutine(WaitTillDeath(6));
        }
		
	}

    IEnumerator WaitTillDeath(float time)
    {
        yield return new WaitForSeconds(time);
        SceneManager.LoadScene("Lobby");
    }
}
