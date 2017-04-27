using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TileLevelManager : MonoBehaviour {

	public List<GameObject> tiles;
	public List<GameObject> tilesRow1;
	public List<GameObject> tilesRow2;
	public List<GameObject> tilesRow3;
	public List<string> playersteps = new List<string> ();
	public GameObject start;
	AudioSource tune;
	int clipToPlay = 0;
	[SerializeField] string[] randomtunes;
	int i;
	public AudioClip lose;
	public AudioClip startAudio;
	private Color originalColor;
	float timeToWait;
	public bool isfunction;


	// Use this for initialization
	void Start () {

		isfunction = true;

		playersteps.Clear ();

		tune = this.gameObject.GetComponent<AudioSource> ();

		randomtunes = new string[3];

		//tune.clip = startAudio;

		//tune.Play ();

		Invoke ("PlaySound", 1.5f);

		i = 0;

		
	}
	
	// Update is called once per frame
	void Update () {

		
		if(isfunction == true){
		
			StepCheck ();
	}			
}




	void PlaySound () {

		if (clipToPlay == 0) {
			
			tilesRow1[clipToPlay] = tilesRow1 [Random.Range (0, tilesRow1.Count)];
			
			tune.clip = tilesRow1 [clipToPlay].GetComponent<AudioSource>().clip;

			float timeToWait = tune.clip.length;

			randomtunes [clipToPlay] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			originalColor = tilesRow1[clipToPlay].GetComponent<SpriteRenderer> ().color;

			tilesRow1[clipToPlay].GetComponent<SpriteRenderer> ().color = Color.yellow;

			StartCoroutine (Wait());

			}

		if (clipToPlay == 1) {

			tilesRow2[clipToPlay] = tilesRow2 [Random.Range (0, tilesRow2.Count)];

			tune.clip = tilesRow2 [clipToPlay].GetComponent<AudioSource>().clip;

			float timeToWait = tune.clip.length;

			randomtunes [clipToPlay] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			originalColor = tilesRow2 [clipToPlay].GetComponent<SpriteRenderer> ().color;

			tilesRow2[clipToPlay].GetComponent<SpriteRenderer> ().color = Color.yellow;

			StartCoroutine (Wait());

		}

		if (clipToPlay == 2) {

			tilesRow3 [clipToPlay] = tilesRow3[Random.Range (0, tilesRow3.Count)];

			tune.clip = tilesRow3[clipToPlay].GetComponent<AudioSource>().clip;

			float timeToWait = tune.clip.length;

			randomtunes[clipToPlay] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			originalColor = tilesRow3[clipToPlay].GetComponent<SpriteRenderer> ().color;

			tilesRow3[clipToPlay].GetComponent<SpriteRenderer> ().color = Color.yellow;

			StartCoroutine (Wait());

		}

}



	void Lose(){

		GameObject.Find ("Pyre").SendMessage ("unLight");

		isfunction = false;
		Debug.Log ("lose" + isfunction);

		//this.GetComponent<TileLevelManager> ().enabled = false;

	}


	void Win(){



		Debug.Log ("win");
		
	}

	void StepCheck ()
	{

		if (playersteps.Count != 0) {
			
			if (!playersteps [i].Equals ("null")) {

				for (int i = 1; i < playersteps.Count; i++) {

					if (playersteps [i] == playersteps [i - 1]) {

						playersteps.RemoveAt(i);
					}
				}
				
				if (randomtunes [i] == playersteps [i]) {
					Debug.Log ("success " + i);
					i = i + 1;
				} 
				else {
					Lose ();
				}
			}
		}
		
		if (i == 3) {
			Win ();
		}
	}

	IEnumerator Wait(){
		
		yield return new WaitForSeconds(1);

		if (clipToPlay == 0) {
			tilesRow1 [clipToPlay].GetComponent<SpriteRenderer> ().color = originalColor;
			clipToPlay = clipToPlay + 1;
		}
		else if(clipToPlay == 1) {
			tilesRow2 [clipToPlay].GetComponent<SpriteRenderer> ().color = originalColor;
			clipToPlay = clipToPlay + 1;
		}
		else if (clipToPlay == 2) {
			tilesRow3 [clipToPlay].GetComponent<SpriteRenderer> ().color = originalColor;
			clipToPlay = clipToPlay + 1;
		}

		Invoke ("PlaySound", timeToWait);


	}

	public void Setup(){


		isfunction = true;

		playersteps.Clear ();

		randomtunes = new string[3];

		Invoke ("PlaySound", 1.5f);

		i = 0;

		clipToPlay = 0;

		Debug.Log ("setup");



	}


}
