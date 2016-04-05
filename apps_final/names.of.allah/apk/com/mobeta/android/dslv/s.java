package com.mobeta.android.dslv;

import android.graphics.Point;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

final class s
  extends u
{
  private float e;
  private float f;
  private float g;
  private int h = -1;
  private int i = -1;
  private int j;
  private int k;
  private int l;
  
  public s(DragSortListView paramDragSortListView, int paramInt)
  {
    super(paramDragSortListView, paramInt);
  }
  
  public final void a()
  {
    int m = -1;
    h = -1;
    i = -1;
    j = DragSortListView.m(a);
    k = DragSortListView.n(a);
    l = DragSortListView.i(a);
    DragSortListView.b(a, 1);
    e = ea).x;
    if (DragSortListView.o(a))
    {
      float f1 = a.getWidth() * 2.0F;
      if (DragSortListView.p(a) == 0.0F)
      {
        DragSortListView localDragSortListView = a;
        if (e < 0.0F) {
          DragSortListView.a(localDragSortListView, m * f1);
        }
      }
      do
      {
        return;
        m = 1;
        break;
        f1 *= 2.0F;
        if ((DragSortListView.p(a) < 0.0F) && (DragSortListView.p(a) > -f1))
        {
          DragSortListView.a(a, -f1);
          return;
        }
      } while ((DragSortListView.p(a) <= 0.0F) || (DragSortListView.p(a) >= f1));
      DragSortListView.a(a, f1);
      return;
    }
    DragSortListView.q(a);
  }
  
  public final void a(float paramFloat)
  {
    paramFloat = 1.0F - paramFloat;
    int n = a.getFirstVisiblePosition();
    View localView = a.getChildAt(j - n);
    float f1;
    if (DragSortListView.o(a))
    {
      f1 = (float)(SystemClock.uptimeMillis() - b) / 1000.0F;
      if (f1 != 0.0F) {}
    }
    do
    {
      do
      {
        return;
        float f2 = DragSortListView.p(a);
        int i1 = a.getWidth();
        localObject = a;
        if (DragSortListView.p(a) > 0.0F) {}
        for (m = 1;; m = -1)
        {
          DragSortListView.b((DragSortListView)localObject, m * f1 * i1);
          e += f2 * f1;
          ea).x = ((int)e);
          if ((e >= i1) || (e <= -i1)) {
            break;
          }
          b = SystemClock.uptimeMillis();
          DragSortListView.g(a);
          return;
        }
        if (localView != null)
        {
          if (h == -1)
          {
            h = DragSortListView.b(a, j, localView);
            f = (localView.getHeight() - h);
          }
          m = Math.max((int)(f * paramFloat), 1);
          localObject = localView.getLayoutParams();
          height = (m + h);
          localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
        }
      } while (k == j);
      localView = a.getChildAt(k - n);
    } while (localView == null);
    if (i == -1)
    {
      i = DragSortListView.b(a, k, localView);
      g = (localView.getHeight() - i);
    }
    int m = Math.max((int)(g * paramFloat), 1);
    Object localObject = localView.getLayoutParams();
    height = (m + i);
    localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
  
  public final void b()
  {
    DragSortListView.r(a);
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */