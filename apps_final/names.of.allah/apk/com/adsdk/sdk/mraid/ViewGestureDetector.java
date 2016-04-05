package com.adsdk.sdk.mraid;

import android.content.Context;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

public class ViewGestureDetector
  extends GestureDetector
{
  private AdAlertGestureListener mAdAlertGestureListener;
  private ViewGestureDetector.UserClickListener mUserClickListener;
  private final View mView;
  
  public ViewGestureDetector(Context paramContext, View paramView)
  {
    this(paramContext, paramView, new AdAlertGestureListener(paramView));
  }
  
  private ViewGestureDetector(Context paramContext, View paramView, AdAlertGestureListener paramAdAlertGestureListener)
  {
    super(paramContext, paramAdAlertGestureListener);
    mAdAlertGestureListener = paramAdAlertGestureListener;
    mView = paramView;
    setIsLongpressEnabled(false);
  }
  
  private boolean isMotionEventInView(MotionEvent paramMotionEvent, View paramView)
  {
    if ((paramMotionEvent == null) || (paramView == null)) {}
    float f1;
    float f2;
    do
    {
      return false;
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
    } while ((f1 < 0.0F) || (f1 > paramView.getWidth()) || (f2 < 0.0F) || (f2 > paramView.getHeight()));
    return true;
  }
  
  void resetAdFlaggingGesture()
  {
    mAdAlertGestureListener.reset();
  }
  
  void sendTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return;
    case 1: 
      if (mUserClickListener != null) {
        mUserClickListener.onUserClick();
      }
      for (;;)
      {
        mAdAlertGestureListener.finishGestureDetection();
        return;
        Log.d("MoPub", "View's onUserClick() is not registered.");
      }
    case 0: 
      onTouchEvent(paramMotionEvent);
      return;
    }
    if (isMotionEventInView(paramMotionEvent, mView))
    {
      onTouchEvent(paramMotionEvent);
      return;
    }
    resetAdFlaggingGesture();
  }
  
  @Deprecated
  void setAdAlertGestureListener(AdAlertGestureListener paramAdAlertGestureListener)
  {
    mAdAlertGestureListener = paramAdAlertGestureListener;
  }
  
  void setUserClickListener(ViewGestureDetector.UserClickListener paramUserClickListener)
  {
    mUserClickListener = paramUserClickListener;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.ViewGestureDetector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */