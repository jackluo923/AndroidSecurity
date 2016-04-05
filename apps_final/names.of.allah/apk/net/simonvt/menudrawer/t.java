package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;

public final class t
  extends f
{
  private int aa;
  private Runnable ab = new u(this);
  
  t(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i) == d) {
      if (i != 0) {
        break label56;
      }
    }
    label56:
    for (i = 1;; i = 0)
    {
      g = paramMotionEvent.getX(i);
      d = paramMotionEvent.getPointerId(i);
      if (k != null) {
        k.clear();
      }
      return;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    switch (v.a[getPosition().ordinal()])
    {
    case 3: 
    default: 
      if ((Math.abs(paramFloat1) <= a) || (Math.abs(paramFloat1) <= Math.abs(paramFloat2))) {
        break;
      }
    case 2: 
    case 4: 
      do
      {
        return true;
      } while ((Math.abs(paramFloat2) > a) && (Math.abs(paramFloat2) > Math.abs(paramFloat1)));
      return false;
    }
    return false;
  }
  
  private boolean a(int paramInt, float paramFloat1, float paramFloat2)
  {
    if ((F) && (J == 2)) {}
    int i;
    do
    {
      do
      {
        do
        {
          do
          {
            return true;
            switch (v.a[getPosition().ordinal()])
            {
            default: 
              return false;
            }
          } while (((!F) && (e <= I) && (paramFloat1 > 0.0F)) || ((F) && (paramInt <= W)) || ((Math.abs(W) <= aa) && (F)));
          return false;
          i = getWidth();
        } while (((!F) && (e >= i - I) && (paramFloat1 < 0.0F)) || ((F) && (paramInt >= i - W)) || ((Math.abs(W) <= aa) && (F)));
        return false;
      } while (((!F) && (f <= I) && (paramFloat2 > 0.0F)) || ((F) && (paramInt <= W)) || ((Math.abs(W) <= aa) && (F)));
      return false;
      i = getHeight();
    } while (((!F) && (f >= i - I) && (paramFloat2 < 0.0F)) || ((F) && (paramInt >= i - W)) || ((Math.abs(W) <= aa) && (F)));
    return false;
  }
  
  private boolean r()
  {
    switch (v.a[getPosition().ordinal()])
    {
    }
    int i;
    do
    {
      do
      {
        int j;
        do
        {
          do
          {
            return false;
          } while (((F) || (e > I)) && ((!F) || (e > W)));
          return true;
          i = getWidth();
          j = (int)e;
        } while (((F) || (j < i - I)) && ((!F) || (j < i + W)));
        return true;
      } while (((F) || (f > I)) && ((!F) || (f > W)));
      return true;
      i = getHeight();
    } while (((F) || (f < i - I)) && ((!F) || (f < i + W)));
    return true;
  }
  
  protected final void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    super.addView(D, -1, new ViewGroup.LayoutParams(-1, -1));
    if (q) {
      D.setLayerType(0, null);
    }
    D.a(false);
    super.addView(C, -1, new ViewGroup.LayoutParams(-1, -1));
    aa = a(20);
  }
  
  protected final void a(Canvas paramCanvas)
  {
    int i = getWidth();
    int j = getHeight();
    int k = (int)W;
    float f = Math.abs(W) / E;
    switch (v.a[getPosition().ordinal()])
    {
    }
    for (;;)
    {
      t.setAlpha((int)(185.0F * f));
      t.draw(paramCanvas);
      return;
      t.setBounds(k, 0, i, j);
      continue;
      t.setBounds(0, 0, i + k, j);
      continue;
      t.setBounds(0, k, i, j);
      continue;
      t.setBounds(0, 0, i, j + k);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    int i;
    switch (v.a[getPosition().ordinal()])
    {
    default: 
      i = 0;
    }
    for (;;)
    {
      a(i, 0, paramBoolean);
      return;
      i = E;
      continue;
      i = -E;
    }
  }
  
  protected final void b(int paramInt)
  {
    if (q) {
      switch (v.a[getPosition().ordinal()])
      {
      }
    }
    for (;;)
    {
      invalidate();
      return;
      C.setTranslationX(paramInt - E);
      continue;
      C.setTranslationY(paramInt - E);
      continue;
      C.setTranslationX(E + paramInt);
      continue;
      C.setTranslationY(E + paramInt);
      continue;
      switch (v.a[getPosition().ordinal()])
      {
      default: 
        break;
      case 1: 
        C.offsetLeftAndRight(paramInt - (C.getLeft() - getWidth()));
        break;
      case 4: 
        C.offsetTopAndBottom(paramInt - C.getBottom());
        break;
      case 2: 
        C.offsetTopAndBottom(paramInt - (C.getTop() - getHeight()));
        break;
      case 3: 
        C.offsetLeftAndRight(paramInt - C.getRight());
      }
    }
  }
  
  protected final void c()
  {
    if ((q) && (K) && (!p))
    {
      p = true;
      C.setLayerType(2, null);
    }
  }
  
  protected final void d()
  {
    if (p)
    {
      p = false;
      C.setLayerType(0, null);
    }
  }
  
  protected final void f()
  {
    super.f();
    removeCallbacks(ab);
  }
  
  protected final GradientDrawable.Orientation getDropShadowOrientation()
  {
    switch (v.a[getPosition().ordinal()])
    {
    case 3: 
    default: 
      return GradientDrawable.Orientation.LEFT_RIGHT;
    case 4: 
      return GradientDrawable.Orientation.TOP_BOTTOM;
    case 1: 
      return GradientDrawable.Orientation.RIGHT_LEFT;
    }
    return GradientDrawable.Orientation.BOTTOM_TOP;
  }
  
  protected final void i()
  {
    switch (v.a[getPosition().ordinal()])
    {
    default: 
      i = aa;
      j.a(0, i, 5000);
      return;
    }
    int i = -aa;
    j.a(0, i, 5000);
  }
  
  protected final void l()
  {
    int i = (int)(Math.abs(W) / E * x);
    switch (v.a[getPosition().ordinal()])
    {
    default: 
      return;
    case 3: 
      V.top = 0;
      V.bottom = getHeight();
      V.left = al.c(C);
      V.right = (i + V.left);
      return;
    case 4: 
      V.left = 0;
      V.right = getWidth();
      V.top = al.d(C);
      V.bottom = (i + V.top);
      return;
    case 1: 
      V.top = 0;
      V.bottom = getHeight();
      V.right = al.a(C);
      V.left = (V.right - i);
      return;
    }
    V.left = 0;
    V.right = getWidth();
    V.bottom = al.b(C);
    V.top = (V.bottom - i);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = paramMotionEvent.getAction() & 0xFF;
    if ((k == 1) || (k == 3))
    {
      removeCallbacks(ab);
      d = -1;
      c = false;
      if (this.k != null)
      {
        this.k.recycle();
        this.k = null;
      }
      if (Math.abs(W) > E / 2)
      {
        a(true);
        return false;
      }
      p();
      return false;
    }
    if ((k == 0) && (F) && (k()))
    {
      setOffsetPixels(0.0F);
      f();
      j();
      setDrawerState(0);
      c = false;
    }
    int j;
    if (F)
    {
      if (d == -1) {
        break label830;
      }
      j = paramMotionEvent.findPointerIndex(d);
      i = j;
      if (j != -1) {}
    }
    label830:
    for (int i = 0;; i = 0)
    {
      j = (int)paramMotionEvent.getX(i);
      i = (int)paramMotionEvent.getY(i);
      switch (v.a[getPosition().ordinal()])
      {
      default: 
        i = 0;
      }
      while (i != 0)
      {
        return true;
        if (al.c(C) < j)
        {
          i = 1;
        }
        else
        {
          i = 0;
          continue;
          if (al.a(C) > j)
          {
            i = 1;
          }
          else
          {
            i = 0;
            continue;
            if (al.d(C) < i)
            {
              i = 1;
            }
            else
            {
              i = 0;
              continue;
              if (al.b(C) > i) {
                i = 1;
              } else {
                i = 0;
              }
            }
          }
        }
      }
      if ((!F) && (!c) && (J == 0)) {
        break;
      }
      if ((k != 0) && (c)) {
        return true;
      }
      switch (k)
      {
      }
      for (;;)
      {
        if (this.k == null) {
          this.k = VelocityTracker.obtain();
        }
        this.k.addMovement(paramMotionEvent);
        return c;
        float f1 = paramMotionEvent.getX();
        e = f1;
        g = f1;
        f1 = paramMotionEvent.getY();
        f = f1;
        h = f1;
        f1 = g;
        f1 = h;
        boolean bool = r();
        d = paramMotionEvent.getPointerId(0);
        if (bool)
        {
          if (F) {}
          for (i = 8;; i = 0)
          {
            setDrawerState(i);
            f();
            j();
            if ((!F) && (e <= aa)) {
              postDelayed(ab, 160L);
            }
            c = false;
            break;
          }
          i = d;
          if (i != -1)
          {
            i = paramMotionEvent.findPointerIndex(i);
            if (i == -1)
            {
              c = false;
              d = -1;
              e();
              a(0, 0, true);
              return false;
            }
            f1 = paramMotionEvent.getX(i);
            float f2 = f1 - g;
            float f3 = paramMotionEvent.getY(i);
            float f4 = f3 - h;
            if ((Math.abs(f2) >= a) || (Math.abs(f4) >= a))
            {
              removeCallbacks(ab);
              j();
            }
            if (a(f2, f4))
            {
              if ((Q != null) && ((J == 2) || (F)) && (a((int)f2, (int)f4, (int)f1, (int)f3)))
              {
                e();
                requestDisallowInterceptTouchEvent(true);
                return false;
              }
              if (a((int)f1, f2, f4))
              {
                j();
                f();
                setDrawerState(2);
                c = true;
                g = f1;
                h = f3;
                continue;
                a(paramMotionEvent);
                g = paramMotionEvent.getX(paramMotionEvent.findPointerIndex(d));
                h = paramMotionEvent.getY(paramMotionEvent.findPointerIndex(d));
              }
            }
          }
        }
      }
    }
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    D.layout(0, 0, paramInt1, paramInt2);
    if (q)
    {
      switch (v.a[getPosition().ordinal()])
      {
      default: 
        return;
      case 3: 
        C.layout(0, 0, E, paramInt2);
        return;
      case 1: 
        C.layout(paramInt1 - E, 0, paramInt1, paramInt2);
        return;
      case 4: 
        C.layout(0, 0, paramInt1, E);
        return;
      }
      C.layout(0, paramInt2 - E, paramInt1, paramInt2);
      return;
    }
    paramInt3 = (int)W;
    paramInt4 = E;
    switch (v.a[getPosition().ordinal()])
    {
    default: 
      return;
    case 1: 
      C.layout(paramInt1 + paramInt3, 0, paramInt1 + paramInt4 + paramInt3, paramInt2);
      return;
    case 3: 
      C.layout(-paramInt4 + paramInt3, 0, paramInt3, paramInt2);
      return;
    case 4: 
      C.layout(0, -paramInt4 + paramInt3, paramInt1, paramInt3);
      return;
    }
    C.layout(0, paramInt2 + paramInt3, paramInt1, paramInt2 + paramInt4 + paramInt3);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    if ((i == 0) || (j == 0)) {
      throw new IllegalStateException("Must measure with an exact size");
    }
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    if (W == -1.0F) {
      a(false);
    }
    switch (v.a[getPosition().ordinal()])
    {
    case 3: 
    default: 
      paramInt2 = getChildMeasureSpec(paramInt1, 0, E);
    }
    for (i = getChildMeasureSpec(paramInt1, 0, m);; i = j)
    {
      C.measure(paramInt2, i);
      paramInt2 = getChildMeasureSpec(paramInt1, 0, k);
      paramInt1 = getChildMeasureSpec(paramInt1, 0, m);
      D.measure(paramInt2, paramInt1);
      setMeasuredDimension(k, m);
      q();
      return;
      i = getChildMeasureSpec(paramInt1, 0, k);
      j = getChildMeasureSpec(paramInt2, 0, E);
      paramInt2 = i;
    }
  }
  
  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    b((int)W);
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!F) && (!c) && (J == 0)) {
      return false;
    }
    int i = paramMotionEvent.getAction();
    if (this.k == null) {
      this.k = VelocityTracker.obtain();
    }
    this.k.addMovement(paramMotionEvent);
    switch (i & 0xFF)
    {
    }
    for (;;)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      e = f1;
      g = f1;
      f1 = paramMotionEvent.getY();
      f = f1;
      h = f1;
      f1 = g;
      f1 = h;
      boolean bool = r();
      d = paramMotionEvent.getPointerId(0);
      if (bool)
      {
        f();
        j();
        if ((!F) && (g <= aa)) {
          postDelayed(ab, 160L);
        }
        c();
        continue;
        i = paramMotionEvent.findPointerIndex(d);
        if (i == -1)
        {
          c = false;
          d = -1;
          e();
          a(0, 0, true);
          return false;
        }
        float f2;
        float f3;
        float f4;
        if (!c)
        {
          f1 = paramMotionEvent.getX(i);
          f2 = f1 - g;
          f3 = paramMotionEvent.getY(i);
          f4 = f3 - h;
          if (a(f2, f4))
          {
            if (!a((int)f1, f2, f4)) {
              break label461;
            }
            j();
            f();
            setDrawerState(2);
            c = true;
            g = f1;
            h = f3;
          }
        }
        while (c)
        {
          c();
          f1 = paramMotionEvent.getX(i);
          f2 = f1 - g;
          f3 = paramMotionEvent.getY(i);
          f4 = f3 - h;
          g = f1;
          h = f3;
          switch (v.a[getPosition().ordinal()])
          {
          default: 
            break;
          case 1: 
            setOffsetPixels(Math.max(Math.min(W + f2, 0.0F), -E));
            break;
            label461:
            e = f1;
            f = f3;
          }
        }
        setOffsetPixels(Math.min(Math.max(W + f2, 0.0F), E));
        continue;
        setOffsetPixels(Math.min(Math.max(W + f4, 0.0F), E));
        continue;
        setOffsetPixels(Math.max(Math.min(W + f4, 0.0F), -E));
        continue;
        removeCallbacks(ab);
        int j = paramMotionEvent.findPointerIndex(d);
        i = j;
        if (j == -1) {
          i = 0;
        }
        j = (int)paramMotionEvent.getX(i);
        i = (int)paramMotionEvent.getY(i);
        f1 = W;
        switch (v.a[getPosition().ordinal()])
        {
        }
        for (;;)
        {
          d = -1;
          c = false;
          break;
          int k;
          if (c)
          {
            this.k.computeCurrentVelocity(1000, l);
            k = (int)a(this.k);
            g = j;
            if (k > 0) {}
            for (i = E;; i = 0)
            {
              a(i, k, true);
              break;
            }
          }
          if (F)
          {
            p();
            continue;
            if (c)
            {
              this.k.computeCurrentVelocity(1000, l);
              j = (int)b(this.k);
              h = i;
              if (j > 0) {}
              for (i = E;; i = 0)
              {
                a(i, j, true);
                break;
              }
            }
            if (F)
            {
              p();
              continue;
              getWidth();
              if (c)
              {
                this.k.computeCurrentVelocity(1000, l);
                k = (int)a(this.k);
                g = j;
                if (k > 0) {}
                for (i = 0;; i = -E)
                {
                  a(i, k, true);
                  break;
                }
              }
              if (F)
              {
                p();
                continue;
                if (c)
                {
                  this.k.computeCurrentVelocity(1000, l);
                  j = (int)b(this.k);
                  h = i;
                  if (j < 0) {}
                  for (i = -E;; i = 0)
                  {
                    a(i, j, true);
                    break;
                  }
                }
                if (F) {
                  p();
                }
              }
            }
          }
        }
        i = (paramMotionEvent.getAction() & 0xFF00) >> 8;
        g = paramMotionEvent.getX(i);
        h = paramMotionEvent.getY(i);
        d = paramMotionEvent.getPointerId(i);
        continue;
        a(paramMotionEvent);
        g = paramMotionEvent.getX(paramMotionEvent.findPointerIndex(d));
        h = paramMotionEvent.getY(paramMotionEvent.findPointerIndex(d));
      }
    }
  }
  
  public final void p()
  {
    a(0, 0, true);
  }
  
  public final void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    removeCallbacks(ab);
    if (o)
    {
      j();
      a(0, 5000);
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */