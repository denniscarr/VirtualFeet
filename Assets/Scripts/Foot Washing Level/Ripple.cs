using UnityEngine;
using System.Collections;

public class Ripple : MonoBehaviour {

    private int[] buffer1;
    private int[] buffer2;
    private int[] vertexIndices;

    private Mesh mesh;  // The mesh used for the water.

    private Vector3[] vertices ;
    //private Vector3[] normals ;

    public float dampner = 0.999f;
    public float maxWaveHeight = 2.0f;

    public int splashForce = 1000;

    //public int slowdown = 20;
    //private int slowdownCount = 0;
    private bool swapMe = true;

    public int cols = 128;
    public int rows = 128;

    [SerializeField] GameObject waterSwishAudioPrefab;
    float audioCooldown = 0.8f;
    float timeSinceLastAudio = 0.8f;


	// Use this for initialization
    void Start ()
    {
		MeshFilter mf = (MeshFilter)GetComponent(typeof(MeshFilter));
		mesh = mf.mesh;
	    vertices = mesh.vertices;
		buffer1 = new int[vertices.Length];
		buffer2 = new int[vertices.Length];

        Bounds bounds = mesh.bounds;
    
        float xStep = (bounds.max.x - bounds.min.x)/cols;
        float zStep = (bounds.max.z - bounds.min.z)/rows;

	    vertexIndices = new int[vertices.Length];
        int i = 0;
	    for (i = 0; i < vertices.Length; i++)
	    {
		    vertexIndices[i] = -1;
		    buffer1[i] = 0;
		    buffer2[i] = 0;
	    }
    
        // this will produce a list of indices that are sorted the way I need them to 
        // be for the algo to work right
	    for (i = 0; i < vertices.Length; i++) {
		    float column = ((vertices[i].x - bounds.min.x)/xStep);// + 0.5;
		    float row = ((vertices[i].z - bounds.min.z)/zStep);// + 0.5;
		    float position = (row * (cols + 1)) + column + 0.5f;
            if (vertexIndices[(int)position] >= 0) print ("smash");
		    vertexIndices[(int)position] = i;	
	    }

        //SplashAtPoint(cols / 2, rows / 2);
    }


    void SplashAtPoint(int x, int y)
    {
	    int position = ((y * (cols + 1)) + x);
	    buffer1[position] = splashForce;
        buffer1[position - 1] = splashForce;
	    buffer1[position + 1] = splashForce;
	    buffer1[position + (cols + 1)] = splashForce;
	    buffer1[position + (cols + 1) + 1] = splashForce;
	    buffer1[position + (cols + 1) - 1] = splashForce;
	    buffer1[position - (cols + 1)] = splashForce;
	    buffer1[position - (cols + 1) + 1] = splashForce;
	    buffer1[position - (cols + 1) - 1] = splashForce;
    }


    // Update is called once per frame
    void Update()
    {
        //CheckInput();

        timeSinceLastAudio += Time.deltaTime;

        int[] currentBuffer;
        if (swapMe)
        {
            // process the ripples for this frame
            ProcessRipples(buffer1, buffer2);
            currentBuffer = buffer2;
        }
        else
        {
            ProcessRipples(buffer2, buffer1);
            currentBuffer = buffer1;
        }
        swapMe = !swapMe;

        // apply the ripples to our buffer
        Vector3[] theseVertices = new Vector3[vertices.Length];
        int vertIndex;
        int i = 0;
        for (i = 0; i < currentBuffer.Length; i++)
        {
            vertIndex = vertexIndices[i];
            theseVertices[vertIndex] = vertices[vertIndex];
            theseVertices[vertIndex].y += (currentBuffer[i] * 1.0f / splashForce) * maxWaveHeight;
        }
        mesh.vertices = theseVertices;

        // swap buffers		
    }


    void CheckInput()
    {	
        if (Input.GetMouseButton (0))
        {
	        RaycastHit hit;
	        if (Physics.Raycast (Camera.main.ScreenPointToRay(Input.mousePosition), out hit, 50f, 1 << 4))
            {
                if (hit.textureCoord.x == 0 || hit.textureCoord.y == 0) return;
                Debug.DrawRay(hit.point, Vector3.right * 100);
                Debug.Log("splash");
    	        Bounds bounds = mesh.bounds;
    	        float xStep = (bounds.max.x - bounds.min.x)/cols;
                float zStep = (bounds.max.z - bounds.min.z)/rows;
    	        float xCoord = (bounds.max.x - bounds.min.x) - ((bounds.max.x - bounds.min.x) * hit.textureCoord.x);
    	        float zCoord = (bounds.max.z - bounds.min.z) - ((bounds.max.z - bounds.min.z) * hit.textureCoord.y);
    	        float column = (xCoord/xStep);// + 0.5;
		        float row = (zCoord/zStep);// + 0.5;
	            SplashAtPoint((int)column,(int)row);
            }
        }
    }


    private void OnTriggerStay (Collider other)
    {
        if (other.name == "Foot Cube")
        {
            RaycastHit hit;
            Debug.DrawRay(new Vector3(other.ClosestPointOnBounds(transform.position).x, other.ClosestPointOnBounds(transform.position).y + 0.5f, other.ClosestPointOnBounds(transform.position).z),
                Vector3.down, Color.red);

            if (Physics.Raycast(new Vector3(other.ClosestPointOnBounds(transform.position).x, other.ClosestPointOnBounds(transform.position).y + 0.5f, other.ClosestPointOnBounds(transform.position).z),
                Vector3.down, out hit, 5f, 1 << 4))
            //if (Physics.Raycast(Camera.main.ScreenPointToRay(other.ClosestPointOnBounds(Camera.main.WorldToScreenPoint(transform.position))), out hit, 5f, 1<<4))
            {
                Debug.Log("foot splash " + hit.textureCoord + ", " + hit.collider.name);
                Debug.DrawRay(hit.point, Vector3.right * 100);
                //if (hit.textureCoord.x == 0 || hit.textureCoord.y == 0) return;
                if (timeSinceLastAudio >= audioCooldown)
                {
                    Instantiate(waterSwishAudioPrefab, hit.point, Quaternion.identity);
                    timeSinceLastAudio = 0f;
                }

                Bounds bounds = mesh.bounds;
                float xStep = (bounds.max.x - bounds.min.x) / cols;
                float zStep = (bounds.max.z - bounds.min.z) / rows;
                float xCoord = (bounds.max.x - bounds.min.x) - ((bounds.max.x - bounds.min.x) * hit.textureCoord.x);
                float zCoord = (bounds.max.z - bounds.min.z) - ((bounds.max.z - bounds.min.z) * hit.textureCoord.y);
                float column = (xCoord / xStep);// + 0.5;
                float row = (zCoord / zStep);// + 0.5;
                SplashAtPoint((int)column, (int)row);
            }

        }
    }


    void ProcessRipples(int[] source, int[] dest)
    {
	    int x = 0;
	    int y  = 0;
	    int position = 0;

	    for ( y = 1; y < rows - 1; y ++)
        {
		    for ( x = 1; x < cols ; x ++)
            {
			    position = (y * (cols + 1)) + x;
			    dest [position] = (((source[position - 1] + 
								     source[position + 1] + 
								     source[position - (cols + 1)] + 
								     source[position + (cols + 1)]) >> 1) - dest[position]);  
		       dest[position] = (int)(dest[position] * dampner);
		    }			
	    }	
    }
}

