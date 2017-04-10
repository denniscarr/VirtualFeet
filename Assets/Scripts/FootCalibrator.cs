using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootCalibrator : MonoBehaviour {

    [SerializeField] Vector3 targetRotation;
    [SerializeField] float targetHeight;


    private void Start()
    {
        Calibrate();
    }


    void Calibrate()
    {
        // Set rotation
        transform.rotation = Quaternion.Euler(targetRotation);

        // Set height
        transform.position = new Vector3(transform.position.x, targetHeight, transform.position.z);
    }
}
