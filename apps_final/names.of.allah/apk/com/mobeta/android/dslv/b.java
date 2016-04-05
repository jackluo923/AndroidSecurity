package com.mobeta.android.dslv;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class b
  extends GestureDetector.SimpleOnGestureListener
{
  b(a parama) {}
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i;
    if ((a.a(a)) && (a.b(a)))
    {
      i = a.c(a).getWidth() / 5;
      if (paramFloat1 <= a.d(a)) {
        break label81;
      }
      if (a.e(a) > -i) {
        a.c(a).a(paramFloat1);
      }
    }
    for (;;)
    {
      a.f(a);
      return false;
      label81:
      if ((paramFloat1 < -a.d(a)) && (a.e(a) < i)) {
        a.c(a).a(paramFloat1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */