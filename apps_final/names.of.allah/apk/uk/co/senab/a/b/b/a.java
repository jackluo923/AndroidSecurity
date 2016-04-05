package uk.co.senab.a.b.b;

import android.os.Build.VERSION;
import android.view.View;
import android.widget.AbsListView;

public class a
  implements c
{
  public static final Class[] a = { AbsListView.class };
  
  public final boolean a(View paramView, float paramFloat)
  {
    boolean bool3 = true;
    paramView = (AbsListView)paramView;
    boolean bool1;
    if (paramView.getCount() == 0) {
      bool1 = true;
    }
    for (;;)
    {
      boolean bool2;
      label44:
      int i;
      if ((bool1) && (paramView.isFastScrollEnabled()))
      {
        if (Build.VERSION.SDK_INT < 11) {
          break label127;
        }
        bool2 = paramView.isFastScrollAlwaysVisible();
        if (bool2)
        {
          if (Build.VERSION.SDK_INT < 11) {
            break label133;
          }
          i = paramView.getVerticalScrollbarPosition();
          label63:
          switch (i)
          {
          }
        }
      }
      label127:
      label133:
      do
      {
        do
        {
          return bool1;
          if (paramView.getFirstVisiblePosition() != 0) {
            break label176;
          }
          View localView = paramView.getChildAt(0);
          if ((localView != null) && (localView.getTop() >= 0))
          {
            bool1 = true;
            break;
          }
          bool1 = false;
          break;
          bool2 = false;
          break label44;
          i = 2;
          break label63;
          bool1 = bool3;
        } while (paramFloat < paramView.getRight() - paramView.getVerticalScrollbarWidth());
        return false;
        bool1 = bool3;
      } while (paramFloat > paramView.getVerticalScrollbarWidth());
      return false;
      label176:
      bool1 = false;
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */