using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImpactSound : MonoBehaviour {

	[SerializeField] GameObject soundPrefab;


    public void InstantiateSound(Vector3 position)
    {
        GameObject soundGameObject = Instantiate(soundPrefab);
        soundGameObject.transform.position = position;
        soundGameObject.GetComponent<AudioSource>().pitch = Random.Range(0.8f, 1.2f);
    }
}
