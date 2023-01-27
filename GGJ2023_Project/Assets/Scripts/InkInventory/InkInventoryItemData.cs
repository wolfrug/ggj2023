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

    private string m_stackVariableSuffix = "_stack"; // if an item is stackable, this would be the name of the variable containing the stack, e.g. "Test_stack"

    public int Stack {
        get {
            return m_currentStack;
        }
        set {
            m_currentStack = Mathf.Clamp (value, 0, m_maxStack);
        }
    }

    public void UpdateStackFromInk () { // update stack from ink
        if (m_maxStack > 1) { // we don't bother even trying if maxstack is less than 1
            if (InkEngine.InkStoryStateManager.m_staticStoryObject != null) {
                int stackVariable = (int) InkEngine.InkStoryStateManager.m_staticStoryObject.m_inkStory.variablesState[m_id + m_stackVariableSuffix];
                Stack = stackVariable;
            }
        }
    }
    public void UpdateStackToInk () { // update ink variable with current stack
        if (m_maxStack > 1) { // we don't bother even trying if maxstack is just 1
            if (InkEngine.InkStoryStateManager.m_staticStoryObject != null) {
                InkEngine.InkStoryStateManager.m_staticStoryObject.m_inkStory.variablesState[m_id + m_stackVariableSuffix] = Stack;
            }
        }
    }
}