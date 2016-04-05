package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public final class s
  extends ViewGroup.MarginLayoutParams
{
  private static final int[] e = { 16843137 };
  public float a = 0.0F;
  boolean b;
  boolean c;
  Paint d;
  
  public s()
  {
    super(-1, -1);
  }
  
  public s(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, e);
    a = paramContext.getFloat(0, 0.0F);
    paramContext.recycle();
  }
  
  public s(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public s(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */