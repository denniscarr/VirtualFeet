using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TileLevelManager : MonoBehaviour {

	public List<GameObject> tiles;
	public List<string> playersteps = new List<string> ();
	public GameObject start;
	AudioSource tune;
	int clipToPlay = 0;
	[SerializeField] string[] randomtunes;
	int i,j;
	public AudioClip lose;
	public AudioClip startAudio;
	private Color originalColor;
	float timeToWait;


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
			
			tiles[j] = tiles [Random.Range (0, tiles.Count)];
			
			tune.clip = tiles [j].GetComponent<AudioSource>().clip;

			float timeToWait = tune.clip.length;

			int i = 0;

			i = clipToPlay - 1;

			randomtunes [i] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			originalColor = tiles [j].GetComponent<SpriteRenderer> ().color;

			tiles [j].GetComponent<SpriteRenderer> ().color = Color.yellow;

			StartCoroutine (Wait());






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

	IEnumerator Wait(){
		

		yield return new WaitForSeconds(1);

		tiles [j].GetComponent<SpriteRenderer> ().color = originalColor;

		Invoke ("PlaySound", timeToWait);


	}

}
