using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LighthouseLevelManager : MonoBehaviour {

    [SerializeField] int requiredStatues = 4;
    int _statuesBurned;
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
                GameObject.Find("Pyre").GetComponent<Pyre>().Light();
                pyreLit = true;
            }
        }
    }

    bool pyreLit = false;
}
