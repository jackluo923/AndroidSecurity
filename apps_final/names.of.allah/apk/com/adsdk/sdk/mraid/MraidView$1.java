package com.adsdk.sdk.mraid;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class MraidView$1
  implements View.OnTouchListener
{
  MraidView$1(MraidView paramMraidView) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    MraidView.access$5(this$0).sendTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return false;
      if (!paramView.hasFocus()) {
        paramView.requestFocus();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */