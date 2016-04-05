package android.support.v4.widget;

import android.support.v4.view.w;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public final class z
{
  private static final Interpolator v = new aa();
  private int a;
  private int b;
  private int c;
  private float[] d;
  private float[] e;
  private float[] f;
  private float[] g;
  private int[] h;
  private int[] i;
  private int[] j;
  private int k;
  private VelocityTracker l;
  private float m;
  private float n;
  private int o;
  private int p;
  private p q;
  private final ab r;
  private View s;
  private boolean t;
  private final ViewGroup u;
  private final Runnable w;
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = Math.abs(paramFloat1);
    if (f1 < paramFloat2) {
      paramFloat2 = 0.0F;
    }
    do
    {
      return paramFloat2;
      if (f1 <= paramFloat3) {
        break;
      }
      paramFloat2 = paramFloat3;
    } while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i1 = u.getWidth();
    int i2 = i1 / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f1 = i2;
    float f2 = i2;
    f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;; paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F)) {
      return Math.min(paramInt1, 600);
    }
  }
  
  private void a(float paramFloat)
  {
    t = true;
    r.a(s, paramFloat);
    t = false;
    if (a == 1) {
      c(0);
    }
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 0;
    if ((d == null) || (d.length <= paramInt))
    {
      localObject = new float[paramInt + 1];
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (d != null)
      {
        System.arraycopy(d, 0, localObject, 0, d.length);
        System.arraycopy(e, 0, arrayOfFloat1, 0, e.length);
        System.arraycopy(f, 0, arrayOfFloat2, 0, f.length);
        System.arraycopy(g, 0, arrayOfFloat3, 0, g.length);
        System.arraycopy(h, 0, arrayOfInt1, 0, h.length);
        System.arraycopy(i, 0, arrayOfInt2, 0, i.length);
        System.arraycopy(j, 0, arrayOfInt3, 0, j.length);
      }
      d = ((float[])localObject);
      e = arrayOfFloat1;
      f = arrayOfFloat2;
      g = arrayOfFloat3;
      h = arrayOfInt1;
      i = arrayOfInt2;
      j = arrayOfInt3;
    }
    Object localObject = d;
    f[paramInt] = paramFloat1;
    localObject[paramInt] = paramFloat1;
    localObject = e;
    g[paramInt] = paramFloat2;
    localObject[paramInt] = paramFloat2;
    localObject = h;
    int i4 = (int)paramFloat1;
    int i3 = (int)paramFloat2;
    if (i4 < u.getLeft() + o) {
      i2 = 1;
    }
    int i1 = i2;
    if (i3 < u.getTop() + o) {
      i1 = i2 | 0x4;
    }
    i2 = i1;
    if (i4 > u.getRight() - o) {
      i2 = i1 | 0x2;
    }
    i1 = i2;
    if (i3 > u.getBottom() - o) {
      i1 = i2 | 0x8;
    }
    localObject[paramInt] = i1;
    k |= 1 << paramInt;
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((h[paramInt1] & paramInt2) != paramInt2) || ((p & paramInt2) == 0) || ((j[paramInt1] & paramInt2) == paramInt2) || ((i[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= b) && (paramFloat2 <= b))) {}
    do
    {
      return false;
      if (paramFloat1 < paramFloat2 * 0.5F) {
        ab localab = r;
      }
    } while (((i[paramInt1] & paramInt2) != 0) || (paramFloat1 <= b));
    return true;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i2 = s.getLeft();
    int i1 = s.getTop();
    paramInt1 -= i2;
    paramInt2 -= i1;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      q.c();
      c(0);
      return false;
    }
    Object localObject = s;
    paramInt3 = b(paramInt3, (int)n, (int)m);
    paramInt4 = b(paramInt4, (int)n, (int)m);
    Math.abs(paramInt1);
    Math.abs(paramInt2);
    Math.abs(paramInt3);
    Math.abs(paramInt4);
    a(paramInt1, paramInt3, r.c((View)localObject));
    localObject = r;
    a(paramInt2, paramInt4, 0);
    localObject = q;
    q localq = b;
    localObject = a;
    c(2);
    return true;
  }
  
  private boolean a(View paramView, float paramFloat)
  {
    if (paramView == null) {
      return false;
    }
    if (r.c(paramView) > 0) {}
    for (int i1 = 1;; i1 = 0)
    {
      paramView = r;
      if ((i1 == 0) || (Math.abs(paramFloat) <= b)) {
        break;
      }
      return true;
    }
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = Math.abs(paramInt1);
    if (i1 < paramInt2) {
      paramInt2 = 0;
    }
    do
    {
      return paramInt2;
      if (i1 <= paramInt3) {
        break;
      }
      paramInt2 = paramInt3;
    } while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 1;
    if (a(paramFloat1, paramFloat2, paramInt, 1)) {}
    for (;;)
    {
      int i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 4)) {
        i1 = i2 | 0x4;
      }
      i2 = i1;
      if (a(paramFloat1, paramFloat2, paramInt, 2)) {
        i2 = i1 | 0x2;
      }
      i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 8)) {
        i1 = i2 | 0x8;
      }
      if (i1 != 0)
      {
        int[] arrayOfInt = i;
        arrayOfInt[paramInt] |= i1;
        r.a(i1, paramInt);
      }
      return;
      i2 = 0;
    }
  }
  
  private void b(int paramInt)
  {
    if (d == null) {
      return;
    }
    d[paramInt] = 0.0F;
    e[paramInt] = 0.0F;
    f[paramInt] = 0.0F;
    g[paramInt] = 0.0F;
    h[paramInt] = 0;
    i[paramInt] = 0;
    j[paramInt] = 0;
    k &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private boolean b(View paramView, int paramInt)
  {
    if ((paramView == s) && (c == paramInt)) {
      return true;
    }
    if ((paramView != null) && (r.a(paramView)))
    {
      c = paramInt;
      a(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public static boolean b(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null) {}
    while ((paramInt1 < paramView.getLeft()) || (paramInt1 >= paramView.getRight()) || (paramInt2 < paramView.getTop()) || (paramInt2 >= paramView.getBottom())) {
      return false;
    }
    return true;
  }
  
  private void c(int paramInt)
  {
    if (a != paramInt)
    {
      a = paramInt;
      r.a(paramInt);
      if (paramInt == 0) {
        s = null;
      }
    }
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i2 = w.c(paramMotionEvent);
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = w.b(paramMotionEvent, i1);
      float f1 = w.c(paramMotionEvent, i1);
      float f2 = w.d(paramMotionEvent, i1);
      f[i3] = f1;
      g[i3] = f2;
      i1 += 1;
    }
  }
  
  private void i()
  {
    l.computeCurrentVelocity(1000, m);
    float f1 = a(android.support.v4.view.ab.a(l, c), n, m);
    a(android.support.v4.view.ab.b(l, c), n, m);
    a(f1);
  }
  
  public final int a()
  {
    return a;
  }
  
  public final void a(int paramInt)
  {
    p = paramInt;
  }
  
  public final void a(View paramView, int paramInt)
  {
    if (paramView.getParent() != u) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + u + ")");
    }
    s = paramView;
    c = paramInt;
    r.b(paramView);
    c(1);
  }
  
  public final boolean a(int paramInt1, int paramInt2)
  {
    if (!t) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return a(paramInt1, paramInt2, (int)android.support.v4.view.ab.a(l, c), (int)android.support.v4.view.ab.b(l, c));
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = w.a(paramMotionEvent);
    int i1 = w.b(paramMotionEvent);
    if (i2 == 0) {
      e();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    switch (i2)
    {
    }
    while (a == 1)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      i1 = w.b(paramMotionEvent, 0);
      a(f1, f2, i1);
      paramMotionEvent = b((int)f1, (int)f2);
      if ((paramMotionEvent == s) && (a == 2)) {
        b(paramMotionEvent, i1);
      }
      if ((h[i1] & p) != 0)
      {
        paramMotionEvent = r;
        i1 = p;
        paramMotionEvent.b();
        continue;
        i2 = w.b(paramMotionEvent, i1);
        f1 = w.c(paramMotionEvent, i1);
        f2 = w.d(paramMotionEvent, i1);
        a(f1, f2, i2);
        if (a == 0)
        {
          if ((h[i2] & p) != 0)
          {
            paramMotionEvent = r;
            i1 = p;
            paramMotionEvent.b();
          }
        }
        else if (a == 2)
        {
          paramMotionEvent = b((int)f1, (int)f2);
          if (paramMotionEvent == s)
          {
            b(paramMotionEvent, i2);
            continue;
            i2 = w.c(paramMotionEvent);
            i1 = 0;
            while (i1 < i2)
            {
              int i3 = w.b(paramMotionEvent, i1);
              f1 = w.c(paramMotionEvent, i1);
              f2 = w.d(paramMotionEvent, i1);
              float f3 = f1 - d[i3];
              b(f3, f2 - e[i3], i3);
              if (a == 1) {
                break;
              }
              View localView = b((int)f1, (int)f2);
              if ((localView != null) && (a(localView, f3)) && (b(localView, i3))) {
                break;
              }
              i1 += 1;
            }
            c(paramMotionEvent);
            continue;
            b(w.b(paramMotionEvent, i1));
            continue;
            e();
          }
        }
      }
    }
    return false;
  }
  
  public final boolean a(View paramView, int paramInt1, int paramInt2)
  {
    s = paramView;
    c = -1;
    return a(paramInt1, paramInt2, 0, 0);
  }
  
  public final int b()
  {
    return o;
  }
  
  public final View b(int paramInt1, int paramInt2)
  {
    int i1 = u.getChildCount() - 1;
    while (i1 >= 0)
    {
      Object localObject = u;
      ab localab = r;
      localObject = ((ViewGroup)localObject).getChildAt(i1);
      if ((paramInt1 >= ((View)localObject).getLeft()) && (paramInt1 < ((View)localObject).getRight()) && (paramInt2 >= ((View)localObject).getTop()) && (paramInt2 < ((View)localObject).getBottom())) {
        return (View)localObject;
      }
      i1 -= 1;
    }
    return null;
  }
  
  public final void b(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    int i2 = 0;
    int i4 = w.a(paramMotionEvent);
    int i3 = w.b(paramMotionEvent);
    if (i4 == 0) {
      e();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (i4)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
      do
      {
        do
        {
          do
          {
            return;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i1 = w.b(paramMotionEvent, 0);
            paramMotionEvent = b((int)f1, (int)f2);
            a(f1, f2, i1);
            b(paramMotionEvent, i1);
          } while ((h[i1] & p) == 0);
          paramMotionEvent = r;
          i1 = p;
          paramMotionEvent.b();
          return;
          i1 = w.b(paramMotionEvent, i3);
          f1 = w.c(paramMotionEvent, i3);
          f2 = w.d(paramMotionEvent, i3);
          a(f1, f2, i1);
          if (a != 0) {
            break;
          }
          b(b((int)f1, (int)f2), i1);
        } while ((h[i1] & p) == 0);
        paramMotionEvent = r;
        i1 = p;
        paramMotionEvent.b();
        return;
        i2 = (int)f1;
        i3 = (int)f2;
      } while (!b(s, i2, i3));
      b(s, i1);
      return;
    case 2: 
      if (a == 1)
      {
        i1 = w.a(paramMotionEvent, c);
        f1 = w.c(paramMotionEvent, i1);
        f2 = w.d(paramMotionEvent, i1);
        i3 = (int)(f1 - f[c]);
        i4 = (int)(f2 - g[c]);
        i2 = s.getLeft() + i3;
        s.getTop();
        int i6 = s.getLeft();
        int i5 = s.getTop();
        i1 = i2;
        if (i3 != 0)
        {
          i1 = r.b(s, i2);
          s.offsetLeftAndRight(i1 - i6);
        }
        if (i4 != 0)
        {
          i2 = r.d(s);
          s.offsetTopAndBottom(i2 - i5);
        }
        if ((i3 != 0) || (i4 != 0)) {
          r.a(s, i1);
        }
        c(paramMotionEvent);
        return;
      }
      i3 = w.c(paramMotionEvent);
      i1 = i2;
      while (i1 < i3)
      {
        i2 = w.b(paramMotionEvent, i1);
        f1 = w.c(paramMotionEvent, i1);
        f2 = w.d(paramMotionEvent, i1);
        float f3 = f1 - d[i2];
        b(f3, f2 - e[i2], i2);
        if (a == 1) {
          break;
        }
        View localView = b((int)f1, (int)f2);
        if ((a(localView, f3)) && (b(localView, i2))) {
          break;
        }
        i1 += 1;
      }
      c(paramMotionEvent);
      return;
    case 6: 
      i2 = w.b(paramMotionEvent, i3);
      if ((a == 1) && (i2 == c))
      {
        i3 = w.c(paramMotionEvent);
        if (i1 >= i3) {
          break label762;
        }
        i4 = w.b(paramMotionEvent, i1);
        if (i4 == c) {
          break label718;
        }
        f1 = w.c(paramMotionEvent, i1);
        f2 = w.d(paramMotionEvent, i1);
        if ((b((int)f1, (int)f2) != s) || (!b(s, i4))) {
          break label718;
        }
      }
      break;
    }
    label718:
    label762:
    for (i1 = c;; i1 = -1)
    {
      if (i1 == -1) {
        i();
      }
      b(i2);
      return;
      i1 += 1;
      break;
      if (a == 1) {
        i();
      }
      e();
      return;
      if (a == 1) {
        a(0.0F);
      }
      e();
      return;
    }
  }
  
  public final View c()
  {
    return s;
  }
  
  public final int d()
  {
    return b;
  }
  
  public final void e()
  {
    c = -1;
    if (d != null)
    {
      Arrays.fill(d, 0.0F);
      Arrays.fill(e, 0.0F);
      Arrays.fill(f, 0.0F);
      Arrays.fill(g, 0.0F);
      Arrays.fill(h, 0);
      Arrays.fill(i, 0);
      Arrays.fill(j, 0);
      k = 0;
    }
    if (l != null)
    {
      l.recycle();
      l = null;
    }
  }
  
  public final void f()
  {
    e();
    if (a == 2)
    {
      q.a();
      q.b();
      q.c();
      int i1 = q.a();
      q.b();
      r.a(s, i1);
    }
    c(0);
  }
  
  public final boolean g()
  {
    if (a == 2)
    {
      Object localObject = q;
      q localq = b;
      localObject = a;
      boolean bool2 = localq.d();
      int i1 = q.a();
      int i2 = q.b();
      int i3 = i1 - s.getLeft();
      int i4 = i2 - s.getTop();
      if (i3 != 0) {
        s.offsetLeftAndRight(i3);
      }
      if (i4 != 0) {
        s.offsetTopAndBottom(i4);
      }
      if ((i3 != 0) || (i4 != 0)) {
        r.a(s, i1);
      }
      boolean bool1 = bool2;
      if (bool2)
      {
        localObject = q;
        localq = b;
        localObject = a;
        bool1 = bool2;
        if (i1 == localq.e())
        {
          localObject = q;
          localq = b;
          localObject = a;
          bool1 = bool2;
          if (i2 == localq.f())
          {
            q.c();
            localObject = q;
            localq = b;
            localObject = a;
            bool1 = localq.a();
          }
        }
      }
      if (!bool1) {
        u.post(w);
      }
    }
    return a == 2;
  }
  
  public final boolean h()
  {
    int i3 = d.length;
    int i2 = 0;
    while (i2 < i3)
    {
      int i1;
      if ((k & 1 << i2) != 0)
      {
        i1 = 1;
        if (i1 == 0) {
          break label106;
        }
        float f1 = f[i2] - d[i2];
        float f2 = g[i2] - e[i2];
        if (f1 * f1 + f2 * f2 <= b * b) {
          break label101;
        }
        i1 = 1;
      }
      for (;;)
      {
        if (i1 == 0) {
          break label111;
        }
        return true;
        i1 = 0;
        break;
        label101:
        i1 = 0;
        continue;
        label106:
        i1 = 0;
      }
      label111:
      i2 += 1;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */