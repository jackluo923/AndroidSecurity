package com.millennialmedia.android;

import android.content.Context;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class MMWebView$2
  extends GestureDetector.SimpleOnGestureListener
{
  MMWebView$2(MMWebView paramMMWebView, Context paramContext) {}
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    MMSDK.Event.overlayTap(val$context, this$0.creatorAdImplId);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */