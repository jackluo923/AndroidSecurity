package com.mobfox.adapter;

import android.app.Activity;
import android.view.View;
import com.adsdk.sdk.AdManager;
import com.adsdk.sdk.banner.AdView;
import com.google.ads.mediation.a;
import com.google.ads.mediation.c;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;

public final class MobFoxAdapter
  implements c<MobFoxExtras, MobFoxServerParameters>, e<MobFoxExtras, MobFoxServerParameters>
{
  private static final String REQUEST_URL = "http://my.mobfox.com/request.php";
  private AdView adView;
  private com.google.ads.mediation.d bannerListener;
  private f interstitialListener;
  private AdManager mAdManager;
  
  public final void destroy()
  {
    if (adView != null) {
      adView.release();
    }
    if (mAdManager != null) {
      mAdManager.release();
    }
    bannerListener = null;
    interstitialListener = null;
  }
  
  public final Class<MobFoxExtras> getAdditionalParametersType()
  {
    return MobFoxExtras.class;
  }
  
  public final View getBannerView()
  {
    return adView;
  }
  
  public final Class<MobFoxServerParameters> getServerParametersType()
  {
    return MobFoxServerParameters.class;
  }
  
  public final void requestBannerAd(com.google.ads.mediation.d paramd, Activity paramActivity, MobFoxServerParameters paramMobFoxServerParameters, com.google.ads.d paramd1, a parama, MobFoxExtras paramMobFoxExtras)
  {
    bannerListener = paramd;
    if (paramMobFoxExtras != null) {}
    for (adView = new AdView(paramActivity, "http://my.mobfox.com/request.php", pubIdNumber, paramMobFoxExtras.getLocation(), paramMobFoxExtras.getAnimation());; adView = new AdView(paramActivity, "http://my.mobfox.com/request.php", pubIdNumber, true, true))
    {
      adView.setAdspaceHeight(paramd1.b());
      adView.setAdspaceWidth(paramd1.a());
      adView.setAdListener(new MobFoxAdapter.1(this));
      adView.loadNextAd();
      adView.pause();
      return;
    }
  }
  
  public final void requestInterstitialAd(f paramf, Activity paramActivity, MobFoxServerParameters paramMobFoxServerParameters, a parama, MobFoxExtras paramMobFoxExtras)
  {
    interstitialListener = paramf;
    if (paramMobFoxExtras != null) {}
    for (mAdManager = new AdManager(paramActivity, "http://my.mobfox.com/request.php", pubIdNumber, paramMobFoxExtras.getLocation());; mAdManager = new AdManager(paramActivity, "http://my.mobfox.com/request.php", pubIdNumber, true))
    {
      mAdManager.setVideoAdsEnabled(true);
      mAdManager.setListener(new MobFoxAdapter.2(this));
      mAdManager.requestAd();
      return;
    }
  }
  
  public final void showInterstitial()
  {
    if (mAdManager != null) {
      mAdManager.showAd();
    }
  }
}

/* Location:
 * Qualified Name:     com.mobfox.adapter.MobFoxAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */