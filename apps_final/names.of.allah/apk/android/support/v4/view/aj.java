package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class aj
  extends ai
{
  final long a()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public final void a(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
  
  public void a(View paramView, Paint paramPaint)
  {
    paramView.setLayerType(paramView.getLayerType(), paramPaint);
    paramView.invalidate();
  }
  
  public final int d(View paramView)
  {
    return paramView.getLayerType();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */