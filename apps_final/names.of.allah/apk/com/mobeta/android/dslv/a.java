package com.mobeta.android.dslv;

import android.graphics.Point;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;

public final class a
  extends x
  implements GestureDetector.OnGestureListener, View.OnTouchListener
{
  private int b = 0;
  private boolean c = true;
  private int d;
  private boolean e = false;
  private boolean f = false;
  private GestureDetector g;
  private GestureDetector h;
  private int i;
  private int j = -1;
  private int k = -1;
  private int l = -1;
  private int[] m = new int[2];
  private int n;
  private int o;
  private int p;
  private int q;
  private boolean r = false;
  private float s = 500.0F;
  private int t;
  private int u;
  private int v;
  private boolean w;
  private DragSortListView x;
  private int y;
  private GestureDetector.OnGestureListener z = new b(this);
  
  public a(DragSortListView paramDragSortListView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super(paramDragSortListView);
    x = paramDragSortListView;
    g = new GestureDetector(paramDragSortListView.getContext(), this);
    h = new GestureDetector(paramDragSortListView.getContext(), z);
    h.setIsLongpressEnabled(false);
    i = ViewConfiguration.get(paramDragSortListView.getContext()).getScaledTouchSlop();
    t = paramInt1;
    u = paramInt4;
    v = paramInt5;
    d = paramInt3;
    b = paramInt2;
  }
  
  private int a(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    i1 = x.pointToPosition(i1, i2);
    i2 = x.getHeaderViewsCount();
    int i3 = x.getFooterViewsCount();
    int i4 = x.getCount();
    if ((i1 != -1) && (i1 >= i2) && (i1 < i4 - i3))
    {
      View localView = x.getChildAt(i1 - x.getFirstVisiblePosition());
      i3 = (int)paramMotionEvent.getRawX();
      i2 = (int)paramMotionEvent.getRawY();
      if (paramInt == 0) {}
      for (paramMotionEvent = localView; paramMotionEvent != null; paramMotionEvent = localView.findViewById(paramInt))
      {
        paramMotionEvent.getLocationOnScreen(m);
        if ((i3 <= m[0]) || (i2 <= m[1]) || (i3 >= m[0] + paramMotionEvent.getWidth())) {
          break;
        }
        paramInt = m[1];
        if (i2 >= paramMotionEvent.getHeight() + paramInt) {
          break;
        }
        n = localView.getLeft();
        o = localView.getTop();
        return i1;
      }
    }
    return -1;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i2 = 0;
    int i1 = i2;
    if (c)
    {
      i1 = i2;
      if (!f) {
        i1 = 12;
      }
    }
    i2 = i1;
    if (e)
    {
      i2 = i1;
      if (f) {
        i2 = i1 | 0x1 | 0x2;
      }
    }
    r = x.a(paramInt1 - x.getHeaderViewsCount(), i2, paramInt2, paramInt3);
    return r;
  }
  
  public final void a(Point paramPoint)
  {
    if ((e) && (f)) {
      y = x;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public final void b(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    int i1 = -1;
    if ((e) && (d == 0)) {
      l = a(paramMotionEvent, u);
    }
    j = a(paramMotionEvent, t);
    if ((j != -1) && (b == 0)) {
      a(j, (int)paramMotionEvent.getX() - n, (int)paramMotionEvent.getY() - o);
    }
    f = false;
    w = true;
    y = 0;
    if (d == 1) {
      i1 = a(paramMotionEvent, v);
    }
    k = i1;
    return true;
  }
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public final void onLongPress(MotionEvent paramMotionEvent)
  {
    if ((j != -1) && (b == 2))
    {
      x.performHapticFeedback(0);
      a(j, p - n, q - o);
    }
  }
  
  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i1 = (int)paramMotionEvent1.getX();
    int i2 = (int)paramMotionEvent1.getY();
    int i3 = (int)paramMotionEvent2.getX();
    int i4 = (int)paramMotionEvent2.getY();
    int i5 = i3 - n;
    int i6 = i4 - o;
    if ((w) && (!r) && ((j != -1) || (k != -1)))
    {
      if (j == -1) {
        break label178;
      }
      if ((b != 1) || (Math.abs(i4 - i2) <= i) || (!c)) {
        break label129;
      }
      a(j, i5, i6);
    }
    label129:
    label178:
    do
    {
      do
      {
        do
        {
          return false;
        } while ((b == 0) || (Math.abs(i3 - i1) <= i) || (!e));
        f = true;
        a(k, i5, i6);
        return false;
      } while (k == -1);
      if ((Math.abs(i3 - i1) > i) && (e))
      {
        f = true;
        a(k, i5, i6);
        return false;
      }
    } while (Math.abs(i4 - i2) <= i);
    w = false;
    return false;
  }
  
  public final void onShowPress(MotionEvent paramMotionEvent) {}
  
  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    if ((e) && (d == 0) && (l != -1)) {
      x.a(l - x.getHeaderViewsCount());
    }
    return true;
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((!x.c()) || (x.b())) {
      return false;
    }
    g.onTouchEvent(paramMotionEvent);
    if ((e) && (r) && (d == 1)) {
      h.onTouchEvent(paramMotionEvent);
    }
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return false;
    case 0: 
      p = ((int)paramMotionEvent.getX());
      q = ((int)paramMotionEvent.getY());
      return false;
    case 1: 
      if ((e) && (f)) {
        if (y < 0) {
          break label182;
        }
      }
      break;
    }
    label182:
    for (int i1 = y;; i1 = -y)
    {
      if (i1 > x.getWidth() / 2) {
        x.a(0.0F);
      }
      f = false;
      r = false;
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */