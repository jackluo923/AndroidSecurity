package uk.co.senab.a.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class d
  extends AnimatorListenerAdapter
{
  d(c paramc) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = a.b;
    if (paramAnimator != null) {
      paramAnimator.setVisibility(8);
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */