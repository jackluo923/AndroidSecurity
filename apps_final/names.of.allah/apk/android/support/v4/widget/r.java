package android.support.v4.widget;

import android.support.v4.view.af;
import android.view.View;
import java.util.ArrayList;

final class r
  implements Runnable
{
  final View a;
  
  r(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    a = paramView;
  }
  
  public final void run()
  {
    if (a.getParent() == b)
    {
      af.a(a, 0, null);
      SlidingPaneLayout.a(b, a);
    }
    SlidingPaneLayout.a(b).remove(this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */