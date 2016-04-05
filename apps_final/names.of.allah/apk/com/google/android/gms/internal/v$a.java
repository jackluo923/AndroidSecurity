package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.ViewSwitcher;

final class v$a
  extends ViewSwitcher
{
  private final eq kG;
  
  public v$a(Context paramContext)
  {
    super(paramContext);
    kG = new eq(paramContext);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    kG.c(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */