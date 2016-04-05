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
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;

public class LinePageIndicator
  extends View
  implements c
{
  private final Paint a = new Paint(1);
  private final Paint b = new Paint(1);
  private ViewPager c;
  private bb d;
  private int e;
  private boolean f;
  private float g;
  private float h;
  private int i;
  private float j = -1.0F;
  private int k = -1;
  private boolean l;
  
  public LinePageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LinePageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, e.vpiLinePageIndicatorStyle);
  }
  
  public LinePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    int m = ((Resources)localObject).getColor(g.default_line_indicator_selected_color);
    int n = ((Resources)localObject).getColor(g.default_line_indicator_unselected_color);
    float f1 = ((Resources)localObject).getDimension(h.default_line_indicator_line_width);
    float f2 = ((Resources)localObject).getDimension(h.default_line_indicator_gap_width);
    float f3 = ((Resources)localObject).getDimension(h.default_line_indicator_stroke_width);
    boolean bool = ((Resources)localObject).getBoolean(f.default_line_indicator_centered);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.LinePageIndicator, paramInt, 0);
    f = paramAttributeSet.getBoolean(1, bool);
    g = paramAttributeSet.getDimension(5, f1);
    h = paramAttributeSet.getDimension(6, f2);
    setStrokeWidth(paramAttributeSet.getDimension(3, f3));
    a.setColor(paramAttributeSet.getColor(4, n));
    b.setColor(paramAttributeSet.getColor(2, m));
    localObject = paramAttributeSet.getDrawable(0);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    i = ap.a(ViewConfiguration.get(paramContext));
  }
  
  public final void a(int paramInt)
  {
    e = paramInt;
    invalidate();
    if (d != null) {
      d.a(paramInt);
    }
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (d != null) {
      d.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    if (d != null) {
      d.b(paramInt);
    }
  }
  
  public float getGapWidth()
  {
    return h;
  }
  
  public float getLineWidth()
  {
    return g;
  }
  
  public int getSelectedColor()
  {
    return b.getColor();
  }
  
  public float getStrokeWidth()
  {
    return b.getStrokeWidth();
  }
  
  public int getUnselectedColor()
  {
    return a.getColor();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (c == null) {}
    int n;
    do
    {
      return;
      n = c.getAdapter().getCount();
    } while (n == 0);
    if (e >= n)
    {
      setCurrentItem(n - 1);
      return;
    }
    float f2 = g + h;
    float f4 = n;
    float f5 = h;
    float f3 = getPaddingTop();
    float f1 = getPaddingLeft();
    float f6 = getPaddingRight();
    f3 += (getHeight() - f3 - getPaddingBottom()) / 2.0F;
    if (f) {
      f1 += (getWidth() - f1 - f6) / 2.0F - (f4 * f2 - f5) / 2.0F;
    }
    for (;;)
    {
      int m = 0;
      label145:
      if (m < n)
      {
        f4 = f1 + m * f2;
        f5 = g;
        if (m != e) {
          break label208;
        }
      }
      label208:
      for (Paint localPaint = b;; localPaint = a)
      {
        paramCanvas.drawLine(f4, f3, f4 + f5, f3, localPaint);
        m += 1;
        break label145;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    float f1;
    if ((m == 1073741824) || (c == null))
    {
      f1 = paramInt1;
      paramInt1 = (int)FloatMath.ceil(f1);
      m = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      if (m != 1073741824) {
        break label141;
      }
      f1 = paramInt2;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, (int)FloatMath.ceil(f1));
      return;
      int n = c.getAdapter().getCount();
      f1 = getPaddingLeft() + getPaddingRight();
      float f2 = n;
      float f3 = g;
      f2 = (n - 1) * h + (f1 + f2 * f3);
      f1 = f2;
      if (m != Integer.MIN_VALUE) {
        break;
      }
      f1 = Math.min(f2, paramInt1);
      break;
      label141:
      f2 = b.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
      f1 = f2;
      if (m == Integer.MIN_VALUE) {
        f1 = Math.min(f2, paramInt2);
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (LinePageIndicator.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    e = a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    LinePageIndicator.SavedState localSavedState = new LinePageIndicator.SavedState(super.onSaveInstanceState());
    a = e;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int m = 0;
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
              if ((c == null) || (c.getAdapter().getCount() == 0)) {
                return false;
              }
              n = paramMotionEvent.getAction() & 0xFF;
              switch (n)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                k = w.b(paramMotionEvent, 0);
                j = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = w.c(paramMotionEvent, w.a(paramMotionEvent, k));
                f2 = f1 - j;
                if ((!l) && (Math.abs(f2) > i)) {
                  l = true;
                }
                break;
              }
            } while (!l);
            j = f1;
          } while ((!c.isFakeDragging()) && (!c.beginFakeDrag()));
          c.fakeDragBy(f2);
          return true;
          if (l) {
            break label317;
          }
          m = c.getAdapter().getCount();
          int i1 = getWidth();
          f1 = i1 / 2.0F;
          f2 = i1 / 6.0F;
          if ((e <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
            break;
          }
        } while (n == 3);
        c.setCurrentItem(e - 1);
        return true;
        if ((e >= m - 1) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (n == 3);
      c.setCurrentItem(e + 1);
      return true;
      l = false;
      k = -1;
    } while (!c.isFakeDragging());
    c.endFakeDrag();
    return true;
    m = w.b(paramMotionEvent);
    j = w.c(paramMotionEvent, m);
    k = w.b(paramMotionEvent, m);
    return true;
    int n = w.b(paramMotionEvent);
    if (w.b(paramMotionEvent, n) == k)
    {
      if (n == 0) {
        m = 1;
      }
      k = w.b(paramMotionEvent, m);
    }
    j = w.c(paramMotionEvent, w.a(paramMotionEvent, k));
    return true;
  }
  
  public void setCentered(boolean paramBoolean)
  {
    f = paramBoolean;
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (c == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    c.setCurrentItem(paramInt);
    e = paramInt;
    invalidate();
  }
  
  public void setGapWidth(float paramFloat)
  {
    h = paramFloat;
    invalidate();
  }
  
  public void setLineWidth(float paramFloat)
  {
    g = paramFloat;
    invalidate();
  }
  
  public void setOnPageChangeListener(bb parambb)
  {
    d = parambb;
  }
  
  public void setSelectedColor(int paramInt)
  {
    b.setColor(paramInt);
    invalidate();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    b.setStrokeWidth(paramFloat);
    a.setStrokeWidth(paramFloat);
    invalidate();
  }
  
  public void setUnselectedColor(int paramInt)
  {
    a.setColor(paramInt);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (c == paramViewPager) {
      return;
    }
    if (c != null) {
      c.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    c = paramViewPager;
    c.setOnPageChangeListener(this);
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.viewpagerindicator.LinePageIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */