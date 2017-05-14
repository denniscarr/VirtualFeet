using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hatch : MonoBehaviour {

    public bool isOpening;
    [SerializeField] float openingSpeed = 0.5f;

    private void Update()
    {
        if (isOpening)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y + openingSpeed * Time.deltaTime, transform.position.z);
        }
    }
}
