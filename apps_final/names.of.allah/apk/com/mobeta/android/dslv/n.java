package com.mobeta.android.dslv;

import android.graphics.Point;
import android.view.View;

final class n
  extends u
{
  private int e;
  private int f;
  private float g;
  private float h;
  
  public n(DragSortListView paramDragSortListView, int paramInt)
  {
    super(paramDragSortListView, paramInt);
  }
  
  private int d()
  {
    int i = a.getFirstVisiblePosition();
    int j = (DragSortListView.j(a) + a.getDividerHeight()) / 2;
    View localView = a.getChildAt(e - i);
    if (localView != null)
    {
      if (e == f) {
        return localView.getTop();
      }
      if (e < f) {
        return localView.getTop() - j;
      }
      return localView.getBottom() + j - DragSortListView.k(a);
    }
    c = true;
    return -1;
  }
  
  public final void a()
  {
    e = DragSortListView.h(a);
    f = DragSortListView.i(a);
    DragSortListView.b(a, 2);
    g = (ea).y - d());
    h = (ea).x - a.getPaddingLeft());
  }
  
  public final void a(float paramFloat)
  {
    int i = d();
    int j = a.getPaddingLeft();
    float f1 = ea).y - i;
    float f2 = ea).x - j;
    paramFloat = 1.0F - paramFloat;
    if ((paramFloat < Math.abs(f1 / g)) || (paramFloat < Math.abs(f2 / h)))
    {
      ea).y = (i + (int)(g * paramFloat));
      ea).x = (a.getPaddingLeft() + (int)(h * paramFloat));
      DragSortListView.g(a);
    }
  }
  
  public final void b()
  {
    DragSortListView.l(a);
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */