package uk.co.senab.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;

@TargetApi(8)
final class p
  extends o
{
  private final ScaleGestureDetector f = new ScaleGestureDetector(paramContext, g);
  private final ScaleGestureDetector.OnScaleGestureListener g = new q(this);
  
  public p(Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean a()
  {
    return f.isInProgress();
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    f.onTouchEvent(paramMotionEvent);
    return super.a(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */