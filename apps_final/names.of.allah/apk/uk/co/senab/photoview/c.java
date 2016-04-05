package uk.co.senab.photoview;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import java.lang.ref.WeakReference;

final class c
  extends GestureDetector.SimpleOnGestureListener
{
  c(b paramb) {}
  
  public final void onLongPress(MotionEvent paramMotionEvent)
  {
    if (b.a(a) != null) {
      b.a(a).onLongClick((View)b.b(a).get());
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */