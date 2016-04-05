package com.inmobi.re.controller.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class AVPlayer$c
  implements View.OnTouchListener
{
  AVPlayer$c(AVPlayer paramAVPlayer) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getAction() == 2;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.util.AVPlayer.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */