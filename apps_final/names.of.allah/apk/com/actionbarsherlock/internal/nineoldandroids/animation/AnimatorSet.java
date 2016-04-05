package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class AnimatorSet
  extends Animator
{
  private ValueAnimator mDelayAnim = null;
  private long mDuration = -1L;
  private boolean mNeedsSort = true;
  private HashMap<Animator, AnimatorSet.Node> mNodeMap = new HashMap();
  private ArrayList<AnimatorSet.Node> mNodes = new ArrayList();
  private ArrayList<Animator> mPlayingSet = new ArrayList();
  private AnimatorSet.AnimatorSetListener mSetListener = null;
  private ArrayList<AnimatorSet.Node> mSortedNodes = new ArrayList();
  private long mStartDelay = 0L;
  private boolean mStarted = false;
  boolean mTerminated = false;
  
  private void sortNodes()
  {
    Object localObject1;
    int j;
    int i;
    Object localObject2;
    int k;
    int m;
    if (mNeedsSort)
    {
      mSortedNodes.clear();
      localObject1 = new ArrayList();
      j = mNodes.size();
      i = 0;
      while (i < j)
      {
        localObject2 = (AnimatorSet.Node)mNodes.get(i);
        if ((dependencies == null) || (dependencies.size() == 0)) {
          ((ArrayList)localObject1).add(localObject2);
        }
        i += 1;
      }
      localObject2 = new ArrayList();
      while (((ArrayList)localObject1).size() > 0)
      {
        k = ((ArrayList)localObject1).size();
        i = 0;
        while (i < k)
        {
          AnimatorSet.Node localNode1 = (AnimatorSet.Node)((ArrayList)localObject1).get(i);
          mSortedNodes.add(localNode1);
          if (nodeDependents != null)
          {
            m = nodeDependents.size();
            j = 0;
            while (j < m)
            {
              AnimatorSet.Node localNode2 = (AnimatorSet.Node)nodeDependents.get(j);
              nodeDependencies.remove(localNode1);
              if (nodeDependencies.size() == 0) {
                ((ArrayList)localObject2).add(localNode2);
              }
              j += 1;
            }
          }
          i += 1;
        }
        ((ArrayList)localObject1).clear();
        ((ArrayList)localObject1).addAll((Collection)localObject2);
        ((ArrayList)localObject2).clear();
      }
      mNeedsSort = false;
      if (mSortedNodes.size() != mNodes.size()) {
        throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
      }
    }
    else
    {
      k = mNodes.size();
      i = 0;
      while (i < k)
      {
        localObject1 = (AnimatorSet.Node)mNodes.get(i);
        if ((dependencies != null) && (dependencies.size() > 0))
        {
          m = dependencies.size();
          j = 0;
          while (j < m)
          {
            localObject2 = (AnimatorSet.Dependency)dependencies.get(j);
            if (nodeDependencies == null) {
              nodeDependencies = new ArrayList();
            }
            if (!nodeDependencies.contains(node)) {
              nodeDependencies.add(node);
            }
            j += 1;
          }
        }
        done = false;
        i += 1;
      }
    }
  }
  
  public final void cancel()
  {
    mTerminated = true;
    Object localObject;
    Iterator localIterator;
    if (isStarted())
    {
      if (mListeners == null) {
        break label173;
      }
      localObject = (ArrayList)mListeners.clone();
      localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext()) {
        ((Animator.AnimatorListener)localIterator.next()).onAnimationCancel(this);
      }
    }
    for (;;)
    {
      if ((mDelayAnim != null) && (mDelayAnim.isRunning())) {
        mDelayAnim.cancel();
      }
      while (localObject != null)
      {
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((Animator.AnimatorListener)((Iterator)localObject).next()).onAnimationEnd(this);
        }
        if (mSortedNodes.size() > 0)
        {
          localIterator = mSortedNodes.iterator();
          while (localIterator.hasNext()) {
            nextanimation.cancel();
          }
        }
      }
      mStarted = false;
      return;
      label173:
      localObject = null;
    }
  }
  
  public final AnimatorSet clone()
  {
    AnimatorSet localAnimatorSet = (AnimatorSet)super.clone();
    mNeedsSort = true;
    mTerminated = false;
    mStarted = false;
    mPlayingSet = new ArrayList();
    mNodeMap = new HashMap();
    mNodes = new ArrayList();
    mSortedNodes = new ArrayList();
    HashMap localHashMap = new HashMap();
    Object localObject3 = mNodes.iterator();
    Object localObject2;
    Object localObject4;
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = (AnimatorSet.Node)((Iterator)localObject3).next();
      localObject2 = ((AnimatorSet.Node)localObject1).clone();
      localHashMap.put(localObject1, localObject2);
      mNodes.add(localObject2);
      mNodeMap.put(animation, localObject2);
      dependencies = null;
      tmpDependencies = null;
      nodeDependents = null;
      nodeDependencies = null;
      localObject4 = animation.getListeners();
      if (localObject4 != null)
      {
        Iterator localIterator = ((ArrayList)localObject4).iterator();
        localObject1 = null;
        while (localIterator.hasNext())
        {
          Animator.AnimatorListener localAnimatorListener = (Animator.AnimatorListener)localIterator.next();
          if ((localAnimatorListener instanceof AnimatorSet.AnimatorSetListener))
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localAnimatorListener);
            localObject1 = localObject2;
          }
        }
        if (localObject1 != null)
        {
          localObject1 = ((ArrayList)localObject1).iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((ArrayList)localObject4).remove((Animator.AnimatorListener)((Iterator)localObject1).next());
          }
        }
      }
    }
    Object localObject1 = mNodes.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (AnimatorSet.Node)((Iterator)localObject1).next();
      localObject2 = (AnimatorSet.Node)localHashMap.get(localObject3);
      if (dependencies != null)
      {
        localObject3 = dependencies.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (AnimatorSet.Dependency)((Iterator)localObject3).next();
          ((AnimatorSet.Node)localObject2).addDependency(new AnimatorSet.Dependency((AnimatorSet.Node)localHashMap.get(node), rule));
        }
      }
    }
    return localAnimatorSet;
  }
  
  public final void end()
  {
    mTerminated = true;
    if (isStarted())
    {
      Iterator localIterator;
      if (mSortedNodes.size() != mNodes.size())
      {
        sortNodes();
        localIterator = mSortedNodes.iterator();
        while (localIterator.hasNext())
        {
          AnimatorSet.Node localNode = (AnimatorSet.Node)localIterator.next();
          if (mSetListener == null) {
            mSetListener = new AnimatorSet.AnimatorSetListener(this, this);
          }
          animation.addListener(mSetListener);
        }
      }
      if (mDelayAnim != null) {
        mDelayAnim.cancel();
      }
      if (mSortedNodes.size() > 0)
      {
        localIterator = mSortedNodes.iterator();
        while (localIterator.hasNext()) {
          nextanimation.end();
        }
      }
      if (mListeners != null)
      {
        localIterator = ((ArrayList)mListeners.clone()).iterator();
        while (localIterator.hasNext()) {
          ((Animator.AnimatorListener)localIterator.next()).onAnimationEnd(this);
        }
      }
      mStarted = false;
    }
  }
  
  public final ArrayList<Animator> getChildAnimations()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(nextanimation);
    }
    return localArrayList;
  }
  
  public final long getDuration()
  {
    return mDuration;
  }
  
  public final long getStartDelay()
  {
    return mStartDelay;
  }
  
  public final boolean isRunning()
  {
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext()) {
      if (nextanimation.isRunning()) {
        return true;
      }
    }
    return false;
  }
  
  public final boolean isStarted()
  {
    return mStarted;
  }
  
  public final AnimatorSet.Builder play(Animator paramAnimator)
  {
    if (paramAnimator != null)
    {
      mNeedsSort = true;
      return new AnimatorSet.Builder(this, paramAnimator);
    }
    return null;
  }
  
  public final void playSequentially(List<Animator> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      mNeedsSort = true;
      if (paramList.size() != 1) {
        break label44;
      }
      play((Animator)paramList.get(0));
    }
    for (;;)
    {
      return;
      label44:
      int i = 0;
      while (i < paramList.size() - 1)
      {
        play((Animator)paramList.get(i)).before((Animator)paramList.get(i + 1));
        i += 1;
      }
    }
  }
  
  public final void playSequentially(Animator... paramVarArgs)
  {
    int i = 0;
    if (paramVarArgs != null)
    {
      mNeedsSort = true;
      if (paramVarArgs.length != 1) {
        break label26;
      }
      play(paramVarArgs[0]);
    }
    for (;;)
    {
      return;
      label26:
      while (i < paramVarArgs.length - 1)
      {
        play(paramVarArgs[i]).before(paramVarArgs[(i + 1)]);
        i += 1;
      }
    }
  }
  
  public final void playTogether(Collection<Animator> paramCollection)
  {
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      mNeedsSort = true;
      Iterator localIterator = paramCollection.iterator();
      paramCollection = null;
      while (localIterator.hasNext())
      {
        Animator localAnimator = (Animator)localIterator.next();
        if (paramCollection == null) {
          paramCollection = play(localAnimator);
        } else {
          paramCollection.with(localAnimator);
        }
      }
    }
  }
  
  public final void playTogether(Animator... paramVarArgs)
  {
    int i = 1;
    if (paramVarArgs != null)
    {
      mNeedsSort = true;
      AnimatorSet.Builder localBuilder = play(paramVarArgs[0]);
      while (i < paramVarArgs.length)
      {
        localBuilder.with(paramVarArgs[i]);
        i += 1;
      }
    }
  }
  
  public final AnimatorSet setDuration(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("duration must be a value of zero or greater");
    }
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext()) {
      nextanimation.setDuration(paramLong);
    }
    mDuration = paramLong;
    return this;
  }
  
  public final void setInterpolator(Interpolator paramInterpolator)
  {
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext()) {
      nextanimation.setInterpolator(paramInterpolator);
    }
  }
  
  public final void setStartDelay(long paramLong)
  {
    mStartDelay = paramLong;
  }
  
  public final void setTarget(Object paramObject)
  {
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext())
    {
      Animator localAnimator = nextanimation;
      if ((localAnimator instanceof AnimatorSet)) {
        ((AnimatorSet)localAnimator).setTarget(paramObject);
      } else if ((localAnimator instanceof ObjectAnimator)) {
        ((ObjectAnimator)localAnimator).setTarget(paramObject);
      }
    }
  }
  
  public final void setupEndValues()
  {
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext()) {
      nextanimation.setupEndValues();
    }
  }
  
  public final void setupStartValues()
  {
    Iterator localIterator = mNodes.iterator();
    while (localIterator.hasNext()) {
      nextanimation.setupStartValues();
    }
  }
  
  public final void start()
  {
    int k = 0;
    mTerminated = false;
    mStarted = true;
    sortNodes();
    int m = mSortedNodes.size();
    int i = 0;
    Object localObject2;
    Object localObject3;
    while (i < m)
    {
      localObject1 = (AnimatorSet.Node)mSortedNodes.get(i);
      localObject2 = animation.getListeners();
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
      {
        localObject2 = new ArrayList((Collection)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Animator.AnimatorListener)((Iterator)localObject2).next();
          if (((localObject3 instanceof AnimatorSet.DependencyListener)) || ((localObject3 instanceof AnimatorSet.AnimatorSetListener))) {
            animation.removeListener((Animator.AnimatorListener)localObject3);
          }
        }
      }
      i += 1;
    }
    Object localObject1 = new ArrayList();
    i = 0;
    int j;
    if (i < m)
    {
      localObject2 = (AnimatorSet.Node)mSortedNodes.get(i);
      if (mSetListener == null) {
        mSetListener = new AnimatorSet.AnimatorSetListener(this, this);
      }
      if ((dependencies == null) || (dependencies.size() == 0)) {
        ((ArrayList)localObject1).add(localObject2);
      }
      for (;;)
      {
        animation.addListener(mSetListener);
        i += 1;
        break;
        int n = dependencies.size();
        j = 0;
        while (j < n)
        {
          localObject3 = (AnimatorSet.Dependency)dependencies.get(j);
          node.animation.addListener(new AnimatorSet.DependencyListener(this, (AnimatorSet.Node)localObject2, rule));
          j += 1;
        }
        tmpDependencies = ((ArrayList)dependencies.clone());
      }
    }
    if (mStartDelay <= 0L)
    {
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (AnimatorSet.Node)((Iterator)localObject1).next();
        animation.start();
        mPlayingSet.add(animation);
      }
    }
    mDelayAnim = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    mDelayAnim.setDuration(mStartDelay);
    mDelayAnim.addListener(new AnimatorSet.1(this, (ArrayList)localObject1));
    mDelayAnim.start();
    if (mListeners != null)
    {
      localObject1 = (ArrayList)mListeners.clone();
      j = ((ArrayList)localObject1).size();
      i = 0;
      while (i < j)
      {
        ((Animator.AnimatorListener)((ArrayList)localObject1).get(i)).onAnimationStart(this);
        i += 1;
      }
    }
    if ((mNodes.size() == 0) && (mStartDelay == 0L))
    {
      mStarted = false;
      if (mListeners != null)
      {
        localObject1 = (ArrayList)mListeners.clone();
        j = ((ArrayList)localObject1).size();
        i = k;
        while (i < j)
        {
          ((Animator.AnimatorListener)((ArrayList)localObject1).get(i)).onAnimationEnd(this);
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */