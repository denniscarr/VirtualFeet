using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TileLevelManager : MonoBehaviour {

	public List<AudioClip> tunes;
	public List<string> playersteps = new List<string> ();
	AudioSource tune;
	int clipToPlay = 0;
	[SerializeField] string[] randomtunes;
	int i;

	// Use this for initialization
	void Start () {
		
		randomtunes = new string[6];

		tune = this.gameObject.GetComponent<AudioSource> ();

		PlaySound ();

		i = 0;
		
	}
	
	// Update is called once per frame
	void Update () {

//		Debug.Log(playersteps[0]+ " "+ playersteps[1]+ " "+ playersteps[2]+ " "+ playersteps[3]
//			+ " "+ playersteps[4]+ " "+ playersteps[5]);

		StepCheck ();
		
	}

	void PlaySound () {

		if (clipToPlay < 6) {

			clipToPlay = clipToPlay + 1;

			int j = 0;
			
			tunes[j] = tunes [Random.Range (0, tunes.Count)];
			
			tune.clip = tunes [j];

			float timeToWait = tune.clip.length;

			int i = 0;

			i = clipToPlay - 1;

			randomtunes [i] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]+ " "+ randomtunes[3]
						+ " "+ randomtunes[4]+ " "+ randomtunes[5]);

			tune.Play ();

			Invoke ("PlaySound", timeToWait);
		}
	}

	void Lose(){
		SceneManager.LoadScene (3);
	}

	void Win(){
		GameObject.Find ("Up Elevator (Conditional Trigger)").GetComponent<ElevatorScript> ().OpenDoor ();
		
	}

	void StepCheck(){

		if(playersteps.Count != 0){
			if (!playersteps [i].Equals ("null")) {
				if (randomtunes [i] == playersteps [i]) {
					Debug.Log ("success "+ i);
					i = i + 1;
				} else {
					Lose ();
				}
			}
		}
		
		if (i = 6) {
			Win ();
		}
	}

}
