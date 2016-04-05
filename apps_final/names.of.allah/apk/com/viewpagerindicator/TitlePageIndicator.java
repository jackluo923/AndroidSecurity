package com.viewpagerindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.aa;
import android.support.v4.view.bb;
import android.support.v4.view.w;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import java.util.ArrayList;

public final class TitlePageIndicator
  extends View
  implements c
{
  private n A;
  private ViewPager a;
  private bb b;
  private int c;
  private float d;
  private int e;
  private final Paint f;
  private boolean g;
  private int h;
  private int i;
  private Path j;
  private final Rect k;
  private final Paint l;
  private l m;
  private m n;
  private final Paint o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private float u;
  private float v;
  private int w;
  private float x;
  private int y;
  private boolean z;
  
  private void a(Rect paramRect, float paramFloat, int paramInt)
  {
    right = ((int)(paramInt - u));
    left = ((int)(right - paramFloat));
  }
  
  private void b(Rect paramRect, float paramFloat, int paramInt)
  {
    left = ((int)(paramInt + u));
    right = ((int)(u + paramFloat));
  }
  
  private CharSequence c(int paramInt)
  {
    CharSequence localCharSequence = a.getAdapter().getPageTitle(paramInt);
    Object localObject = localCharSequence;
    if (localCharSequence == null) {
      localObject = "";
    }
    return (CharSequence)localObject;
  }
  
  public final void a(int paramInt)
  {
    if (e == 0)
    {
      c = paramInt;
      invalidate();
    }
    if (b != null) {
      b.a(paramInt);
    }
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    c = paramInt1;
    d = paramFloat;
    invalidate();
    if (b != null) {
      b.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    e = paramInt;
    if (b != null) {
      b.b(paramInt);
    }
  }
  
  public final float getClipPadding()
  {
    return u;
  }
  
  public final int getFooterColor()
  {
    return l.getColor();
  }
  
  public final float getFooterIndicatorHeight()
  {
    return p;
  }
  
  public final float getFooterIndicatorPadding()
  {
    return r;
  }
  
  public final l getFooterIndicatorStyle()
  {
    return m;
  }
  
  public final float getFooterLineHeight()
  {
    return v;
  }
  
  public final m getLinePosition()
  {
    return n;
  }
  
  public final int getSelectedColor()
  {
    return i;
  }
  
  public final int getTextColor()
  {
    return h;
  }
  
  public final float getTextSize()
  {
    return f.getTextSize();
  }
  
  public final float getTitlePadding()
  {
    return s;
  }
  
  public final float getTopPadding()
  {
    return t;
  }
  
  public final Typeface getTypeface()
  {
    return f.getTypeface();
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (a == null) {}
    int i7;
    do
    {
      return;
      i7 = a.getAdapter().getCount();
    } while (i7 == 0);
    if ((c == -1) && (a != null)) {
      c = a.getCurrentItem();
    }
    Object localObject2 = f;
    Object localObject1 = new ArrayList();
    int i2 = a.getAdapter().getCount();
    int i3 = getWidth();
    int i4 = i3 / 2;
    int i1 = 0;
    Object localObject3;
    Object localObject4;
    int i5;
    while (i1 < i2)
    {
      localObject3 = new Rect();
      localObject4 = c(i1);
      right = ((int)((Paint)localObject2).measureText((CharSequence)localObject4, 0, ((CharSequence)localObject4).length()));
      bottom = ((int)(((Paint)localObject2).descent() - ((Paint)localObject2).ascent()));
      i5 = right - left;
      i6 = bottom;
      i8 = top;
      left = ((int)(i4 - i5 / 2.0F + (i1 - c - d) * i3));
      right = (i5 + left);
      top = 0;
      bottom = (i6 - i8);
      ((ArrayList)localObject1).add(localObject3);
      i1 += 1;
    }
    int i8 = ((ArrayList)localObject1).size();
    if (c >= i8)
    {
      setCurrentItem(i8 - 1);
      return;
    }
    float f3 = getWidth() / 2.0F;
    int i10 = getLeft();
    float f2 = i10 + u;
    int i9 = getWidth();
    int i6 = getHeight();
    int i11 = i10 + i9;
    float f5 = i11 - u;
    i1 = c;
    if (d <= 0.5D)
    {
      f1 = d;
      if (f1 > 0.25F) {
        break label626;
      }
      i2 = 1;
      label377:
      if (f1 > 0.05F) {
        break label632;
      }
    }
    float f4;
    label626:
    label632:
    for (i3 = 1;; i3 = 0)
    {
      f4 = (0.25F - f1) / 0.25F;
      localObject2 = (Rect)((ArrayList)localObject1).get(c);
      f1 = right - left;
      if (left < f2) {
        b((Rect)localObject2, f1, i10);
      }
      if (right > f5) {
        a((Rect)localObject2, f1, i11);
      }
      if (c <= 0) {
        break label638;
      }
      i4 = c - 1;
      while (i4 >= 0)
      {
        localObject2 = (Rect)((ArrayList)localObject1).get(i4);
        if (left < f2)
        {
          i5 = right - left;
          b((Rect)localObject2, i5, i10);
          localObject3 = (Rect)((ArrayList)localObject1).get(i4 + 1);
          if (right + s > left)
          {
            left = ((int)(left - i5 - s));
            right = (left + i5);
          }
        }
        i4 -= 1;
      }
      f1 = d;
      i1 += 1;
      f1 = 1.0F - f1;
      break;
      i2 = 0;
      break label377;
    }
    label638:
    if (c < i7 - 1)
    {
      i4 = c + 1;
      while (i4 < i7)
      {
        localObject2 = (Rect)((ArrayList)localObject1).get(i4);
        if (right > f5)
        {
          i5 = right - left;
          a((Rect)localObject2, i5, i11);
          localObject3 = (Rect)((ArrayList)localObject1).get(i4 - 1);
          if (left - s < right)
          {
            left = ((int)(right + s));
            right = (left + i5);
          }
        }
        i4 += 1;
      }
    }
    int i12 = h >>> 24;
    i4 = 0;
    if (i4 < i7)
    {
      localObject2 = (Rect)((ArrayList)localObject1).get(i4);
      if (((left > i10) && (left < i11)) || ((right > i10) && (right < i11)))
      {
        if (i4 != i1) {
          break label1171;
        }
        i5 = 1;
        label867:
        localObject3 = c(i4);
        localObject4 = f;
        if ((i5 == 0) || (i3 == 0) || (!g)) {
          break label1177;
        }
      }
      label1171:
      label1177:
      for (boolean bool = true;; bool = false)
      {
        ((Paint)localObject4).setFakeBoldText(bool);
        f.setColor(h);
        if ((i5 != 0) && (i2 != 0)) {
          f.setAlpha(i12 - (int)(i12 * f4));
        }
        if (i4 < i8 - 1)
        {
          localObject4 = (Rect)((ArrayList)localObject1).get(i4 + 1);
          if (right + s > left)
          {
            i13 = right - left;
            left = ((int)(left - i13 - s));
            right = (left + i13);
          }
        }
        int i13 = ((CharSequence)localObject3).length();
        f1 = left;
        f2 = bottom;
        paramCanvas.drawText((CharSequence)localObject3, 0, i13, f1, t + f2, f);
        if ((i5 != 0) && (i2 != 0))
        {
          f.setColor(i);
          f.setAlpha((int)((i >>> 24) * f4));
          i5 = ((CharSequence)localObject3).length();
          f1 = left;
          f2 = bottom;
          paramCanvas.drawText((CharSequence)localObject3, 0, i5, f1, t + f2, f);
        }
        i4 += 1;
        break;
        i5 = 0;
        break label867;
      }
    }
    f2 = v;
    float f1 = p;
    if (n == m.b)
    {
      i3 = 0;
      f2 = -f2;
      f1 = -f1;
    }
    for (;;)
    {
      j.reset();
      j.moveTo(0.0F, i3 - f2 / 2.0F);
      j.lineTo(i9, i3 - f2 / 2.0F);
      j.close();
      paramCanvas.drawPath(j, l);
      f2 = i3 - f2;
      switch (k.a[m.ordinal()])
      {
      default: 
        return;
      case 1: 
        j.reset();
        j.moveTo(f3, f2 - f1);
        j.lineTo(f3 + f1, f2);
        j.lineTo(f3 - f1, f2);
        j.close();
        paramCanvas.drawPath(j, o);
        return;
      }
      if ((i2 == 0) || (i1 >= i8)) {
        break;
      }
      localObject1 = (Rect)((ArrayList)localObject1).get(i1);
      f3 = right + q;
      f5 = left - q;
      f1 = f2 - f1;
      j.reset();
      j.moveTo(f5, f2);
      j.lineTo(f3, f2);
      j.lineTo(f3, f1);
      j.lineTo(f5, f1);
      j.close();
      o.setAlpha((int)(255.0F * f4));
      paramCanvas.drawPath(j, o);
      o.setAlpha(255);
      return;
      i3 = i6;
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    float f1;
    if (View.MeasureSpec.getMode(paramInt2) == 1073741824) {
      f1 = View.MeasureSpec.getSize(paramInt2);
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, (int)f1);
      return;
      k.setEmpty();
      k.bottom = ((int)(f.descent() - f.ascent()));
      float f2 = k.bottom - k.top + v + r + t;
      f1 = f2;
      if (m != l.a) {
        f1 = f2 + p;
      }
    }
  }
  
  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (TitlePageIndicator.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    c = a;
    requestLayout();
  }
  
  public final Parcelable onSaveInstanceState()
  {
    TitlePageIndicator.SavedState localSavedState = new TitlePageIndicator.SavedState(super.onSaveInstanceState());
    a = c;
    return localSavedState;
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (super.onTouchEvent(paramMotionEvent)) {}
    label343:
    do
    {
      do
      {
        float f1;
        float f2;
        float f3;
        do
        {
          do
          {
            do
            {
              return true;
              if ((a == null) || (a.getAdapter().getCount() == 0)) {
                return false;
              }
              i2 = paramMotionEvent.getAction() & 0xFF;
              switch (i2)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                y = w.b(paramMotionEvent, 0);
                x = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = w.c(paramMotionEvent, w.a(paramMotionEvent, y));
                f2 = f1 - x;
                if ((!z) && (Math.abs(f2) > w)) {
                  z = true;
                }
                break;
              }
            } while (!z);
            x = f1;
          } while ((!a.isFakeDragging()) && (!a.beginFakeDrag()));
          a.fakeDragBy(f2);
          return true;
          if (z) {
            break label343;
          }
          i1 = a.getAdapter().getCount();
          int i3 = getWidth();
          f1 = i3 / 2.0F;
          f2 = i3 / 6.0F;
          f3 = paramMotionEvent.getX();
          if (f3 >= f1 - f2) {
            break;
          }
          if (c <= 0) {
            break label343;
          }
        } while (i2 == 3);
        a.setCurrentItem(c - 1);
        return true;
        if (f3 <= f2 + f1) {
          break;
        }
        if (c >= i1 - 1) {
          break label343;
        }
      } while (i2 == 3);
      a.setCurrentItem(c + 1);
      return true;
      if ((A != null) && (i2 != 3))
      {
        paramMotionEvent = A;
        i1 = c;
      }
      z = false;
      y = -1;
    } while (!a.isFakeDragging());
    a.endFakeDrag();
    return true;
    i1 = w.b(paramMotionEvent);
    x = w.c(paramMotionEvent, i1);
    y = w.b(paramMotionEvent, i1);
    return true;
    int i2 = w.b(paramMotionEvent);
    if (w.b(paramMotionEvent, i2) == y)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      y = w.b(paramMotionEvent, i1);
    }
    x = w.c(paramMotionEvent, w.a(paramMotionEvent, y));
    return true;
  }
  
  public final void setClipPadding(float paramFloat)
  {
    u = paramFloat;
    invalidate();
  }
  
  public final void setCurrentItem(int paramInt)
  {
    if (a == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    a.setCurrentItem(paramInt);
    c = paramInt;
    invalidate();
  }
  
  public final void setFooterColor(int paramInt)
  {
    l.setColor(paramInt);
    o.setColor(paramInt);
    invalidate();
  }
  
  public final void setFooterIndicatorHeight(float paramFloat)
  {
    p = paramFloat;
    invalidate();
  }
  
  public final void setFooterIndicatorPadding(float paramFloat)
  {
    r = paramFloat;
    invalidate();
  }
  
  public final void setFooterIndicatorStyle(l paraml)
  {
    m = paraml;
    invalidate();
  }
  
  public final void setFooterLineHeight(float paramFloat)
  {
    v = paramFloat;
    l.setStrokeWidth(v);
    invalidate();
  }
  
  public final void setLinePosition(m paramm)
  {
    n = paramm;
    invalidate();
  }
  
  public final void setOnCenterItemClickListener(n paramn)
  {
    A = paramn;
  }
  
  public final void setOnPageChangeListener(bb parambb)
  {
    b = parambb;
  }
  
  public final void setSelectedBold(boolean paramBoolean)
  {
    g = paramBoolean;
    invalidate();
  }
  
  public final void setSelectedColor(int paramInt)
  {
    i = paramInt;
    invalidate();
  }
  
  public final void setTextColor(int paramInt)
  {
    f.setColor(paramInt);
    h = paramInt;
    invalidate();
  }
  
  public final void setTextSize(float paramFloat)
  {
    f.setTextSize(paramFloat);
    invalidate();
  }
  
  public final void setTitlePadding(float paramFloat)
  {
    s = paramFloat;
    invalidate();
  }
  
  public final void setTopPadding(float paramFloat)
  {
    t = paramFloat;
    invalidate();
  }
  
  public final void setTypeface(Typeface paramTypeface)
  {
    f.setTypeface(paramTypeface);
    invalidate();
  }
  
  public final void setViewPager(ViewPager paramViewPager)
  {
    if (a == paramViewPager) {
      return;
    }
    if (a != null) {
      a.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    a = paramViewPager;
    a.setOnPageChangeListener(this);
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.viewpagerindicator.TitlePageIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */