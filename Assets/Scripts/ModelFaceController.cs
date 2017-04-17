using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//using MORPH3D;
//using MORPH3D.FOUNDATIONS;

public class ModelFaceController : MonoBehaviour {

    M3DCharacterManager m3D;
    GameObject footCube; //for testing
    StompTest stompTest; //for testing
    public float timer;
    private static float eyeValue = 100;
    float breathValue = 0;
    public float eyeSpeed;
    public float headBobValue;
    public float headBobSpeed;
    public float faceChangeValue;
    public float faceChangeSpeed;

    public float transformSpeed;
    public float transformValue;

    bool safeToStart;
    bool isAwake;
    bool isSleeping;
    bool breathOut;

    public Transform target;
    public GameObject head;
    public GameObject animationHead;

    AudioSource audioSource;
    public AudioClip snore;

    GameObject pyreObj;
    Pyre pyreScript;

    public Transform sleepLookTarget;



	// Use this for initialization
	void Start () {

        m3D = GetComponent<M3DCharacterManager>();
        footCube = GameObject.Find("Foot Cube");
        stompTest = footCube.GetComponent<StompTest>();
        safeToStart = false;
        isAwake = false;
        isSleeping = true;
        breathOut = false;
        audioSource = GetComponent<AudioSource>();
        transformValue = 0;
        pyreObj = GameObject.Find("Pyre");
        pyreScript = pyreObj.GetComponent<Pyre>();

		
	}
	
	// Update is called once per frame
	void Update () {


        //Debug.Log("eyeValue = " + eyeValue);
        //Debug.Log("transformValue = " + transformValue);

        //Debug.Log("isSleeping = " + isSleeping);

        StartCoroutine(WaitToStart(2));
        if (safeToStart == true)
        {
            if (stompTest.tooFast == true)
            {
                isAwake = true;
                isSleeping = false;
            }
            else if(stompTest.tooFast == false)
            {
                isSleeping = true;
                isAwake = false;
            }
        }
        if (isAwake == true)
        {
            //isSleeping = false;
            eyeValue = eyeValue -= Time.deltaTime * eyeSpeed;
            m3D.SetBlendshapeValue("eCTRLEyesClosed", eyeValue);

            transformValue = transformValue += Time.deltaTime * transformSpeed;
            m3D.SetBlendshapeValue("eCTRLAngry", transformValue);
            m3D.SetBlendshapeValue("eCTRLScream", transformValue);
            m3D.SetBlendshapeValue("Eyelid_Size", transformValue);
            m3D.SetBlendshapeValue("EyesIrisSize", transformValue);
            m3D.SetBlendshapeValue("FaceCenterDepth", transformValue);
            //m3D.SetBlendshapeValue("FHMHellFiend", transformValue);
            //animationHead.GetComponent<Animator>().SetBool("tooFast", true);
            head.transform.LookAt(target);
            pyreScript.unLight();
        }
        if (isSleeping == true)
        {
            //isAwake = false;
            StartCoroutine(WaitToLight(1));
            head.transform.LookAt(sleepLookTarget);
            //Debug.Log("breatheValue = " + breathValue);
            //Debug.Log("breathOut = " + breathOut);
            if (breathOut == false)
            {
                if (breathValue + Time.deltaTime < headBobValue)
                {
                    breathValue += Time.deltaTime * headBobSpeed;
                    faceChangeValue += Time.deltaTime * faceChangeSpeed;
                    //Debug.Log("Breathing Increasing to " + breathValue);
                    audioSource.clip = snore;
                    audioSource.Play();
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
                    //Debug.Log("Breathing Decreasing");
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


        if (eyeValue <= 0)
        {
            eyeValue = 0;
        }
        if (transformValue >= 100)
        {
            transformValue = 100;
        }

    }

    IEnumerator WaitToStart(float time)
    {
        yield return new WaitForSeconds(time);
        safeToStart = true;
    }

    IEnumerator WaitToLight(float time)
    {
        yield return new WaitForSeconds(time);
        pyreScript.Light();
    }
}
