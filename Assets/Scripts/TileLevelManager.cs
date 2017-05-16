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
	int steptile;
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

		Invoke ("PlaySound", 3f);

		steptile = 0;

		
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

			originalColor = tilesRow1[clipToPlay].GetComponent<Renderer>().material.GetColor("_EmissionColor");

			tilesRow1[clipToPlay].GetComponent<Renderer> ().material.SetColor("_EmissionColor",Color.yellow);

			StartCoroutine (Wait());

			}

		if (clipToPlay == 1) {

			tilesRow2[clipToPlay] = tilesRow2 [Random.Range (0, tilesRow2.Count)];

			tune.clip = tilesRow2 [clipToPlay].GetComponent<AudioSource>().clip;

			float timeToWait = tune.clip.length;

			randomtunes [clipToPlay] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			originalColor = tilesRow2 [clipToPlay].GetComponent<Renderer>().material.GetColor("_EmissionColor");

			tilesRow2[clipToPlay].GetComponent<Renderer> ().material.SetColor("_EmissionColor",Color.yellow);
			StartCoroutine (Wait());

		}

		if (clipToPlay == 2) {

			tilesRow3 [clipToPlay] = tilesRow3[Random.Range (0, tilesRow3.Count)];

			tune.clip = tilesRow3[clipToPlay].GetComponent<AudioSource>().clip;

			float timeToWait = tune.clip.length;

			randomtunes[clipToPlay] = tune.clip.name;

			Debug.Log(randomtunes[0]+ " "+ randomtunes[1]+ " "+ randomtunes[2]);

			tune.Play ();

			originalColor = tilesRow3[clipToPlay].GetComponent<Renderer>().material.GetColor("_EmissionColor");

			tilesRow3[clipToPlay].GetComponent<Renderer> ().material.SetColor("_EmissionColor",Color.yellow);

			StartCoroutine (Wait());

		}

}



	void Lose(){

		isfunction = false;

		Debug.Log ("lose" + isfunction);

		FindObjectOfType<Tilestart> ().startPressed = false;
		FindObjectOfType<Tilestart>().startclosing = false;
		FindObjectOfType<Tilestart>().startopen = true;

		//this.GetComponent<TileLevelManager> ().enabled = false;

	}


	void Win(){

        GameObject.Find("Pyre").SendMessage("Light");

        Debug.Log ("win");		
	}

	void StepCheck ()

	{
		Debug.Log ("steptile:" + steptile);

		if (playersteps.Count > steptile) {
			
			if (playersteps [steptile] != null) {



				for (int j = 1; j < playersteps.Count; j++) {

					if (playersteps [j] == playersteps [j-1]) {

						playersteps.RemoveAt(j);
					}
				}
				
				if (randomtunes [steptile] == playersteps [steptile]) 
				{
					Debug.Log ("success " + steptile);
					steptile = steptile + 1;
				} 

				else {
					
					Lose ();
				}
			}
		}
		
		if (steptile == 3) {
			Win ();
		}
	}

	IEnumerator Wait(){
		
		yield return new WaitForSeconds(1);

//		if (clipToPlay == 0) {
//			tilesRow1 [clipToPlay].GetComponent<Renderer> ().material.SetColor("_EmissionColor",originalColor);
//			clipToPlay = clipToPlay + 1;
//		}
//		else if(clipToPlay == 1) {
//			tilesRow2 [clipToPlay].GetComponent<Renderer> ().material.SetColor("_EmissionColor",originalColor);
//			clipToPlay = clipToPlay + 1;
//		}
//		else if (clipToPlay == 2) {
//			tilesRow3 [clipToPlay].GetComponent<Renderer> ().material.SetColor("_EmissionColor",originalColor);
//			clipToPlay = clipToPlay + 1;
//		}

		clipToPlay = clipToPlay + 1;

		Invoke ("PlaySound", timeToWait);


	}

	public void Setup(){


		isfunction = true;

		playersteps.Clear ();

		randomtunes = new string[3];

		Invoke ("PlaySound", 1.5f);

		steptile = 0;

		clipToPlay = 0;

		Debug.Log ("setup");

		for (int k = 0; k < tiles.Count; k++) { 

			tiles[k].GetComponent<TileManager> ().reset = true; 
		} 

	}


}
