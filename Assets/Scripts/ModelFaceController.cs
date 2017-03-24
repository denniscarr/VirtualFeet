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
    float breathValue = 0;
    public float eyeSpeed;
    public float headBobValue;
    public float headBobSpeed;
    public float faceChangeValue;
    public float faceChangeSpeed;

    bool safeToStart;
    bool isAwake;
    bool isSleeping;
    bool breathOut;



	// Use this for initialization
	void Start () {

        m3D = GetComponent<M3DCharacterManager>();
        footCube = GameObject.Find("Foot Cube");
        stompTest = footCube.GetComponent<StompTest>();
        safeToStart = false;
        isAwake = false;
        isSleeping = true;
        breathOut = false;

		
	}
	
	// Update is called once per frame
	void Update () {

        //Debug.Log("eyeValue = " + eyeValue);
       
        //Debug.Log("isSleeping = " + isSleeping);
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
            eyeValue = eyeValue -= Time.deltaTime * eyeSpeed;
            m3D.SetBlendshapeValue("eCTRLEyesClosed", eyeValue);
        }
        if (isSleeping == true)
        {
            Debug.Log("breatheValue = " + breathValue);
            Debug.Log("breathOut = " + breathOut);
            if(breathOut == false)
            {
                if (breathValue + Time.deltaTime < headBobValue)
                {
                    breathValue += Time.deltaTime * headBobSpeed;
                    faceChangeValue += Time.deltaTime * faceChangeSpeed;
                    Debug.Log("Breathing Increasing to " + breathValue);

                }
                else
                {
                    breathValue = headBobValue;
                    breathOut = true;
                }
            }else
            {
                if (breathValue - Time.deltaTime > 0)
                {
                    breathValue -= Time.deltaTime * headBobSpeed;
                    faceChangeValue -= Time.deltaTime * faceChangeSpeed;
                    Debug.Log("Breathing Decreasing");
                }
                else
                {
                    breathValue = 0;
                    breathOut = false;
                }
            }
           
            
            m3D.SetBlendshapeValue("Aged_Posture", breathValue);
            m3D.SetBlendshapeValue("eCTRLExcitement", faceChangeValue);
        }



    }

    IEnumerator WaitToStart(float time)
    {
        yield return new WaitForSeconds(time);
        safeToStart = true;
    }
}
