package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;

public final class aj
  extends MenuDrawer
{
  public aj(Context paramContext)
  {
    super(paramContext);
  }
  
  public final void a() {}
  
  protected final void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    super.addView(C, -1, new ViewGroup.LayoutParams(-1, -1));
    super.addView(D, -1, new ViewGroup.LayoutParams(-1, -1));
    U = true;
  }
  
  protected final void a(Canvas paramCanvas) {}
  
  public final void a(boolean paramBoolean) {}
  
  protected final void b(int paramInt) {}
  
  public final boolean b()
  {
    return true;
  }
  
  public final boolean getOffsetMenuEnabled()
  {
    return false;
  }
  
  public final int getTouchBezelSize()
  {
    return 0;
  }
  
  public final int getTouchMode()
  {
    return 0;
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    switch (ak.a[getPosition().ordinal()])
    {
    default: 
      return;
    case 1: 
      C.layout(0, 0, E, paramInt2);
      D.layout(E, 0, paramInt1, paramInt2);
      return;
    case 2: 
      C.layout(paramInt1 - E, 0, paramInt1, paramInt2);
      D.layout(0, 0, paramInt1 - E, paramInt2);
      return;
    case 3: 
      C.layout(0, 0, paramInt1, E);
      D.layout(0, E, paramInt1, paramInt2);
      return;
    }
    C.layout(0, paramInt2 - E, paramInt1, paramInt2);
    D.layout(0, 0, paramInt1, paramInt2 - E);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    if ((i == 0) || (j == 0)) {
      throw new IllegalStateException("Must measure with an exact size");
    }
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (ak.a[getPosition().ordinal()])
    {
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      i = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
      int k = E;
      j = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
      k = View.MeasureSpec.makeMeasureSpec(paramInt1 - k, 1073741824);
      D.measure(k, i);
      C.measure(j, i);
      continue;
      i = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      k = E;
      j = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
      k = View.MeasureSpec.makeMeasureSpec(paramInt2 - k, 1073741824);
      D.measure(i, k);
      C.measure(i, j);
    }
  }
  
  public final void p() {}
  
  public final void setDrawerIndicatorEnabled(boolean paramBoolean) {}
  
  public final void setHardwareLayerEnabled(boolean paramBoolean) {}
  
  public final void setMenuSize(int paramInt)
  {
    E = paramInt;
    requestLayout();
    invalidate();
  }
  
  public final void setOffsetMenuEnabled(boolean paramBoolean) {}
  
  public final void setSlideDrawable(int paramInt) {}
  
  public final void setSlideDrawable(Drawable paramDrawable) {}
  
  public final void setTouchBezelSize(int paramInt) {}
  
  public final void setTouchMode(int paramInt) {}
  
  public final void setupUpIndicator(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */