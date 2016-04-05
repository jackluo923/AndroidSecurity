package uk.co.senab.a.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout.LayoutParams;

final class o
  extends FrameLayout.LayoutParams
{
  private final String a;
  
  o(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, w.PullToRefreshView);
    a = paramContext.getString(0);
    paramContext.recycle();
  }
  
  final String a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */