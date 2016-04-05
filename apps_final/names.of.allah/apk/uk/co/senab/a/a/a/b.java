package uk.co.senab.a.a.a;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import uk.co.senab.a.b.c;

final class b
  implements Animation.AnimationListener
{
  b(a parama) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (paramAnimation == a.a)
    {
      paramAnimation = a.b;
      if (paramAnimation != null) {
        paramAnimation.setVisibility(8);
      }
      a.e();
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     uk.co.senab.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */