package com.adsdk.sdk.nativeads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

class NativeAdManager$3
  implements View.OnClickListener
{
  NativeAdManager$3(NativeAdManager paramNativeAdManager, String paramString) {}
  
  public void onClick(View paramView)
  {
    NativeAdManager.access$5(this$0);
    if ((val$clickUrl != null) && (!val$clickUrl.equals("")))
    {
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(val$clickUrl));
      NativeAdManager.access$6(this$0).startActivity(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */