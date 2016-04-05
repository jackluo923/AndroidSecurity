package com.adsdk.sdk.customevents;

import android.content.Context;
import android.os.AsyncTask;

public abstract class CustomEventBanner
{
  protected CustomEventBanner.CustomEventBannerListener listener;
  protected String trackingPixel;
  
  public abstract void loadBanner(Context paramContext, CustomEventBanner.CustomEventBannerListener paramCustomEventBannerListener, String paramString1, String paramString2, int paramInt1, int paramInt2);
  
  protected void reportImpression()
  {
    new CustomEventBanner.1(this).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */