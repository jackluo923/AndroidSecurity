package com.millennialmedia.android;

import android.content.Context;

class MMLayout$LayoutAdProperties
  extends AdProperties
{
  MMLayout$LayoutAdProperties(MMLayout paramMMLayout, Context paramContext)
  {
    super(paramContext);
  }
  
  String getAdDpiIndependentHeight()
  {
    float f = MMSDK.getDensity(getContext());
    return String.valueOf((int)(this$0.getHeight() / f));
  }
  
  String getAdDpiIndependentWidth()
  {
    float f = MMSDK.getDensity(getContext());
    return String.valueOf((int)(this$0.getWidth() / f));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMLayout.LayoutAdProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */