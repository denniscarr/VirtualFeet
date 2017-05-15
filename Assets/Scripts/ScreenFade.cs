using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScreenFade : MonoBehaviour {

    [SerializeField] Texture2D fadeTexture;
    float fadeSpeed = 0.2f;
    int drawDepth = -1000;

    float alpha = 0.0f;
    int fadeDir;

    public bool isFinishedFading;
    bool isFading;


    private void Start()
    {
        AudioListener.volume = 0f;

        StartFadingIn();
    }


    private void OnGUI()
    {
        FadeScreen();
    }


    public void StartFadingIn()
    {
        isFinishedFading = false;
        fadeDir = 1;
        alpha = 1f;
        isFading = true;
    }


    public void StartFadingOut()
    {
        isFinishedFading = false;
        fadeDir = -1;
        alpha = 0.0f;
        isFading = true;
    }


    void FadeScreen()
    {
        if (!isFading) return;

        // Get a new alpha for the black texture.
        alpha -= fadeDir * fadeSpeed * Time.deltaTime;
        alpha = Mathf.Clamp01(alpha);

        // Set up GUI color and depth.
        Color thisAlpha = GUI.color;
        thisAlpha.a = alpha;
        GUI.color = thisAlpha;
        GUI.depth = drawDepth;

        // Draw the texture.
        GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), fadeTexture);

        // Fade audio
        AudioListener.volume = 1f - alpha;

        // See if the fading out has finished.
        if ((fadeDir == -1 && alpha >= 1f) || (fadeDir == 1 && alpha <= 0f))
        {
            isFinishedFading = true;
        }
    }
}
