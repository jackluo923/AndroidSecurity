package com.adsdk.sdk.customevents;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;

public class AdMobBanner
  extends CustomEventBanner
{
  private AdView adView;
  
  private AdListener createAdListener()
  {
    return new AdMobBanner.1(this);
  }
  
  public void loadBanner(Context paramContext, CustomEventBanner.CustomEventBannerListener paramCustomEventBannerListener, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    listener = paramCustomEventBannerListener;
    try
    {
      Class.forName("com.google.android.gms.ads.AdView");
      Class.forName("com.google.android.gms.ads.AdListener");
      Class.forName("com.google.android.gms.ads.AdRequest");
      Class.forName("com.google.android.gms.ads.AdSize");
      trackingPixel = paramString2;
      adView = new AdView(paramContext);
      adView.setAdUnitId(paramString1);
      adView.setAdSize(new AdSize(paramInt1, paramInt2));
      adView.setAdListener(createAdListener());
      paramContext = new AdRequest.Builder().addTestDevice(AdRequest.DEVICE_ID_EMULATOR).build();
      adView.loadAd(paramContext);
      return;
    }
    catch (ClassNotFoundException paramContext)
    {
      while (listener == null) {}
      listener.onBannerFailed();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.AdMobBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */