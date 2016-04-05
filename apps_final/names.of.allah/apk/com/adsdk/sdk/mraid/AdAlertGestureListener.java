package com.adsdk.sdk.mraid;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class AdAlertGestureListener
  extends GestureDetector.SimpleOnGestureListener
{
  private static final float MAXIMUM_THRESHOLD_X_IN_DIPS = 100.0F;
  private static final float MAXIMUM_THRESHOLD_Y_IN_DIPS = 50.0F;
  private static final int MINIMUM_NUMBER_OF_ZIGZAGS_TO_FLAG = 4;
  private float mCurrentThresholdInDips = 100.0F;
  private AdAlertGestureListener.ZigZagState mCurrentZigZagState = AdAlertGestureListener.ZigZagState.UNSET;
  private boolean mHasCrossedLeftThreshold;
  private boolean mHasCrossedRightThreshold;
  private int mNumberOfZigZags;
  private float mPivotPositionX;
  private float mPreviousPositionX;
  
  AdAlertGestureListener(View paramView)
  {
    if ((paramView != null) && (paramView.getWidth() > 0)) {
      mCurrentThresholdInDips = Math.min(100.0F, paramView.getWidth() / 3.0F);
    }
  }
  
  private void incrementNumberOfZigZags()
  {
    mNumberOfZigZags += 1;
    if (mNumberOfZigZags >= 4) {
      mCurrentZigZagState = AdAlertGestureListener.ZigZagState.FINISHED;
    }
  }
  
  private boolean isMovingLeft(float paramFloat)
  {
    return paramFloat < mPreviousPositionX;
  }
  
  private boolean isMovingRight(float paramFloat)
  {
    return paramFloat > mPreviousPositionX;
  }
  
  private boolean isTouchOutOfBoundsOnYAxis(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat2 - paramFloat1) > 50.0F;
  }
  
  private boolean leftThresholdReached(float paramFloat)
  {
    if (mHasCrossedLeftThreshold) {
      return true;
    }
    if (paramFloat <= mPivotPositionX - mCurrentThresholdInDips)
    {
      mHasCrossedRightThreshold = false;
      mHasCrossedLeftThreshold = true;
      incrementNumberOfZigZags();
      return true;
    }
    return false;
  }
  
  private boolean rightThresholdReached(float paramFloat)
  {
    if (mHasCrossedRightThreshold) {
      return true;
    }
    if (paramFloat >= mPivotPositionX + mCurrentThresholdInDips)
    {
      mHasCrossedLeftThreshold = false;
      mHasCrossedRightThreshold = true;
      return true;
    }
    return false;
  }
  
  private void updateInitialState(float paramFloat)
  {
    if (paramFloat > mPivotPositionX) {
      mCurrentZigZagState = AdAlertGestureListener.ZigZagState.GOING_RIGHT;
    }
  }
  
  private void updateZag(float paramFloat)
  {
    if ((leftThresholdReached(paramFloat)) && (isMovingRight(paramFloat)))
    {
      mCurrentZigZagState = AdAlertGestureListener.ZigZagState.GOING_RIGHT;
      mPivotPositionX = paramFloat;
    }
  }
  
  private void updateZig(float paramFloat)
  {
    if ((rightThresholdReached(paramFloat)) && (isMovingLeft(paramFloat)))
    {
      mCurrentZigZagState = AdAlertGestureListener.ZigZagState.GOING_LEFT;
      mPivotPositionX = paramFloat;
    }
  }
  
  void finishGestureDetection()
  {
    reset();
  }
  
  @Deprecated
  AdAlertGestureListener.ZigZagState getCurrentZigZagState()
  {
    return mCurrentZigZagState;
  }
  
  @Deprecated
  float getMinimumDipsInZigZag()
  {
    return mCurrentThresholdInDips;
  }
  
  @Deprecated
  int getNumberOfZigzags()
  {
    return mNumberOfZigZags;
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (mCurrentZigZagState == AdAlertGestureListener.ZigZagState.FINISHED) {
      return super.onScroll(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
    }
    if (isTouchOutOfBoundsOnYAxis(paramMotionEvent1.getY(), paramMotionEvent2.getY()))
    {
      mCurrentZigZagState = AdAlertGestureListener.ZigZagState.FAILED;
      return super.onScroll(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
    }
    switch (mCurrentZigZagState)
    {
    }
    for (;;)
    {
      mPreviousPositionX = paramMotionEvent2.getX();
      return super.onScroll(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
      mPivotPositionX = paramMotionEvent1.getX();
      updateInitialState(paramMotionEvent2.getX());
      continue;
      updateZig(paramMotionEvent2.getX());
      continue;
      updateZag(paramMotionEvent2.getX());
    }
  }
  
  void reset()
  {
    mNumberOfZigZags = 0;
    mCurrentZigZagState = AdAlertGestureListener.ZigZagState.UNSET;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.AdAlertGestureListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */