package uk.co.senab.a.b;

import android.app.Activity;
import android.graphics.Rect;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import uk.co.senab.a.b.a.a;
import uk.co.senab.a.b.a.b;

public class j
{
  f a;
  b b;
  public Activity c;
  View d;
  a e;
  final int f;
  float g;
  float h;
  boolean i;
  boolean j;
  boolean k;
  View l;
  final WeakHashMap<View, uk.co.senab.a.b.b.c> m;
  final boolean n;
  private e o;
  private final float p;
  private float q;
  private float r;
  private final int s;
  private final boolean t;
  private boolean u = false;
  private final int[] v = new int[2];
  private final Rect w = new Rect();
  private final Runnable x = new m(this);
  
  public j(Activity paramActivity, h paramh)
  {
    if (paramActivity == null) {
      throw new IllegalArgumentException("activity cannot be null");
    }
    h localh = paramh;
    if (paramh == null)
    {
      Log.i("PullToRefreshAttacher", "Given null options so using default options.");
      localh = new h();
    }
    c = paramActivity;
    m = new WeakHashMap();
    p = d;
    n = e;
    s = f;
    t = g;
    if (a != null)
    {
      paramh = a;
      o = paramh;
      if (c == null) {
        break label230;
      }
    }
    label230:
    for (paramh = c;; paramh = b())
    {
      a = paramh;
      f = ViewConfiguration.get(paramActivity).getScaledTouchSlop();
      paramh = (ViewGroup)paramActivity.getWindow().getDecorView();
      d = LayoutInflater.from(o.a(paramActivity)).inflate(b, paramh, false);
      if (d != null) {
        break label238;
      }
      throw new IllegalArgumentException("Must supply valid layout id for header.");
      paramh = a();
      break;
    }
    label238:
    d.setVisibility(4);
    a.a(paramActivity, d);
    paramh.post(new k(this, paramh));
  }
  
  private boolean a(boolean paramBoolean)
  {
    return (!j) && ((!paramBoolean) || (b != null));
  }
  
  private void g()
  {
    b(d);
    if ((a.a()) && (e != null))
    {
      Object localObject = e;
      localObject = d;
    }
  }
  
  private void h()
  {
    j = false;
    if (t) {
      d.removeCallbacks(x);
    }
    if ((a.b()) && (e != null))
    {
      Object localObject = e;
      localObject = d;
    }
  }
  
  protected e a()
  {
    return new l(this);
  }
  
  public void a(View paramView)
  {
    c.getWindow().getDecorView().getWindowVisibleDisplayFrame(w);
    int i1 = -1;
    int i2 = -2;
    Object localObject = paramView.getLayoutParams();
    if (localObject != null)
    {
      i1 = width;
      i2 = height;
    }
    localObject = new WindowManager.LayoutParams(i1, i2, 1000, 24, -3);
    x = 0;
    y = w.top;
    gravity = 48;
    paramView.setTag(localObject);
    c.getWindowManager().addView(paramView, (ViewGroup.LayoutParams)localObject);
  }
  
  final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f()) {}
    do
    {
      do
      {
        return;
      } while (j == paramBoolean1);
      d();
      if ((!paramBoolean1) || (!a(paramBoolean2))) {
        break;
      }
      j = true;
      if ((paramBoolean2) && (b != null)) {
        b.e();
      }
      a.f();
      g();
    } while (!t);
    if (s > 0)
    {
      d.postDelayed(x, s);
      return;
    }
    d.post(x);
    return;
    h();
  }
  
  final boolean a(MotionEvent paramMotionEvent)
  {
    if (j) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return i;
      if ((!i) && (q > 0.0F))
      {
        float f3 = f2 - q;
        if ((f3 > f1 - r) && (f3 > f))
        {
          i = true;
          g();
          h = f2;
        }
        else if (f3 < -f)
        {
          d();
          continue;
          if (a(true))
          {
            Iterator localIterator = m.keySet().iterator();
            label366:
            while (localIterator.hasNext())
            {
              View localView = (View)localIterator.next();
              uk.co.senab.a.b.b.c localc;
              if ((localView.isShown()) && (m.containsKey(localView)))
              {
                localView.getLocationOnScreen(v);
                int i1 = v[0];
                int i2 = v[1];
                w.set(i1, i2, localView.getWidth() + i1, localView.getHeight() + i2);
                i1 = (int)paramMotionEvent.getRawX();
                i2 = (int)paramMotionEvent.getRawY();
                if (w.contains(i1, i2))
                {
                  localc = (uk.co.senab.a.b.b.c)m.get(localView);
                  if (localc != null)
                  {
                    f3 = i1 - w.left;
                    i1 = w.top;
                  }
                }
              }
              for (boolean bool = localc.a(localView, f3);; bool = false)
              {
                if (!bool) {
                  break label366;
                }
                r = f1;
                q = f2;
                l = localView;
                break;
              }
            }
            d();
          }
        }
      }
    }
  }
  
  protected f b()
  {
    return new c();
  }
  
  public void b(View paramView)
  {
    c.getWindow().getDecorView().getWindowVisibleDisplayFrame(w);
    WindowManager.LayoutParams localLayoutParams = null;
    if ((paramView.getLayoutParams() instanceof WindowManager.LayoutParams)) {
      localLayoutParams = (WindowManager.LayoutParams)paramView.getLayoutParams();
    }
    for (;;)
    {
      if ((localLayoutParams != null) && (y != w.top))
      {
        y = w.top;
        c.getWindowManager().updateViewLayout(paramView, localLayoutParams);
      }
      return;
      if ((paramView.getTag() instanceof WindowManager.LayoutParams)) {
        localLayoutParams = (WindowManager.LayoutParams)paramView.getTag();
      }
    }
  }
  
  final void c()
  {
    if (u) {
      return;
    }
    c(d);
    m.clear();
    c = null;
    d = null;
    e = null;
    o = null;
    a = null;
    u = true;
  }
  
  public void c(View paramView)
  {
    if (paramView.getWindowToken() != null) {
      c.getWindowManager().removeViewImmediate(paramView);
    }
  }
  
  final float d(View paramView)
  {
    return paramView.getHeight() * p;
  }
  
  final void d()
  {
    i = false;
    k = false;
    h = -1.0F;
    g = -1.0F;
    q = -1.0F;
  }
  
  final void e()
  {
    if (!j) {
      h();
    }
  }
  
  final boolean f()
  {
    if (u) {
      Log.i("PullToRefreshAttacher", "PullToRefreshAttacher is destroyed.");
    }
    return u;
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */