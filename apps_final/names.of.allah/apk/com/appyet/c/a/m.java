package com.appyet.c.a;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebView;

final class m
  implements View.OnTouchListener
{
  m(l paraml) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!l.a(a).isVerticalScrollBarEnabled()) {
      l.a(a).setVerticalScrollBarEnabled(true);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */