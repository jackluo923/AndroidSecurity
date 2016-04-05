package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;

public final class n
  extends FrameLayout
{
  private final ProgressBar a;
  private final TextView b;
  
  public n(Context paramContext)
  {
    super(paramContext, null, z.c(paramContext));
    m localm = new m(paramContext);
    setBackgroundColor(-16777216);
    a = new ProgressBar(paramContext);
    a.setVisibility(8);
    addView(a, new FrameLayout.LayoutParams(-2, -2, 17));
    int i = (int)(10.0F * getResourcesgetDisplayMetricsdensity + 0.5F);
    b = new TextView(paramContext);
    b.setTextAppearance(paramContext, 16973894);
    b.setTextColor(-1);
    b.setVisibility(8);
    b.setPadding(i, i, i, i);
    b.setGravity(17);
    b.setText(a);
    addView(b, new FrameLayout.LayoutParams(-2, -2, 17));
  }
  
  public final void a()
  {
    a.setVisibility(8);
    b.setVisibility(8);
  }
  
  public final void b()
  {
    a.setVisibility(0);
    b.setVisibility(8);
  }
  
  public final void c()
  {
    a.setVisibility(8);
    b.setVisibility(0);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 0;
    int m = View.MeasureSpec.getMode(paramInt1);
    int n = View.MeasureSpec.getMode(paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    if ((m == 1073741824) && (n == 1073741824)) {}
    for (;;)
    {
      paramInt1 = resolveSize(i, paramInt1);
      paramInt2 = resolveSize(j, paramInt2);
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
      return;
      if ((m == 1073741824) || ((m == Integer.MIN_VALUE) && (n == 0)))
      {
        j = (int)(i / 1.777F);
      }
      else if ((n == 1073741824) || ((n == Integer.MIN_VALUE) && (m == 0)))
      {
        i = (int)(j * 1.777F);
      }
      else if ((m == Integer.MIN_VALUE) && (n == Integer.MIN_VALUE))
      {
        if (j < i / 1.777F) {
          i = (int)(j * 1.777F);
        } else {
          j = (int)(i / 1.777F);
        }
      }
      else
      {
        j = 0;
        i = k;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */