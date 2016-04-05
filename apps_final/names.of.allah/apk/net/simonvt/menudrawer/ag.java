package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;

public final class ag
  extends f
{
  ag(Activity paramActivity, int paramInt)
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
    switch (ah.a[getPosition().ordinal()])
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
  
  private boolean a(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    switch (ah.a[getPosition().ordinal()])
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
          } while (((F) || (e > I) || (paramFloat1 <= 0.0F)) && ((!F) || (paramInt1 < W)));
          return true;
          paramInt2 = getWidth();
        } while (((F) || (e < paramInt2 - I) || (paramFloat1 >= 0.0F)) && ((!F) || (paramInt1 > paramInt2 + W)));
        return true;
      } while (((F) || (f > I) || (paramFloat2 <= 0.0F)) && ((!F) || (paramInt2 < W)));
      return true;
      paramInt1 = getHeight();
    } while (((F) || (f < paramInt1 - I) || (paramFloat2 >= 0.0F)) && ((!F) || (paramInt2 > paramInt1 + W)));
    return true;
  }
  
  private boolean r()
  {
    switch (ah.a[getPosition().ordinal()])
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
          } while (((F) || (e > I)) && ((!F) || (e < W)));
          return true;
          i = getWidth();
          j = (int)e;
        } while (((F) || (j < i - I)) && ((!F) || (j > i + W)));
        return true;
      } while (((F) || (f > I)) && ((!F) || (f < W)));
      return true;
      i = getHeight();
    } while (((F) || (f < i - I)) && ((!F) || (f > i + W)));
    return true;
  }
  
  protected final void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    super.addView(C, -1, new ViewGroup.LayoutParams(-1, -1));
    super.addView(D, -1, new ViewGroup.LayoutParams(-1, -1));
  }
  
  protected final void a(Canvas paramCanvas)
  {
    int i = getWidth();
    int j = getHeight();
    int k = (int)W;
    float f = Math.abs(W) / E;
    switch (ah.a[getPosition().ordinal()])
    {
    }
    for (;;)
    {
      t.setAlpha((int)(185.0F * (1.0F - f)));
      t.draw(paramCanvas);
      return;
      t.setBounds(0, 0, k, j);
      continue;
      t.setBounds(k + i, 0, i, j);
      continue;
      t.setBounds(0, 0, i, k);
      continue;
      t.setBounds(0, k + j, i, j);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    int i;
    switch (ah.a[getPosition().ordinal()])
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
    int i = 4;
    if (q) {
      switch (ah.a[getPosition().ordinal()])
      {
      case 3: 
      default: 
        D.setTranslationX(paramInt);
        if ((this.m) && (E != 0)) {
          break;
        }
      }
    }
    int k;
    int m;
    for (;;)
    {
      invalidate();
      return;
      D.setTranslationY(paramInt);
      break;
      switch (ah.a[getPosition().ordinal()])
      {
      case 3: 
      default: 
        D.offsetLeftAndRight(paramInt - D.getLeft());
        break;
      case 2: 
      case 4: 
        D.offsetTopAndBottom(paramInt - D.getTop());
        break;
        j = getWidth();
        k = getHeight();
        int n = E;
        m = (int)(W / Math.abs(W));
        float f1 = Math.abs(W) / n;
        float f2 = n;
        m = (int)(m * ((1.0F - f1) * f2 * -0.25F));
        switch (ah.a[getPosition().ordinal()])
        {
        default: 
          break;
        case 1: 
          if (q)
          {
            if (paramInt > 0) {
              C.setTranslationX(m);
            } else {
              C.setTranslationX(-n);
            }
          }
          else
          {
            C.offsetLeftAndRight(m - C.getLeft());
            locala = C;
            if (paramInt == 0) {}
            for (;;)
            {
              locala.setVisibility(i);
              break;
              i = 0;
            }
          }
          break;
        case 3: 
          if (q)
          {
            if (paramInt != 0) {
              C.setTranslationX(m);
            } else {
              C.setTranslationX(n);
            }
          }
          else
          {
            k = C.getRight();
            C.offsetLeftAndRight(m - (k - j));
            locala = C;
            if (paramInt == 0) {}
            for (;;)
            {
              locala.setVisibility(i);
              break;
              i = 0;
            }
          }
          break;
        case 2: 
          if (q)
          {
            if (paramInt > 0) {
              C.setTranslationY(m);
            } else {
              C.setTranslationY(-n);
            }
          }
          else
          {
            C.offsetTopAndBottom(m - C.getTop());
            locala = C;
            if (paramInt == 0) {}
            for (;;)
            {
              locala.setVisibility(i);
              break;
              i = 0;
            }
          }
          break;
        case 4: 
          if (!q) {
            break label553;
          }
          if (paramInt != 0) {
            C.setTranslationY(m);
          } else {
            C.setTranslationY(n);
          }
          break;
        }
        break;
      }
    }
    label553:
    int j = C.getBottom();
    C.offsetTopAndBottom(m - (j - k));
    a locala = C;
    if (paramInt == 0) {}
    for (;;)
    {
      locala.setVisibility(i);
      break;
      i = 0;
    }
  }
  
  protected final void i()
  {
    switch (ah.a[getPosition().ordinal()])
    {
    default: 
      i = E / 3;
      j.a(0, i, 5000);
      return;
    }
    int i = -E / 3;
    j.a(0, i, 5000);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = paramMotionEvent.getAction() & 0xFF;
    if ((k == 1) || (k == 3))
    {
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
        break label741;
      }
      j = paramMotionEvent.findPointerIndex(d);
      i = j;
      if (j != -1) {}
    }
    label741:
    for (int i = 0;; i = 0)
    {
      j = (int)paramMotionEvent.getX(i);
      i = (int)paramMotionEvent.getY(i);
      switch (ah.a[getPosition().ordinal()])
      {
      default: 
        i = 0;
      }
      while (i != 0)
      {
        return true;
        if (al.a(D) < j)
        {
          i = 1;
        }
        else
        {
          i = 0;
          continue;
          if (al.c(D) > j)
          {
            i = 1;
          }
          else
          {
            i = 0;
            continue;
            if (al.b(D) < i)
            {
              i = 1;
            }
            else
            {
              i = 0;
              continue;
              if (al.d(D) > i) {
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
            if (a(f2, f4))
            {
              if ((Q != null) && ((J == 2) || (F)) && (a((int)f2, (int)f4, (int)f1, (int)f3)))
              {
                e();
                requestDisallowInterceptTouchEvent(true);
                return false;
              }
              if (a((int)f1, (int)f3, f2, f4))
              {
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
    if (q) {
      D.layout(0, 0, paramInt1, paramInt2);
    }
    for (;;)
    {
      switch (ah.a[getPosition().ordinal()])
      {
      default: 
        return;
        paramInt3 = (int)W;
        if ((getPosition() == x.a) || (getPosition() == x.c)) {
          D.layout(paramInt3, 0, paramInt1 + paramInt3, paramInt2);
        } else {
          D.layout(0, paramInt3, paramInt1, paramInt2 + paramInt3);
        }
        break;
      }
    }
    C.layout(0, 0, E, paramInt2);
    return;
    C.layout(paramInt1 - E, 0, paramInt1, paramInt2);
    return;
    C.layout(0, 0, paramInt1, E);
    return;
    C.layout(0, paramInt2 - E, paramInt1, paramInt2);
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
    switch (ah.a[getPosition().ordinal()])
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
            if (!a((int)f1, (int)f3, f2, f4)) {
              break label424;
            }
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
          switch (ah.a[getPosition().ordinal()])
          {
          default: 
            break;
          case 1: 
            setOffsetPixels(Math.min(Math.max(W + f2, 0.0F), E));
            break;
            label424:
            e = f1;
            f = f3;
          }
        }
        setOffsetPixels(Math.max(Math.min(W + f2, 0.0F), -E));
        continue;
        setOffsetPixels(Math.min(Math.max(W + f4, 0.0F), E));
        continue;
        setOffsetPixels(Math.max(Math.min(W + f4, 0.0F), -E));
        continue;
        int j = paramMotionEvent.findPointerIndex(d);
        i = j;
        if (j == -1) {
          i = 0;
        }
        j = (int)paramMotionEvent.getX(i);
        i = (int)paramMotionEvent.getY(i);
        int k = (int)W;
        switch (ah.a[getPosition().ordinal()])
        {
        }
        for (;;)
        {
          d = -1;
          c = false;
          break;
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
          if ((F) && (j > k))
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
            if ((F) && (i > k))
            {
              p();
              continue;
              i = getWidth();
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
              if ((F) && (j < i + k))
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
                if ((F) && (i < getHeight() + k)) {
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
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */