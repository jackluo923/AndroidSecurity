package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.aa;
import android.support.v4.view.ap;
import android.support.v4.view.bb;
import android.support.v4.view.w;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

public class UnderlinePageIndicator
  extends View
  implements c
{
  private final Paint a = new Paint(1);
  private boolean b;
  private int c;
  private int d;
  private int e;
  private int f = 0;
  private ViewPager g;
  private bb h;
  private int i;
  private int j;
  private float k;
  private int l;
  private float m = -1.0F;
  private int n = -1;
  private boolean o;
  private final Runnable p = new p(this);
  
  public UnderlinePageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public UnderlinePageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, e.vpiUnderlinePageIndicatorStyle);
  }
  
  public UnderlinePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    boolean bool = ((Resources)localObject).getBoolean(f.default_underline_indicator_fades);
    int i1 = ((Resources)localObject).getInteger(i.default_underline_indicator_fade_delay);
    int i2 = ((Resources)localObject).getInteger(i.default_underline_indicator_fade_length);
    int i3 = ((Resources)localObject).getColor(g.default_underline_indicator_selected_color);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.UnderlinePageIndicator, paramInt, 0);
    setFades(paramAttributeSet.getBoolean(2, bool));
    setSelectedColor(paramAttributeSet.getColor(1, i3));
    setFadeDelay(paramAttributeSet.getInteger(3, i1));
    setFadeLength(paramAttributeSet.getInteger(4, i2));
    localObject = paramAttributeSet.getDrawable(0);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    l = ap.a(ViewConfiguration.get(paramContext));
  }
  
  public final void a(int paramInt)
  {
    if (i == 0)
    {
      j = paramInt;
      k = 0.0F;
      invalidate();
      p.run();
    }
    if (h != null) {
      h.a(paramInt);
    }
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    j = paramInt1;
    k = paramFloat;
    if (b)
    {
      if (paramInt2 <= 0) {
        break label64;
      }
      removeCallbacks(p);
      a.setAlpha(255);
    }
    for (;;)
    {
      invalidate();
      if (h != null) {
        h.a(paramInt1, paramFloat, paramInt2);
      }
      return;
      label64:
      if (i != 1) {
        postDelayed(p, c);
      }
    }
  }
  
  public final void b(int paramInt)
  {
    i = paramInt;
    if (h != null) {
      h.b(paramInt);
    }
  }
  
  public int getFadeDelay()
  {
    return c;
  }
  
  public int getFadeLength()
  {
    return d;
  }
  
  public boolean getFades()
  {
    return b;
  }
  
  public int getSelectedColor()
  {
    return a.getColor();
  }
  
  public int getThumbWidth()
  {
    return f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (g == null) {}
    int i1;
    do
    {
      return;
      i1 = g.getAdapter().getCount();
    } while (i1 == 0);
    if (j >= i1)
    {
      setCurrentItem(i1 - 1);
      return;
    }
    int i2 = getPaddingLeft();
    float f2 = (getWidth() - i2 - getPaddingRight()) / (1.0F * i1);
    float f1;
    if (f == 0)
    {
      f1 = i2;
      f1 = (j + k) * f2 + f1;
      if (f != 0) {
        break label165;
      }
    }
    label165:
    for (f2 = f1 + f2;; f2 = f1 + f)
    {
      paramCanvas.drawRect(f1, getPaddingTop(), f2, getHeight() - getPaddingBottom(), a);
      return;
      f1 = (getWidth() - f) / (i1 - 1);
      f1 = j * f1;
      break;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (UnderlinePageIndicator.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    j = a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    UnderlinePageIndicator.SavedState localSavedState = new UnderlinePageIndicator.SavedState(super.onSaveInstanceState());
    a = j;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (super.onTouchEvent(paramMotionEvent)) {}
    label317:
    do
    {
      do
      {
        float f1;
        float f2;
        do
        {
          do
          {
            do
            {
              return true;
              if ((g == null) || (g.getAdapter().getCount() == 0)) {
                return false;
              }
              i2 = paramMotionEvent.getAction() & 0xFF;
              switch (i2)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                n = w.b(paramMotionEvent, 0);
                m = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = w.c(paramMotionEvent, w.a(paramMotionEvent, n));
                f2 = f1 - m;
                if ((!o) && (Math.abs(f2) > l)) {
                  o = true;
                }
                break;
              }
            } while (!o);
            m = f1;
          } while ((!g.isFakeDragging()) && (!g.beginFakeDrag()));
          g.fakeDragBy(f2);
          return true;
          if (o) {
            break label317;
          }
          i1 = g.getAdapter().getCount();
          int i3 = getWidth();
          f1 = i3 / 2.0F;
          f2 = i3 / 6.0F;
          if ((j <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
            break;
          }
        } while (i2 == 3);
        g.setCurrentItem(j - 1);
        return true;
        if ((j >= i1 - 1) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (i2 == 3);
      g.setCurrentItem(j + 1);
      return true;
      o = false;
      n = -1;
    } while (!g.isFakeDragging());
    g.endFakeDrag();
    return true;
    i1 = w.b(paramMotionEvent);
    m = w.c(paramMotionEvent, i1);
    n = w.b(paramMotionEvent, i1);
    return true;
    int i2 = w.b(paramMotionEvent);
    if (w.b(paramMotionEvent, i2) == n)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      n = w.b(paramMotionEvent, i1);
    }
    m = w.c(paramMotionEvent, w.a(paramMotionEvent, n));
    return true;
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (g == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    g.setCurrentItem(paramInt);
    j = paramInt;
    invalidate();
  }
  
  public void setFadeDelay(int paramInt)
  {
    c = paramInt;
  }
  
  public void setFadeLength(int paramInt)
  {
    d = paramInt;
    e = (255 / (d / 30));
  }
  
  public void setFades(boolean paramBoolean)
  {
    if (paramBoolean != b)
    {
      b = paramBoolean;
      if (paramBoolean) {
        post(p);
      }
    }
    else
    {
      return;
    }
    removeCallbacks(p);
    a.setAlpha(255);
    invalidate();
  }
  
  public void setOnPageChangeListener(bb parambb)
  {
    h = parambb;
  }
  
  public void setSelectedColor(int paramInt)
  {
    a.setColor(paramInt);
    invalidate();
  }
  
  public void setThumbWidth(int paramInt)
  {
    f = paramInt;
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (g == paramViewPager) {
      return;
    }
    if (g != null) {
      g.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    g = paramViewPager;
    g.setOnPageChangeListener(this);
    invalidate();
    post(new q(this));
  }
}

/* Location:
 * Qualified Name:     com.viewpagerindicator.UnderlinePageIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */