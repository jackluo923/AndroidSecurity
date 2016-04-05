package com.mobeta.android.dslv;

import android.os.SystemClock;
import android.view.View;

final class k
  implements Runnable
{
  private boolean b;
  private long c;
  private long d;
  private int e;
  private float f;
  private long g;
  private int h;
  private float i;
  private boolean j = false;
  
  public k(DragSortListView paramDragSortListView) {}
  
  public final void a(int paramInt)
  {
    if (!j)
    {
      b = false;
      j = true;
      g = SystemClock.uptimeMillis();
      c = g;
      h = paramInt;
      a.post(this);
    }
  }
  
  public final boolean a()
  {
    return j;
  }
  
  public final int b()
  {
    if (j) {
      return h;
    }
    return -1;
  }
  
  public final void c()
  {
    a.removeCallbacks(this);
    j = false;
  }
  
  public final void run()
  {
    if (b)
    {
      j = false;
      return;
    }
    int m = a.getFirstVisiblePosition();
    int k = a.getLastVisiblePosition();
    int i1 = a.getCount();
    int n = a.getPaddingTop();
    int i2 = a.getHeight() - n - a.getPaddingBottom();
    int i3 = Math.min(DragSortListView.f(a), DragSortListView.s(a) + DragSortListView.d(a));
    int i4 = Math.max(DragSortListView.f(a), DragSortListView.s(a) - DragSortListView.d(a));
    Object localObject;
    float f1;
    long l;
    if (h == 0)
    {
      localObject = a.getChildAt(0);
      if (localObject == null)
      {
        j = false;
        return;
      }
      if ((m == 0) && (((View)localObject).getTop() == n))
      {
        j = false;
        return;
      }
      localObject = DragSortListView.v(a);
      f1 = (DragSortListView.t(a) - i4) / DragSortListView.u(a);
      l = c;
      i = ((j)localObject).a(f1);
      d = SystemClock.uptimeMillis();
      f = ((float)(d - c));
      e = Math.round(i * f);
      if (e < 0) {
        break label488;
      }
      e = Math.min(i2, e);
      k = m;
    }
    for (;;)
    {
      localObject = a.getChildAt(k - m);
      i1 = ((View)localObject).getTop() + e;
      m = i1;
      if (k == 0)
      {
        m = i1;
        if (i1 > n) {
          m = n;
        }
      }
      DragSortListView.a(a, true);
      a.setSelectionFromTop(k, m - n);
      a.layoutChildren();
      a.invalidate();
      DragSortListView.a(a, false);
      DragSortListView.c(a, k, (View)localObject);
      c = d;
      a.post(this);
      return;
      localObject = a.getChildAt(k - m);
      if (localObject == null)
      {
        j = false;
        return;
      }
      if ((k == i1 - 1) && (((View)localObject).getBottom() <= i2 + n))
      {
        j = false;
        return;
      }
      localObject = DragSortListView.v(a);
      f1 = (i3 - DragSortListView.w(a)) / DragSortListView.x(a);
      l = c;
      i = (-((j)localObject).a(f1));
      break;
      label488:
      e = Math.max(-i2, e);
    }
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */