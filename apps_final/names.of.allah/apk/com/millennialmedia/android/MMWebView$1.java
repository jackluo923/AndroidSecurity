package com.millennialmedia.android;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class MMWebView$1
  implements View.OnTouchListener
{
  MMWebView$1(MMWebView paramMMWebView) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return (paramMotionEvent.getAction() == 2) && (MMWebView.access$000(this$0));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */