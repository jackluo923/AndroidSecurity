package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
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
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;

public class CirclePageIndicator
  extends View
  implements c
{
  private float a;
  private float b;
  private final Paint c = new Paint(1);
  private final Paint d = new Paint(1);
  private final Paint e = new Paint(1);
  private ViewPager f;
  private bb g;
  private int h;
  private int i;
  private float j;
  private int k;
  private int l;
  private boolean m;
  private boolean n;
  private int o;
  private float p = -1.0F;
  private int q = -1;
  private boolean r;
  
  public CirclePageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CirclePageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, e.vpiCirclePageIndicatorStyle);
  }
  
  public CirclePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    int i1 = ((Resources)localObject).getColor(g.default_circle_indicator_page_color);
    int i2 = ((Resources)localObject).getColor(g.default_circle_indicator_fill_color);
    int i3 = ((Resources)localObject).getInteger(i.default_circle_indicator_orientation);
    int i4 = ((Resources)localObject).getColor(g.default_circle_indicator_stroke_color);
    float f1 = ((Resources)localObject).getDimension(h.default_circle_indicator_stroke_width);
    float f2 = ((Resources)localObject).getDimension(h.default_circle_indicator_radius);
    float f3 = ((Resources)localObject).getDimension(h.default_circle_indicator_gap);
    boolean bool1 = ((Resources)localObject).getBoolean(f.default_circle_indicator_centered);
    boolean bool2 = ((Resources)localObject).getBoolean(f.default_circle_indicator_snap);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.CirclePageIndicator, paramInt, 0);
    m = paramAttributeSet.getBoolean(2, bool1);
    l = paramAttributeSet.getInt(0, i3);
    c.setStyle(Paint.Style.FILL);
    c.setColor(paramAttributeSet.getColor(5, i1));
    d.setStyle(Paint.Style.STROKE);
    d.setColor(paramAttributeSet.getColor(9, i4));
    d.setStrokeWidth(paramAttributeSet.getDimension(3, f1));
    e.setStyle(Paint.Style.FILL);
    e.setColor(paramAttributeSet.getColor(4, i2));
    a = paramAttributeSet.getDimension(6, f2);
    b = paramAttributeSet.getDimension(7, f3);
    n = paramAttributeSet.getBoolean(8, bool2);
    localObject = paramAttributeSet.getDrawable(1);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    o = ap.a(ViewConfiguration.get(paramContext));
  }
  
  private int c(int paramInt)
  {
    int i3 = View.MeasureSpec.getMode(paramInt);
    int i1 = View.MeasureSpec.getSize(paramInt);
    if ((i3 == 1073741824) || (f == null)) {
      paramInt = i1;
    }
    int i2;
    do
    {
      return paramInt;
      paramInt = f.getAdapter().getCount();
      float f1 = getPaddingLeft() + getPaddingRight();
      float f2 = paramInt * 2;
      float f3 = a;
      i2 = (int)((paramInt - 1) * a + (f1 + f2 * f3) + 1.0F);
      paramInt = i2;
    } while (i3 != Integer.MIN_VALUE);
    return Math.min(i2, i1);
  }
  
  private int d(int paramInt)
  {
    int i1 = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    if (i1 == 1073741824) {
      return paramInt;
    }
    int i2 = (int)(2.0F * a + getPaddingTop() + getPaddingBottom() + 1.0F);
    if (i1 == Integer.MIN_VALUE) {
      return Math.min(i2, paramInt);
    }
    return i2;
  }
  
  public final void a(int paramInt)
  {
    if ((n) || (k == 0))
    {
      h = paramInt;
      i = paramInt;
      invalidate();
    }
    if (g != null) {
      g.a(paramInt);
    }
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    h = paramInt1;
    j = paramFloat;
    invalidate();
    if (g != null) {
      g.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    k = paramInt;
    if (g != null) {
      g.b(paramInt);
    }
  }
  
  public int getFillColor()
  {
    return e.getColor();
  }
  
  public float getGapSize()
  {
    return b;
  }
  
  public int getOrientation()
  {
    return l;
  }
  
  public int getPageColor()
  {
    return c.getColor();
  }
  
  public float getRadius()
  {
    return a;
  }
  
  public int getStrokeColor()
  {
    return d.getColor();
  }
  
  public float getStrokeWidth()
  {
    return d.getStrokeWidth();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (f == null) {}
    int i5;
    do
    {
      return;
      i5 = f.getAdapter().getCount();
    } while (i5 == 0);
    if (h >= i5)
    {
      setCurrentItem(i5 - 1);
      return;
    }
    int i4;
    int i3;
    int i2;
    int i1;
    float f6;
    float f1;
    float f3;
    float f2;
    float f4;
    label193:
    float f5;
    if (l == 0)
    {
      i4 = getWidth();
      i3 = getPaddingLeft();
      i2 = getPaddingRight();
      i1 = getPaddingTop();
      f6 = a * 3.0F + b;
      f1 = i1;
      f1 = a + f1;
      f3 = i3 + a + b;
      f2 = f3;
      if (m) {
        f2 = f3 + ((i4 - i3 - i2) / 2.0F - i5 * f6 / 2.0F);
      }
      f4 = a;
      f3 = f4;
      if (d.getStrokeWidth() > 0.0F) {
        f3 = f4 - d.getStrokeWidth() / 2.0F;
      }
      i1 = 0;
      if (i1 >= i5) {
        break label316;
      }
      f4 = i1 * f6 + f2;
      if (l != 0) {
        break label310;
      }
      f5 = f4;
      f4 = f1;
    }
    for (;;)
    {
      if (c.getAlpha() > 0) {
        paramCanvas.drawCircle(f5, f4, f3, c);
      }
      if (f3 != a) {
        paramCanvas.drawCircle(f5, f4, a, d);
      }
      i1 += 1;
      break label193;
      i4 = getHeight();
      i3 = getPaddingTop();
      i2 = getPaddingBottom();
      i1 = getPaddingLeft();
      break;
      label310:
      f5 = f1;
    }
    label316:
    if (n)
    {
      i1 = i;
      f4 = i1 * f6;
      f3 = f4;
      if (!n) {
        f3 = f4 + j * f6;
      }
      if (l != 0) {
        break label402;
      }
      f3 = f2 + f3;
      f2 = f1;
      f1 = f3;
    }
    for (;;)
    {
      paramCanvas.drawCircle(f1, f2, a, e);
      return;
      i1 = h;
      break;
      label402:
      f2 += f3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (l == 0)
    {
      setMeasuredDimension(c(paramInt1), d(paramInt2));
      return;
    }
    setMeasuredDimension(d(paramInt1), c(paramInt2));
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (CirclePageIndicator.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    h = a;
    i = a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    CirclePageIndicator.SavedState localSavedState = new CirclePageIndicator.SavedState(super.onSaveInstanceState());
    a = h;
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
              if ((f == null) || (f.getAdapter().getCount() == 0)) {
                return false;
              }
              i2 = paramMotionEvent.getAction() & 0xFF;
              switch (i2)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                q = w.b(paramMotionEvent, 0);
                p = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = w.c(paramMotionEvent, w.a(paramMotionEvent, q));
                f2 = f1 - p;
                if ((!r) && (Math.abs(f2) > o)) {
                  r = true;
                }
                break;
              }
            } while (!r);
            p = f1;
          } while ((!f.isFakeDragging()) && (!f.beginFakeDrag()));
          f.fakeDragBy(f2);
          return true;
          if (r) {
            break label317;
          }
          i1 = f.getAdapter().getCount();
          int i3 = getWidth();
          f1 = i3 / 2.0F;
          f2 = i3 / 6.0F;
          if ((h <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
            break;
          }
        } while (i2 == 3);
        f.setCurrentItem(h - 1);
        return true;
        if ((h >= i1 - 1) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (i2 == 3);
      f.setCurrentItem(h + 1);
      return true;
      r = false;
      q = -1;
    } while (!f.isFakeDragging());
    f.endFakeDrag();
    return true;
    i1 = w.b(paramMotionEvent);
    p = w.c(paramMotionEvent, i1);
    q = w.b(paramMotionEvent, i1);
    return true;
    int i2 = w.b(paramMotionEvent);
    if (w.b(paramMotionEvent, i2) == q)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      q = w.b(paramMotionEvent, i1);
    }
    p = w.c(paramMotionEvent, w.a(paramMotionEvent, q));
    return true;
  }
  
  public void setCentered(boolean paramBoolean)
  {
    m = paramBoolean;
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (f == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    f.setCurrentItem(paramInt);
    h = paramInt;
    invalidate();
  }
  
  public void setFillColor(int paramInt)
  {
    e.setColor(paramInt);
    invalidate();
  }
  
  public void setGap(float paramFloat)
  {
    b = paramFloat;
    invalidate();
  }
  
  public void setOnPageChangeListener(bb parambb)
  {
    g = parambb;
  }
  
  public void setOrientation(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }
    l = paramInt;
    requestLayout();
  }
  
  public void setPageColor(int paramInt)
  {
    c.setColor(paramInt);
    invalidate();
  }
  
  public void setRadius(float paramFloat)
  {
    a = paramFloat;
    invalidate();
  }
  
  public void setSnap(boolean paramBoolean)
  {
    n = paramBoolean;
    invalidate();
  }
  
  public void setStrokeColor(int paramInt)
  {
    d.setColor(paramInt);
    invalidate();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    d.setStrokeWidth(paramFloat);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (f == paramViewPager) {
      return;
    }
    if (f != null) {
      f.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    f = paramViewPager;
    f.setOnPageChangeListener(this);
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.viewpagerindicator.CirclePageIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */