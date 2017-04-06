using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BreakLevelManager : MonoBehaviour {

    [SerializeField] int _statuesBroken;
    public int statuesBroken
    {
        get { return _statuesBroken; }
        set
        {
            _statuesBroken = value;

            Debug.Log(_statuesBroken);

            if (statuesBroken >= 1)
            {
                GameObject.Find("Pyre").GetComponent<Pyre>().Light();
            }
        }
    }


    private void Update()
    {
        //GameObject.Find("Pyre").GetComponent<Pyre>().Light();
    }
}
