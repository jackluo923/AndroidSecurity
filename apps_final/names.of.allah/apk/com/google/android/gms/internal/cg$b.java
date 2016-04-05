package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

final class cg$b
  extends RelativeLayout
{
  private final eq kG;
  
  public cg$b(Context paramContext, String paramString)
  {
    super(paramContext);
    kG = new eq(paramContext, paramString);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    kG.c(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cg.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */