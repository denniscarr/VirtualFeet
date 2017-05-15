using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LighthouseLevelManager : MonoBehaviour {

    [SerializeField] int requiredStatues = 4;
    [SerializeField] int _statuesBurned;
    public int statuesBurned
    {
        get
        {
            return _statuesBurned;
        }

        set
        {
            _statuesBurned = value;

            if (_statuesBurned >= requiredStatues && !pyreLit)
            {
                foreach(ParticleSystem ps in fireGameObject.GetComponentsInChildren<ParticleSystem>())
                {
                    ParticleSystem.EmissionModule emission = ps.emission;
                    emission.enabled = false;
                }
                GameObject.Find("Pyre").GetComponent<Pyre>().Light();
                pyreLit = true;
            }
        }
    }
    [SerializeField] GameObject fireGameObject;


    bool pyreLit = false;
}
