package android.support.v4.widget;

import android.view.View;

final class j
  extends ab
{
  private final int b;
  private z c;
  private final Runnable d;
  
  public final void a()
  {
    a.removeCallbacks(d);
  }
  
  public final void a(int paramInt)
  {
    DrawerLayout localDrawerLayout = a;
    int i = b;
    localDrawerLayout.a(paramInt, c.c());
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1) {}
    for (View localView = a.a(3);; localView = a.a(5))
    {
      if ((localView != null) && (a.a(localView) == 0)) {
        c.a(localView, paramInt2);
      }
      return;
    }
  }
  
  public final void a(View paramView, float paramFloat)
  {
    DrawerLayout localDrawerLayout = a;
    float f = DrawerLayout.b(paramView);
    int k = paramView.getWidth();
    int i;
    if (a.a(paramView, 3)) {
      if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (f > 0.5F))) {
        i = 0;
      }
    }
    for (;;)
    {
      c.a(i, paramView.getTop());
      a.invalidate();
      return;
      i = -k;
      continue;
      int j = a.getWidth();
      if (paramFloat >= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (f <= 0.5F) {}
        }
      }
      else
      {
        i = j - k;
      }
    }
  }
  
  public final void a(View paramView, int paramInt)
  {
    int i = paramView.getWidth();
    float f;
    if (a.a(paramView, 3))
    {
      f = (i + paramInt) / i;
      a.a(paramView, f);
      if (f != 0.0F) {
        break label76;
      }
    }
    label76:
    for (paramInt = 4;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      a.invalidate();
      return;
      f = (a.getWidth() - paramInt) / i;
      break;
    }
  }
  
  public final boolean a(View paramView)
  {
    DrawerLayout localDrawerLayout = a;
    return (DrawerLayout.c(paramView)) && (a.a(paramView, b)) && (a.a(paramView) == 0);
  }
  
  public final int b(View paramView, int paramInt)
  {
    if (a.a(paramView, 3)) {
      return Math.max(-paramView.getWidth(), Math.min(paramInt, 0));
    }
    int i = a.getWidth();
    return Math.max(i - paramView.getWidth(), Math.min(paramInt, i));
  }
  
  public final void b()
  {
    a.postDelayed(d, 160L);
  }
  
  public final void b(View paramView)
  {
    getLayoutParamsc = false;
    if (b == 3) {}
    for (int i = 5;; i = 3)
    {
      paramView = a.a(i);
      if (paramView != null) {
        a.d(paramView);
      }
      return;
    }
  }
  
  public final int c(View paramView)
  {
    return paramView.getWidth();
  }
  
  public final int d(View paramView)
  {
    return paramView.getTop();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */