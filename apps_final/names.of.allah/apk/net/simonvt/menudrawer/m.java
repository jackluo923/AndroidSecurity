package net.simonvt.menudrawer;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver.OnScrollChangedListener;

final class m
  implements ViewTreeObserver.OnScrollChangedListener
{
  m(MenuDrawer paramMenuDrawer) {}
  
  public final void onScrollChanged()
  {
    if ((a.z != null) && (a.a(a.z)))
    {
      a.z.getDrawingRect(MenuDrawer.b(a));
      a.offsetDescendantRectToMyCoords(a.z, MenuDrawer.b(a));
      if ((ba).left != a.B.left) || (ba).top != a.B.top) || (ba).right != a.B.right) || (ba).bottom != a.B.bottom)) {
        a.invalidate();
      }
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */