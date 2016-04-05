package com.millennialmedia.android;

import android.content.Context;
import android.widget.RelativeLayout.LayoutParams;

class MMLayout$MMLayoutMMAdImpl
  extends MMAdImpl
{
  public MMLayout$MMLayoutMMAdImpl(MMLayout paramMMLayout, Context paramContext)
  {
    super(paramContext);
    adProperties = new MMLayout.LayoutAdProperties(paramMMLayout, getContext());
  }
  
  public void addView(MMWebView paramMMWebView, RelativeLayout.LayoutParams paramLayoutParams)
  {
    MMSDK.Log.w("MMLayout adding view (" + paramMMWebView + ") to " + this);
    this$0.addView(paramMMWebView, paramLayoutParams);
  }
  
  MMLayout getCallingAd()
  {
    return this$0;
  }
  
  int getId()
  {
    return this$0.getId();
  }
  
  public void removeView(MMWebView paramMMWebView)
  {
    this$0.removeView(paramMMWebView);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    this$0.setBackgroundColor(paramInt);
  }
  
  public void setClickable(boolean paramBoolean)
  {
    this$0.setClickable(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMLayout.MMLayoutMMAdImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */