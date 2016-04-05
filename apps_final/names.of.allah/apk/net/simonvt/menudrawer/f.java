package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;

public abstract class f
  extends MenuDrawer
{
  private static final Interpolator aa = new w();
  protected int a;
  private final Runnable ab = new h(this);
  private Runnable ac;
  private ad ad;
  protected final Runnable b = new g(this);
  protected boolean c;
  protected int d = -1;
  protected float e;
  protected float f;
  protected float g = -1.0F;
  protected float h = -1.0F;
  protected long i;
  protected ad j;
  protected VelocityTracker k;
  protected int l;
  protected boolean m = true;
  protected int n;
  protected boolean o;
  protected boolean p;
  
  f(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
  }
  
  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      i1 = paramView.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = paramView.getChildAt(i1);
        i2 = localView.getLeft() + c(localView);
        i3 = localView.getRight();
        i4 = c(localView);
        i5 = localView.getTop();
        i5 = b(localView) + i5;
        i6 = localView.getBottom();
        i7 = b(localView);
        if ((paramInt2 < i2) || (paramInt2 >= i3 + i4) || (paramInt3 < i5) || (paramInt3 >= i6 + i7) || (!a(localView, true, paramInt1, paramInt2 - i2, paramInt3 - i5))) {}
      }
    }
    while ((paramBoolean) && (Q.a()))
    {
      View localView;
      int i2;
      int i3;
      int i4;
      int i5;
      int i6;
      int i7;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }
  
  private static int b(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return (int)paramView.getTranslationY();
    }
    return 0;
  }
  
  private boolean b(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      i1 = paramView.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = paramView.getChildAt(i1);
        i2 = localView.getLeft() + c(localView);
        i3 = localView.getRight();
        i4 = c(localView);
        i5 = localView.getTop();
        i5 = b(localView) + i5;
        i6 = localView.getBottom();
        i7 = b(localView);
        if ((paramInt2 < i2) || (paramInt2 >= i3 + i4) || (paramInt3 < i5) || (paramInt3 >= i6 + i7) || (!b(localView, true, paramInt1, paramInt2 - i2, paramInt3 - i5))) {}
      }
    }
    while ((paramBoolean) && (Q.a()))
    {
      View localView;
      int i2;
      int i3;
      int i4;
      int i5;
      int i6;
      int i7;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }
  
  private static int c(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return (int)paramView.getTranslationX();
    }
    return 0;
  }
  
  private void r()
  {
    if (ad.d())
    {
      i1 = (int)W;
      int i2 = ad.b();
      if (i2 != i1) {
        setOffsetPixels(i2);
      }
      if (i2 != ad.c())
      {
        postOnAnimation(ab);
        return;
      }
    }
    ad.e();
    int i1 = ad.c();
    setOffsetPixels(i1);
    if (i1 == 0) {}
    for (i1 = 0;; i1 = 8)
    {
      setDrawerState(i1);
      d();
      return;
    }
  }
  
  private void s()
  {
    if (j.d())
    {
      int i1 = (int)W;
      int i2 = j.b();
      if (i2 != i1) {
        setOffsetPixels(i2);
      }
      if (!j.a())
      {
        postOnAnimation(b);
        return;
      }
      if (i > 0L)
      {
        ac = new i(this);
        postDelayed(ac, i);
      }
    }
    j.e();
    setOffsetPixels(0.0F);
    setDrawerState(0);
    d();
    o = false;
  }
  
  protected final float a(VelocityTracker paramVelocityTracker)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      return paramVelocityTracker.getXVelocity(d);
    }
    return paramVelocityTracker.getXVelocity();
  }
  
  public final void a()
  {
    if ((G == 8) || (G == 4)) {
      p();
    }
    while ((G != 0) && (G != 1)) {
      return;
    }
    a(true);
  }
  
  protected final void a(int paramInt1, int paramInt2)
  {
    int i1 = (int)W;
    paramInt1 -= i1;
    if (paramInt1 > 0)
    {
      setDrawerState(4);
      ad.a(i1, paramInt1, paramInt2);
    }
    for (;;)
    {
      c();
      r();
      return;
      setDrawerState(1);
      ad.a(i1, paramInt1, paramInt2);
    }
  }
  
  protected final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    e();
    j();
    int i1 = paramInt1 - (int)W;
    if ((i1 == 0) || (!paramBoolean))
    {
      setOffsetPixels(paramInt1);
      if (paramInt1 == 0) {}
      for (paramInt1 = 0;; paramInt1 = 8)
      {
        setDrawerState(paramInt1);
        d();
        return;
      }
    }
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt2 = Math.round(Math.abs(i1 / paramInt2) * 1000.0F) * 4;; paramInt2 = (int)(Math.abs(i1 / E) * 600.0F))
    {
      a(paramInt1, Math.min(paramInt2, P));
      return;
    }
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = ViewConfiguration.get(paramContext);
    a = paramAttributeSet.getScaledTouchSlop();
    l = paramAttributeSet.getScaledMaximumFlingVelocity();
    ad = new ad(paramContext, MenuDrawer.r);
    j = new ad(paramContext, aa);
    n = a(3);
  }
  
  final void a(Bundle paramBundle)
  {
    if ((G == 8) || (G == 4)) {}
    for (boolean bool = true;; bool = false)
    {
      paramBundle.putBoolean("net.simonvt.menudrawer.MenuDrawer.menuVisible", bool);
      return;
    }
  }
  
  public final void a(Parcelable paramParcelable)
  {
    int i1 = 0;
    super.a(paramParcelable);
    boolean bool = ((Bundle)paramParcelable).getBoolean("net.simonvt.menudrawer.MenuDrawer.menuVisible");
    if (bool) {
      a(false);
    }
    for (;;)
    {
      if (bool) {
        i1 = 8;
      }
      G = i1;
      return;
      setOffsetPixels(0.0F);
    }
  }
  
  protected final boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    switch (j.a[getPosition().ordinal()])
    {
    default: 
      return false;
    case 1: 
    case 2: 
      if (!F) {
        return a(D, false, paramInt1, paramInt3 - al.a(D), paramInt4 - al.b(D));
      }
      return a(C, false, paramInt1, paramInt3 - al.a(C), paramInt4 - al.b(D));
    }
    if (!F) {
      return b(D, false, paramInt2, paramInt3 - al.a(D), paramInt4 - al.b(D));
    }
    return b(C, false, paramInt2, paramInt3 - al.a(C), paramInt4 - al.b(D));
  }
  
  protected final float b(VelocityTracker paramVelocityTracker)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      return paramVelocityTracker.getYVelocity(d);
    }
    return paramVelocityTracker.getYVelocity();
  }
  
  public final boolean b()
  {
    return F;
  }
  
  protected void c()
  {
    if ((q) && (K) && (!p))
    {
      p = true;
      D.setLayerType(2, null);
      C.setLayerType(2, null);
    }
  }
  
  protected void d()
  {
    if (p)
    {
      p = false;
      D.setLayerType(0, null);
      C.setLayerType(0, null);
    }
  }
  
  protected final void e()
  {
    c = false;
    if (k != null)
    {
      k.recycle();
      k = null;
    }
  }
  
  protected void f()
  {
    removeCallbacks(ab);
    ad.e();
    d();
  }
  
  protected final void g()
  {
    int i1 = 0;
    long l1 = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
    int i2 = getChildCount();
    while (i1 < i2)
    {
      getChildAt(i1).dispatchTouchEvent(localMotionEvent);
      i1 += 1;
    }
    D.dispatchTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
  }
  
  public boolean getOffsetMenuEnabled()
  {
    return m;
  }
  
  public int getTouchBezelSize()
  {
    return H;
  }
  
  public int getTouchMode()
  {
    return J;
  }
  
  protected final void h()
  {
    o = true;
    i();
    c();
    s();
  }
  
  protected abstract void i();
  
  protected final void j()
  {
    removeCallbacks(ac);
    removeCallbacks(b);
    d();
    o = false;
  }
  
  protected final boolean k()
  {
    return Math.abs(W) <= n;
  }
  
  public void setHardwareLayerEnabled(boolean paramBoolean)
  {
    if (paramBoolean != K)
    {
      K = paramBoolean;
      C.a(paramBoolean);
      D.a(paramBoolean);
      d();
    }
  }
  
  public void setMenuSize(int paramInt)
  {
    E = paramInt;
    if ((G == 8) || (G == 4)) {
      setOffsetPixels(E);
    }
    requestLayout();
    invalidate();
  }
  
  public void setOffsetMenuEnabled(boolean paramBoolean)
  {
    if (paramBoolean != m)
    {
      m = paramBoolean;
      requestLayout();
      invalidate();
    }
  }
  
  public void setTouchBezelSize(int paramInt)
  {
    H = paramInt;
  }
  
  public void setTouchMode(int paramInt)
  {
    if (J != paramInt)
    {
      J = paramInt;
      q();
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */