using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(CeilingLightPlacer))]
public class CeilingLightPlacerEditor : Editor {

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        CeilingLightPlacer targetScript = target as CeilingLightPlacer;

        if (GUILayout.Button("Place lights"))
        {
            targetScript.PlaceLights();
        }
    }
}
