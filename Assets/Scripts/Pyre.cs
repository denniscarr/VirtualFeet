using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Pyre : MonoBehaviour {

    public bool lit;   // Whether the pyre is lit.

    private int feetInsideMe;   // Keeps track of how many of the player's feet are inside me. (So we can make sure the player has both feet in the fire.)
    [SerializeField] int requiredFeet = 2;  // Lets the pyre activate me with just one foot inside me. (To make debugging easier).

    [SerializeField] private GameObject particles;  // A reference to the game object holding my fire particles.
    [SerializeField] private GameObject wildFireParticles;  // The particles which appear when the player is burning.

    [SerializeField ] private string nextSceneName = "";  // The scene to teleport the player to when they burn.

    public bool alwaysLit;

    bool isBurningPlayer;

    void Start()
    {
        GetComponent<ScreenFade>().StartFadingIn();

        if(alwaysLit == true)
        {
            Light();
        }
    }


	
	void Update ()
    {
        // If I am lit, check whether the player has both feet inside me.
        if (lit && feetInsideMe >= requiredFeet)
        {
            if (!isBurningPlayer)
            {
                GetComponent<ScreenFade>().StartFadingOut();
                GameObject wildFire = Instantiate(wildFireParticles);
                wildFire.transform.SetParent(GameObject.Find("FollowHead").transform);
                wildFire.transform.localPosition = GameObject.Find("FollowHead").transform.forward;
                isBurningPlayer = true;
            }
        }

        if (isBurningPlayer)
        {
            BurnPlayer();
        }
	}


    // Makes the player feel like they're on fire and changes the scene.
    private void BurnPlayer()
    {
        if (GetComponent<ScreenFade>().isFinishedFading)
        {
            Invoke("ChangeScene", 1f);
        }
    }


    private void ChangeScene()
    {
        /* Add effects and stuff here */
        if (nextSceneName != "")
        {
            SceneManager.LoadScene(nextSceneName);
        }
    }


    /// <summary>
    /// Lights the pyre. (Activates particles and allows player to use in order to change the scene.)
    /// </summary>
    public void Light()
    {
        particles.SetActive(true);
        lit = true;
    }

    public void unLight()
    {
        particles.SetActive(false);
        lit = false;
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.name == "Foot Cube")
        {
            feetInsideMe++;
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if (other.name == "Foot Cube")
        {
            feetInsideMe--;
        }
    }
}
