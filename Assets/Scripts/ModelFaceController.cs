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

    AudioSource audioSource;
    public AudioClip snore;

    GameObject pyreObj;
    Pyre pyreScript;

    MoveFaceTowardsPlayer moveFace;

    float timePassed = 0;

    public bool warning = false;



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
        target = GameObject.Find("VRCamera").transform;

        moveFace = GameObject.FindGameObjectWithTag("skull").GetComponent<MoveFaceTowardsPlayer>();

		
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
                timePassed = 0;
            }
            else if (stompTest.tooFast == false)
            {
                Debug.Log("SLOW AGAIN");
                timePassed += Time.deltaTime;
                //Debug.Log(timePassed);
                if (timePassed > 2)
                {
                    isAwake = false;
                    isSleeping = true;
                }
            }
            if (warning == false)
            {
                //if (stompTest.currentVelocityMagnitude > 0.2f && stompTest.currentVelocityMagnitude < 2)
                //{
                //    warning = false;
                //    Debug.Log("ALMOST TOO FAST");
                //    audioSource.clip = snore;
                //    audioSource.Play();
                //    warning = true;
                //}
            }

        }
        if (isAwake == true)
        {
            warning = false;
            isSleeping = false;
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
            moveFace.enabled = true;
        }
        if (isSleeping == true)
        {
            isAwake = false;
            StartCoroutine(WaitToLight(1));
            moveFace.enabled = false;
            moveFace.playing = false;
            transformValue = 0;
            eyeValue = 100;
            m3D.SetBlendshapeValue("eCTRLAngry", transformValue);
            m3D.SetBlendshapeValue("eCTRLScream", transformValue);
            m3D.SetBlendshapeValue("Eyelid_Size", transformValue);
            m3D.SetBlendshapeValue("EyesIrisSize", transformValue);
            m3D.SetBlendshapeValue("FaceCenterDepth", transformValue);
            m3D.SetBlendshapeValue("eCTRLEyesClosed", eyeValue);
            //Debug.Log("breatheValue = " + breathValue);
            //Debug.Log("breathOut = " + breathOut);
            if (breathOut == false)
            {
                if (breathValue + Time.deltaTime < headBobValue)
                {
                    breathValue += Time.deltaTime * headBobSpeed;
                    faceChangeValue += Time.deltaTime * faceChangeSpeed;
                    //Debug.Log("Breathing Increasing to " + breathValue);
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
        Debug.Log("WaitToLight");
        yield return new WaitForSeconds(time);
        pyreScript.Light();
    }
}
