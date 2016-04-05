package com.appyet.c;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebView;

final class l
  implements View.OnTouchListener
{
  l(k paramk) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!k.a(a).isVerticalScrollBarEnabled()) {
      k.a(a).setVerticalScrollBarEnabled(true);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */