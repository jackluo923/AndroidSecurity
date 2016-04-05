package uk.co.senab.photoview;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;

final class q
  implements ScaleGestureDetector.OnScaleGestureListener
{
  q(p paramp) {}
  
  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    a.a.a(paramScaleGestureDetector.getScaleFactor(), paramScaleGestureDetector.getFocusX(), paramScaleGestureDetector.getFocusY());
    return true;
  }
  
  public final boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    return true;
  }
  
  public final void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector) {}
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */