package uk.co.senab.photoview;

import android.content.Context;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

class n
  extends m
{
  float b;
  float c;
  final float d;
  final float e;
  private VelocityTracker f;
  private boolean g;
  
  public n(Context paramContext)
  {
    paramContext = ViewConfiguration.get(paramContext);
    e = paramContext.getScaledMinimumFlingVelocity();
    d = paramContext.getScaledTouchSlop();
  }
  
  public boolean a()
  {
    return false;
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    switch (paramMotionEvent.getAction())
    {
    }
    do
    {
      float f1;
      float f2;
      do
      {
        do
        {
          float f3;
          float f4;
          do
          {
            return true;
            f = VelocityTracker.obtain();
            f.addMovement(paramMotionEvent);
            b = b(paramMotionEvent);
            c = c(paramMotionEvent);
            g = false;
            return true;
            f1 = b(paramMotionEvent);
            f2 = c(paramMotionEvent);
            f3 = f1 - b;
            f4 = f2 - c;
            if (!g)
            {
              if (FloatMath.sqrt(f3 * f3 + f4 * f4) >= d) {
                bool = true;
              }
              g = bool;
            }
          } while (!g);
          a.a(f3, f4);
          b = f1;
          c = f2;
        } while (f == null);
        f.addMovement(paramMotionEvent);
        return true;
      } while (f == null);
      f.recycle();
      f = null;
      return true;
      if ((g) && (f != null))
      {
        b = b(paramMotionEvent);
        c = c(paramMotionEvent);
        f.addMovement(paramMotionEvent);
        f.computeCurrentVelocity(1000);
        f1 = f.getXVelocity();
        f2 = f.getYVelocity();
        if (Math.max(Math.abs(f1), Math.abs(f2)) >= e) {
          a.a(b, c, -f1, -f2);
        }
      }
    } while (f == null);
    f.recycle();
    f = null;
    return true;
  }
  
  float b(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getX();
  }
  
  float c(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getY();
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */