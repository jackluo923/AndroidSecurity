package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.af;
import android.support.v4.view.n;
import android.support.v4.view.r;
import android.support.v4.view.w;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public final class DrawerLayout
  extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private final f b;
  private int c;
  private int d;
  private float e;
  private Paint f;
  private final z g;
  private final z h;
  private final j i;
  private final j j;
  private int k;
  private boolean l;
  private boolean m;
  private int n;
  private int o;
  private boolean p;
  private boolean q;
  private g r;
  private float s;
  private float t;
  private Drawable u;
  private Drawable v;
  
  private void a(int paramInt1, int paramInt2)
  {
    paramInt2 = n.a(paramInt2, af.e(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      n = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = g;
        label33:
        ((z)localObject).e();
      }
      switch (paramInt1)
      {
      }
    }
    label74:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        o = paramInt1;
        break;
        localObject = h;
        break label33;
        localObject = a(paramInt2);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = a(paramInt2);
    } while (localObject == null);
    d((View)localObject);
  }
  
  private void a(boolean paramBoolean)
  {
    int i4 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i4)
    {
      View localView = getChildAt(i2);
      h localh = (h)localView.getLayoutParams();
      boolean bool = i1;
      int i3;
      if (c(localView)) {
        if (paramBoolean)
        {
          bool = i1;
          if (!c) {}
        }
        else
        {
          i3 = localView.getWidth();
          if (!a(localView, 3)) {
            break label117;
          }
          i1 |= g.a(localView, -i3, localView.getTop());
        }
      }
      for (;;)
      {
        c = false;
        i3 = i1;
        i2 += 1;
        i1 = i3;
        break;
        label117:
        i1 |= h.a(localView, getWidth(), localView.getTop());
      }
    }
    i.a();
    j.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  static float b(View paramView)
  {
    return getLayoutParamsb;
  }
  
  private static String b(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  static boolean c(View paramView)
  {
    return (n.a(getLayoutParamsa, af.e(paramView)) & 0x7) != 0;
  }
  
  private int f(View paramView)
  {
    return n.a(getLayoutParamsa, af.e(this));
  }
  
  private View f()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((c(localView)) && (i(localView))) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private static boolean g(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  private void h(View paramView)
  {
    if (!c(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (m)
    {
      paramView = (h)paramView.getLayoutParams();
      b = 1.0F;
      d = true;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        g.a(paramView, 0, paramView.getTop());
      } else {
        h.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  private static boolean i(View paramView)
  {
    if (!c(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsb > 0.0F;
  }
  
  public final int a(View paramView)
  {
    int i1 = f(paramView);
    if (i1 == 3) {
      return n;
    }
    if (i1 == 5) {
      return o;
    }
    return 0;
  }
  
  final View a(int paramInt)
  {
    int i1 = n.a(paramInt, af.e(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((f(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  public final void a()
  {
    View localView = a(8388611);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + b(8388611));
    }
    h(localView);
  }
  
  final void a(int paramInt, View paramView)
  {
    int i1 = g.a();
    int i2 = h.a();
    Object localObject;
    if ((i1 == 1) || (i2 == 1))
    {
      i1 = 1;
      if ((paramView != null) && (paramInt == 0))
      {
        localObject = (h)paramView.getLayoutParams();
        if (b != 0.0F) {
          break label195;
        }
        localObject = (h)paramView.getLayoutParams();
        if (d)
        {
          d = false;
          if (r != null) {
            r.onDrawerClosed(paramView);
          }
          localObject = getChildAt(0);
          if (localObject != null) {
            af.b((View)localObject, 1);
          }
          af.b(paramView, 4);
          if (hasWindowFocus())
          {
            paramView = getRootView();
            if (paramView != null) {
              paramView.sendAccessibilityEvent(32);
            }
          }
        }
      }
    }
    for (;;)
    {
      if (i1 != k)
      {
        k = i1;
        if (r != null) {
          r.onDrawerStateChanged(i1);
        }
      }
      return;
      if ((i1 == 2) || (i2 == 2))
      {
        i1 = 2;
        break;
      }
      i1 = 0;
      break;
      label195:
      if (b == 1.0F)
      {
        localObject = (h)paramView.getLayoutParams();
        if (!d)
        {
          d = true;
          if (r != null) {
            r.onDrawerOpened(paramView);
          }
          localObject = getChildAt(0);
          if (localObject != null) {
            af.b((View)localObject, 4);
          }
          af.b(paramView, 1);
          sendAccessibilityEvent(32);
          paramView.requestFocus();
        }
      }
    }
  }
  
  final void a(View paramView, float paramFloat)
  {
    h localh = (h)paramView.getLayoutParams();
    if (paramFloat == b) {}
    do
    {
      return;
      b = paramFloat;
    } while (r == null);
    r.onDrawerSlide(paramView, paramFloat);
  }
  
  final boolean a(View paramView, int paramInt)
  {
    return (f(paramView) & paramInt) == paramInt;
  }
  
  public final void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramInt > 0) || ((paramInt < 0) && (getChildCount() > 0)))
    {
      af.b(paramView, 4);
      af.a(paramView, b);
    }
    for (;;)
    {
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
      af.b(paramView, 1);
    }
  }
  
  public final void b()
  {
    View localView = a(8388611);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + b(8388611));
    }
    d(localView);
  }
  
  public final boolean c()
  {
    View localView = a(8388611);
    if (localView != null)
    {
      if (!c(localView)) {
        throw new IllegalArgumentException("View " + localView + " is not a drawer");
      }
      return getLayoutParamsd;
    }
    return false;
  }
  
  protected final boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof h)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public final void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, getChildAtgetLayoutParamsb);
      i1 += 1;
    }
    e = f1;
    if ((g.g() | h.g())) {
      af.b(this);
    }
  }
  
  public final void d(View paramView)
  {
    if (!c(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (m)
    {
      paramView = (h)paramView.getLayoutParams();
      b = 0.0F;
      d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        g.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        h.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public final boolean d()
  {
    View localView = a(8388611);
    if (localView != null) {
      return i(localView);
    }
    return false;
  }
  
  protected final boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i7 = getHeight();
    boolean bool1 = g(paramView);
    int i2 = 0;
    int i5 = 0;
    int i1 = getWidth();
    int i8 = paramCanvas.save();
    int i3 = i1;
    int i4;
    View localView;
    if (bool1)
    {
      int i9 = getChildCount();
      i4 = 0;
      i2 = i5;
      if (i4 < i9)
      {
        localView = getChildAt(i4);
        if ((localView != paramView) && (localView.getVisibility() == 0))
        {
          Drawable localDrawable = localView.getBackground();
          if (localDrawable != null) {
            if (localDrawable.getOpacity() == -1)
            {
              i3 = 1;
              label105:
              if ((i3 == 0) || (!c(localView)) || (localView.getHeight() < i7)) {
                break label215;
              }
              if (!a(localView, 3)) {
                break label193;
              }
              i3 = localView.getRight();
              if (i3 <= i2) {
                break label558;
              }
              i2 = i3;
            }
          }
        }
      }
    }
    label193:
    label215:
    label558:
    for (;;)
    {
      i5 = i2;
      i3 = i1;
      for (;;)
      {
        i4 += 1;
        i1 = i3;
        i2 = i5;
        break;
        i3 = 0;
        break label105;
        i3 = 0;
        break label105;
        int i6 = localView.getLeft();
        i3 = i6;
        i5 = i2;
        if (i6 >= i1)
        {
          i3 = i1;
          i5 = i2;
        }
      }
      paramCanvas.clipRect(i2, 0, i1, getHeight());
      i3 = i1;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i8);
      if ((e > 0.0F) && (bool1))
      {
        i1 = (int)(((d & 0xFF000000) >>> 24) * e);
        i4 = d;
        f.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i2, 0.0F, i3, getHeight(), f);
      }
      do
      {
        return bool2;
        if ((u != null) && (a(paramView, 3)))
        {
          i1 = u.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = g.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          u.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          u.setAlpha((int)(255.0F * f1));
          u.draw(paramCanvas);
          return bool2;
        }
      } while ((v == null) || (!a(paramView, 5)));
      i1 = v.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = h.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      v.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      v.setAlpha((int)(255.0F * f1));
      v.draw(paramCanvas);
      return bool2;
    }
  }
  
  protected final ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new h();
  }
  
  public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new h(getContext(), paramAttributeSet);
  }
  
  protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof h)) {
      return new h((h)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new h((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new h(paramLayoutParams);
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    m = true;
  }
  
  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    m = true;
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = w.a(paramMotionEvent);
    boolean bool2 = g.a(paramMotionEvent);
    boolean bool3 = h.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if ((!(bool2 | bool3)) && (i1 == 0))
      {
        int i2 = getChildCount();
        i1 = 0;
        if (i1 >= i2) {
          break label250;
        }
        if (!getChildAtgetLayoutParamsc) {
          break;
        }
        i1 = 1;
        if ((i1 == 0) && (!q)) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      label85:
      label113:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      s = f1;
      t = f2;
      if ((e <= 0.0F) || (!g(g.b((int)f1, (int)f2)))) {}
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      p = false;
      q = false;
      break label63;
      if (!g.h()) {
        break;
      }
      i.a();
      j.a();
      i1 = 0;
      break label63;
      a(true);
      p = false;
      q = false;
      break;
      i1 += 1;
      break label85;
      label250:
      i1 = 0;
      break label113;
    }
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (f() != null) {}
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        r.c(paramKeyEvent);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public final boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      paramKeyEvent = f();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        a(false);
      }
      if (paramKeyEvent != null) {
        bool = true;
      }
      return bool;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    l = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    while (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      h localh;
      if (localView.getVisibility() != 8)
      {
        localh = (h)localView.getLayoutParams();
        if (g(localView)) {
          localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
        }
      }
      else
      {
        paramInt3 += 1;
        continue;
      }
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i1;
      float f1;
      label163:
      int i2;
      if (a(localView, 3))
      {
        paramInt1 = -i6;
        i1 = (int)(i6 * b) + paramInt1;
        f1 = (i6 + i1) / i6;
        if (f1 == b) {
          break label310;
        }
        i2 = 1;
        label177:
        switch (a & 0x70)
        {
        default: 
          localView.layout(i1, topMargin, i6 + i1, i7 + topMargin);
          label237:
          if (i2 != 0) {
            a(localView, f1);
          }
          if (b <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i1 = i4 - (int)(i6 * b);
        f1 = (i4 - i1) / i6;
        break label163;
        label310:
        i2 = 0;
        break label177;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i1, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - bottomMargin);
        break label237;
        int i8 = paramInt4 - paramInt2;
        int i3 = (i8 - i7) / 2;
        if (i3 < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          break;
          paramInt1 = i3;
          if (i3 + i7 > i8 - bottomMargin) {
            paramInt1 = i8 - bottomMargin - i7;
          }
        }
      }
    }
    l = false;
    m = false;
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = 300;
    int i7 = View.MeasureSpec.getMode(paramInt1);
    int i6 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i5 = View.MeasureSpec.getSize(paramInt2);
    int i2;
    if (i7 == 1073741824)
    {
      i2 = i3;
      if (i6 == 1073741824) {}
    }
    else if (isInEditMode())
    {
      i1 = i3;
      if (i7 != Integer.MIN_VALUE)
      {
        i1 = i3;
        if (i7 == 0) {
          i1 = 300;
        }
      }
      i2 = i1;
      if (i6 == Integer.MIN_VALUE) {
        break label385;
      }
      i2 = i1;
      if (i6 != 0) {
        break label385;
      }
      i2 = i1;
    }
    label231:
    label342:
    label385:
    for (int i1 = i4;; i1 = i5)
    {
      setMeasuredDimension(i2, i1);
      i4 = getChildCount();
      i3 = 0;
      if (i3 < i4)
      {
        View localView = getChildAt(i3);
        h localh;
        if (localView.getVisibility() != 8)
        {
          localh = (h)localView.getLayoutParams();
          if (!g(localView)) {
            break label231;
          }
          localView.measure(View.MeasureSpec.makeMeasureSpec(i2 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i1 - topMargin - bottomMargin, 1073741824));
        }
        for (;;)
        {
          i3 += 1;
          break;
          throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
          if (!c(localView)) {
            break label342;
          }
          i5 = f(localView) & 0x7;
          if ((i5 & 0x0) != 0) {
            throw new IllegalStateException("Child drawer has absolute gravity " + b(i5) + " but this DrawerLayout already has a drawer view along that edge");
          }
          localView.measure(getChildMeasureSpec(paramInt1, c + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
        }
        throw new IllegalStateException("Child " + localView + " at index " + i3 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
      }
      return;
    }
  }
  
  protected final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = a(a);
      if (localView != null) {
        h(localView);
      }
    }
    a(b, 3);
    a(c, 5);
  }
  
  protected final Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2)
      {
        Object localObject = getChildAt(i1);
        if (c((View)localObject))
        {
          localObject = (h)((View)localObject).getLayoutParams();
          if (d) {
            a = a;
          }
        }
      }
      else
      {
        b = n;
        c = o;
        return localSavedState;
      }
      i1 += 1;
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    g.b(paramMotionEvent);
    h.b(paramMotionEvent);
    float f1;
    float f2;
    int i1;
    label199:
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      s = f1;
      t = f2;
      p = false;
      q = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = g.b((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (g(paramMotionEvent)))
      {
        f2 -= s;
        f1 -= t;
        i1 = g.d();
        if (f2 * f2 + f1 * f1 < i1 * i1)
        {
          int i2 = getChildCount();
          i1 = 0;
          if (i1 < i2)
          {
            paramMotionEvent = getChildAt(i1);
            if (getLayoutParamsd)
            {
              if (paramMotionEvent == null) {
                break label265;
              }
              if (a(paramMotionEvent) != 2) {
                break label242;
              }
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      a(bool);
      p = false;
      return true;
      i1 += 1;
      break;
      paramMotionEvent = null;
      break label199;
      label242:
      bool = false;
      continue;
      a(true);
      p = false;
      q = false;
      return true;
      label265:
      bool = true;
    }
  }
  
  public final void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    p = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public final void requestLayout()
  {
    if (!l) {
      super.requestLayout();
    }
  }
  
  public final void setDrawerListener(g paramg)
  {
    r = paramg;
  }
  
  public final void setDrawerLockMode(int paramInt)
  {
    a(paramInt, 3);
    a(paramInt, 5);
  }
  
  public final void setScrimColor(int paramInt)
  {
    d = paramInt;
    invalidate();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */