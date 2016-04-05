package com.adsdk.sdk.customevents;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.InterstitialAd;

public class AdMobFullscreen
  extends CustomEventFullscreen
{
  private AdListener adListener;
  private InterstitialAd interstitial;
  
  private AdListener createAdListener()
  {
    return new AdMobFullscreen.1(this);
  }
  
  public void loadFullscreen(Context paramContext, CustomEventFullscreen.CustomEventFullscreenListener paramCustomEventFullscreenListener, String paramString1, String paramString2)
  {
    listener = paramCustomEventFullscreenListener;
    trackingPixel = paramString2;
    try
    {
      Class.forName("com.google.android.gms.ads.AdListener");
      Class.forName("com.google.android.gms.ads.AdRequest");
      Class.forName("com.google.android.gms.ads.InterstitialAd");
      adListener = createAdListener();
      interstitial = new InterstitialAd(paramContext);
      interstitial.setAdUnitId(paramString1);
      interstitial.setAdListener(adListener);
      paramContext = new AdRequest.Builder().build();
      interstitial.loadAd(paramContext);
      return;
    }
    catch (ClassNotFoundException paramContext)
    {
      while (listener == null) {}
      listener.onFullscreenFailed();
    }
  }
  
  public void showFullscreen()
  {
    if (interstitial.isLoaded()) {
      interstitial.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.AdMobFullscreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */