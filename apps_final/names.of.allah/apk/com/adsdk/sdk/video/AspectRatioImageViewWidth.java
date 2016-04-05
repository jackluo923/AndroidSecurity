package com.adsdk.sdk.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

public class AspectRatioImageViewWidth
  extends ImageView
{
  public AspectRatioImageViewWidth(Context paramContext)
  {
    super(paramContext);
  }
  
  public AspectRatioImageViewWidth(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AspectRatioImageViewWidth(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.AspectRatioImageViewWidth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */