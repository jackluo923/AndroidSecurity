package com.adsdk.sdk.mraid;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;

public class Dips
{
  public static float asFloatPixels(float paramFloat, Context paramContext)
  {
    return TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static int asIntPixels(float paramFloat, Context paramContext)
  {
    return (int)(asFloatPixels(paramFloat, paramContext) + 0.5F);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Dips
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */