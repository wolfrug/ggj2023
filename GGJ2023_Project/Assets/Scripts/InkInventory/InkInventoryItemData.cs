using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "Data", menuName = "InkEngine/Ink Inventory Item", order = 1)]
public class InkInventoryItemData : ScriptableObject {

    public string m_id;
    public string m_displayName;
    [NaughtyAttributes.ShowAssetPreview]
    public Sprite m_image;
    [Multiline]
    public string m_description;
    public int m_maxStack = 1;
    public GameObject m_prefab;
    private int m_currentStack = 1;

    public int Stack {
        get {
            return m_currentStack;
        }
        set {
            m_currentStack = value;
        }
    }

}