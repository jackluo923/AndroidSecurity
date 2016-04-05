package uk.co.senab.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;

@TargetApi(5)
class o
  extends n
{
  private int f = -1;
  private int g = 0;
  
  public o(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    int j = 0;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    do
    {
      for (;;)
      {
        i = j;
        if (f != -1) {
          i = f;
        }
        g = paramMotionEvent.findPointerIndex(i);
        return super.a(paramMotionEvent);
        f = paramMotionEvent.getPointerId(0);
        continue;
        f = -1;
      }
      i = (paramMotionEvent.getAction() & 0xFF00) >> 8;
    } while (paramMotionEvent.getPointerId(i) != f);
    if (i == 0) {}
    for (int i = 1;; i = 0)
    {
      f = paramMotionEvent.getPointerId(i);
      b = paramMotionEvent.getX(i);
      c = paramMotionEvent.getY(i);
      break;
    }
  }
  
  final float b(MotionEvent paramMotionEvent)
  {
    try
    {
      float f1 = paramMotionEvent.getX(g);
      return f1;
    }
    catch (Exception localException) {}
    return paramMotionEvent.getX();
  }
  
  final float c(MotionEvent paramMotionEvent)
  {
    try
    {
      float f1 = paramMotionEvent.getY(g);
      return f1;
    }
    catch (Exception localException) {}
    return paramMotionEvent.getY();
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */