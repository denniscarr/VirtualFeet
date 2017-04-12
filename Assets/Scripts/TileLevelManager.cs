using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TileLevelManager : MonoBehaviour {

	public List<AudioClip> tunes;
	public List<string> playersteps = new List<string> ();
	public GameObject start;
	AudioSource tune;
	int clipToPlay = 0;
	[SerializeField] string[] randomtunes;
	int i;
	public AudioClip lose;
	public AudioClip startAudio;

	// Use this for initialization
	void Start () {

		playersteps.Clear ();

		tune = this.gameObject.GetComponent<AudioSource> ();

		randomtunes = new string[3];

		tune.clip = startAudio;

		tune.Play ();

		Invoke ("PlaySound", 1.5f);

		i = 0;



		
	}
	
	// Update is called once per frame
	void Update () {

			StepCheck ();
	}

	void PlaySound () {


		if (clipToPlay < 3) {

			clipToPlay = clipToPlay + 1;

			int j = 0;
			
			tunes[j] = tunes [Random.Range (0, tunes.Count)];
			
			tune.clip = tunes [j];

			float timeToWait = tune.clip.length;

			int i = 0;

			i = clipToPlay - 1;

			randomtunes [i] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			Invoke ("PlaySound", timeToWait);
		}
	}

	void Lose(){
		
		SceneManager.LoadScene (3);
	}

	void Win(){

		GameObject.Find ("Pyre").SendMessage ("Light");

		Debug.Log ("win");
		
	}

	void StepCheck ()
	{

		if (playersteps.Count != 0) {
			
			if (!playersteps [i].Equals ("null")) {
				
				if (randomtunes [i] == playersteps [i]) {
					Debug.Log ("success " + i);
					i = i + 1;
				} else {
					Lose ();
				}
			}
		}
		
		if (i == 3) {
			Win ();
		}
	}

}
