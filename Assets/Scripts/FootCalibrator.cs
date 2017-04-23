using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootCalibrator : MonoBehaviour {

    [SerializeField] Vector3 targetRotation;
    [SerializeField] float targetHeight;


    private void Start()
    {
        //Invoke("Calibrate", 3f);
    }


    void Update()
    {
        if (transform.localPosition.y < -0.4f)
        {
            Calibrate();
        }
    }


    void Calibrate()
    {
        // Set world Y (bring to floor level)
        transform.position = new Vector3(transform.position.x, targetHeight, transform.position.z);

        // Set rotation
        //transform.rotation = Quaternion.Euler(targetRotation);
    }
}
