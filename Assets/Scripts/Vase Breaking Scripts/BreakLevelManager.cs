using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BreakLevelManager : MonoBehaviour {

    [SerializeField]
    int _statuesBroken;
    public int statuesBroken
    {
        get { return _statuesBroken; }
        set
        {
            _statuesBroken = value;

            //Debug.Log(_statuesBroken);

            //if (statuesBroken >= 1)
            //{
            //    GameObject.Find("Pyre").GetComponent<Pyre>().Light();
            //}
        }
    }

    public bool heartHasSpawned = false;

    [SerializeField] GameObject shatterSound;

    public float pulseSpeedSlow = 0.01f;
    public float pulseSpeedFast = 0.3f;
    float sineTime = 0.0f;

    [SerializeField] float lightIntensityMin = 1f;
    [SerializeField] float lightIntensityMax = 5f;

    Light heartLight;
    [SerializeField] Light goalLight;

    bool audioPlayed = false;


    private void Start()
    {
        heartHasSpawned = false;
    }

    private void Update()
    {
        if (heartHasSpawned)
        {
            float newLightIntensity = MyMath.Map(Mathf.Sin(sineTime), -1f, 1f, lightIntensityMin, lightIntensityMax);
            sineTime += MyMath.Map(Vector3.Distance(goalLight.transform.position, heartLight.transform.position), 5f, 0f, pulseSpeedSlow, pulseSpeedFast) * Time.deltaTime;

            if (Mathf.Sin(sineTime) <= -0.9f && !audioPlayed)
            {
                FindObjectOfType<Heart>().PlayBeat(MyMath.Map(newLightIntensity, lightIntensityMin, lightIntensityMax, 0.5f, 1.5f));
            }

            if (Mathf.Sin(sineTime) >= 0.9f && audioPlayed)
            {
                audioPlayed = false;
            }

            goalLight.intensity = newLightIntensity;
            if (heartLight != null) heartLight.intensity = newLightIntensity;
        }

        else goalLight.intensity = 0f;
    }


    public void OpenHatch()
    {
        FindObjectOfType<Hatch>().isOpening = true;
        heartLight = GameObject.Find("Heart(Clone)").GetComponent<Light>();
    }


    public void PlayShatterSound(Vector3 position)
    {
        Instantiate(shatterSound, position, Quaternion.identity);
    }
}
