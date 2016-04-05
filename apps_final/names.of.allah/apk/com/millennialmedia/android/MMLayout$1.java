package com.millennialmedia.android;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class MMLayout$1
  extends GestureDetector.SimpleOnGestureListener
{
  MMLayout$1(MMLayout paramMMLayout) {}
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((paramMotionEvent1 == null) || (paramMotionEvent2 == null)) {}
    while ((Math.abs((int)(paramMotionEvent2.getX() - paramMotionEvent1.getX())) <= 200) || (Math.abs(paramFloat1) <= Math.abs(paramFloat2))) {
      return false;
    }
    if (paramFloat1 > 0.0F) {
      if (MMSDK.logLevel == 0)
      {
        MMSDK.Log.i("Enabling debug and verbose logging.");
        MMSDK.logLevel = 3;
      }
    }
    for (;;)
    {
      return true;
      MMSDK.Log.i("Disabling debug and verbose logging.");
      MMSDK.logLevel = 0;
      continue;
      MMSDK.printDiagnostics(this$0.adImpl);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */