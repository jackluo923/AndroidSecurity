package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.ev;

public final class CustomEventAdapter
  implements MediationBannerAdapter, MediationInterstitialAdapter
{
  private View n;
  private CustomEventBanner sT;
  private CustomEventInterstitial sU;
  
  private static <T> T a(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString).newInstance();
      return (T)localObject;
    }
    catch (Throwable localThrowable)
    {
      ev.D("Could not instantiate custom event adapter: " + paramString + ". " + localThrowable.getMessage());
    }
    return null;
  }
  
  private void a(View paramView)
  {
    n = paramView;
  }
  
  public final View getBannerView()
  {
    return n;
  }
  
  public final void onDestroy()
  {
    if (sT != null) {
      sT.onDestroy();
    }
    if (sU != null) {
      sU.onDestroy();
    }
  }
  
  public final void onPause()
  {
    if (sT != null) {
      sT.onPause();
    }
    if (sU != null) {
      sU.onPause();
    }
  }
  
  public final void onResume()
  {
    if (sT != null) {
      sT.onResume();
    }
    if (sU != null) {
      sU.onResume();
    }
  }
  
  public final void requestBannerAd(Context paramContext, MediationBannerListener paramMediationBannerListener, Bundle paramBundle1, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    sT = ((CustomEventBanner)a(paramBundle1.getString("class_name")));
    if (sT == null)
    {
      paramMediationBannerListener.onAdFailedToLoad(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      sT.requestBannerAd(paramContext, new CustomEventAdapter.a(this, paramMediationBannerListener), paramBundle1.getString("parameter"), paramAdSize, paramMediationAdRequest, paramBundle2);
      return;
    }
  }
  
  public final void requestInterstitialAd(Context paramContext, MediationInterstitialListener paramMediationInterstitialListener, Bundle paramBundle1, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    sU = ((CustomEventInterstitial)a(paramBundle1.getString("class_name")));
    if (sU == null)
    {
      paramMediationInterstitialListener.onAdFailedToLoad(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      sU.requestInterstitialAd(paramContext, new CustomEventAdapter.b(this, this, paramMediationInterstitialListener), paramBundle1.getString("parameter"), paramMediationAdRequest, paramBundle2);
      return;
    }
  }
  
  public final void showInterstitial()
  {
    sU.showInterstitial();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */