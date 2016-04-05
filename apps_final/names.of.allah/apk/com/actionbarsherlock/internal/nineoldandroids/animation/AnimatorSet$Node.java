package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$Node
  implements Cloneable
{
  public Animator animation;
  public ArrayList<AnimatorSet.Dependency> dependencies = null;
  public boolean done = false;
  public ArrayList<Node> nodeDependencies = null;
  public ArrayList<Node> nodeDependents = null;
  public ArrayList<AnimatorSet.Dependency> tmpDependencies = null;
  
  public AnimatorSet$Node(Animator paramAnimator)
  {
    animation = paramAnimator;
  }
  
  public void addDependency(AnimatorSet.Dependency paramDependency)
  {
    if (dependencies == null)
    {
      dependencies = new ArrayList();
      nodeDependencies = new ArrayList();
    }
    dependencies.add(paramDependency);
    if (!nodeDependencies.contains(node)) {
      nodeDependencies.add(node);
    }
    paramDependency = node;
    if (nodeDependents == null) {
      nodeDependents = new ArrayList();
    }
    nodeDependents.add(this);
  }
  
  public Node clone()
  {
    try
    {
      Node localNode = (Node)super.clone();
      animation = animation.clone();
      return localNode;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */