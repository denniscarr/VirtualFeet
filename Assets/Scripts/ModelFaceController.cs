using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using MORPH3D;
using MORPH3D.FOUNDATIONS;

public class ModelFaceController : MonoBehaviour {

    M3DCharacterManager m3D;
    GameObject footCube; //for testing
    StompTest stompTest; //for testing
    public float timer;
    private static float eyeValue = 100;
    public float EyeValue
    {
        get
        {
            return eyeValue;
        }
        set
        {
            eyeValue = value;
            if (eyeValue > 100)
            {
                eyeValue = 100;
            }
            if (eyeValue < 0)
            {
                eyeValue = 0;
            }
        }
    }
    public float speed;

    bool safeToStart;
    bool isAwake;



	// Use this for initialization
	void Start () {

        m3D = GetComponent<M3DCharacterManager>();
        footCube = GameObject.Find("Foot Cube");
        stompTest = footCube.GetComponent<StompTest>();
        safeToStart = false;
        isAwake = false;

		
	}
	
	// Update is called once per frame
	void Update () {

        //Debug.Log("eyeValue = " + eyeValue);
        StartCoroutine(WaitToStart(2));
        if (safeToStart == true)
        {
            if (stompTest.tooFast == true)
            {
                isAwake = true;
            }
        }
        if (isAwake == true)
        {
            eyeValue = eyeValue -= Time.deltaTime * speed;
            m3D.SetBlendshapeValue("eCTRLEyesClosed", eyeValue);
        }
    }

    IEnumerator WaitToStart(float time)
    {
        yield return new WaitForSeconds(time);
        safeToStart = true;
    }
}
