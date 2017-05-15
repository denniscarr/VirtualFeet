using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeartGoal : MonoBehaviour {

    [SerializeField] Light goalLight;
    public bool isOpening = true;

    float sineTime = 0f;

    BreakLevelManager levelManager;


    private void Start()
    {
        levelManager = FindObjectOfType<BreakLevelManager>();
    }

    private void Update()
    {
        //if (isOpening)
        //{
        //    goalLight.intensity = MyMath.Map(Mathf.Sin(sineTime), -1f, 1f, 1f, 5f);
        //}

        //sineTime += MyMath.Map(Vector3.Distance(transform.position, GameObject.Find("Heart").transform.position), 1f, 5f, levelManager.pulseSpeedSlow, levelManager.pulseSpeedFast);
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.name.Contains("Heart"))
        {
            GameObject.Find("Pyre").GetComponent<Pyre>().Light();
        }
    }
}
