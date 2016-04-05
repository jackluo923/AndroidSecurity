package com.google.ads.mediation.millennial;

import android.app.Activity;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.ads.b;
import com.google.ads.mediation.a;
import com.google.ads.mediation.c;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.MMRequest;
import com.millennialmedia.android.MMSDK;
import java.util.Hashtable;

public final class MillennialAdapter
  implements c<MillennialAdapterExtras, MillennialAdapterServerParameters>, e<MillennialAdapterExtras, MillennialAdapterServerParameters>
{
  private MMAdView adView;
  private com.google.ads.mediation.d bannerListener;
  private f interstitialListener;
  private MMInterstitial interstitialView;
  private FrameLayout wrappedAdView;
  
  private void populateAdViewParameters(MMAd paramMMAd, Hashtable<String, String> paramHashtable, a parama, MillennialAdapterExtras paramMillennialAdapterExtras)
  {
    MillennialAdapterExtras localMillennialAdapterExtras = paramMillennialAdapterExtras;
    if (paramMillennialAdapterExtras == null) {
      localMillennialAdapterExtras = new MillennialAdapterExtras();
    }
    if (parama.c() != null) {
      paramHashtable.put("keywords", TextUtils.join(",", parama.c()));
    }
    if (localMillennialAdapterExtras.getChildren() != null)
    {
      if (localMillennialAdapterExtras.getChildren().booleanValue())
      {
        paramMillennialAdapterExtras = "true";
        paramHashtable.put("children", paramMillennialAdapterExtras);
      }
    }
    else
    {
      paramMillennialAdapterExtras = new MMRequest();
      if (parama.b() != null) {
        switch (parama.b())
        {
        }
      }
    }
    for (;;)
    {
      if (localMillennialAdapterExtras.getIncomeInUsDollars() != null) {
        paramMillennialAdapterExtras.setIncome(localMillennialAdapterExtras.getIncomeInUsDollars().toString());
      }
      if (parama.d() != null) {
        MMRequest.setUserLocation(parama.d());
      }
      if (localMillennialAdapterExtras.getPostalCode() != null) {
        paramMillennialAdapterExtras.setZip(localMillennialAdapterExtras.getPostalCode());
      }
      if (localMillennialAdapterExtras.getMaritalStatus() != null) {
        paramMillennialAdapterExtras.setMarital(localMillennialAdapterExtras.getMaritalStatus().getDescription());
      }
      if (localMillennialAdapterExtras.getEthnicity() != null) {
        paramMillennialAdapterExtras.setEthnicity(localMillennialAdapterExtras.getEthnicity().getDescription());
      }
      if (localMillennialAdapterExtras.getOrientation() != null) {
        paramMillennialAdapterExtras.setOrientation(localMillennialAdapterExtras.getOrientation().getDescription());
      }
      if (localMillennialAdapterExtras.getPolitics() != null) {
        paramMillennialAdapterExtras.setPolitics(localMillennialAdapterExtras.getPolitics().getDescription());
      }
      if (localMillennialAdapterExtras.getEducation() != null) {
        paramMillennialAdapterExtras.setEducation(localMillennialAdapterExtras.getEducation().getDescription());
      }
      if (paramHashtable != null) {
        paramMillennialAdapterExtras.setMetaValues(paramHashtable);
      }
      paramMMAd.setMMRequest(paramMillennialAdapterExtras);
      return;
      paramMillennialAdapterExtras = "false";
      break;
      paramMillennialAdapterExtras.setGender("male");
      continue;
      paramMillennialAdapterExtras.setGender("female");
    }
  }
  
  public final void destroy() {}
  
  public final Class<MillennialAdapterExtras> getAdditionalParametersType()
  {
    return MillennialAdapterExtras.class;
  }
  
  public final View getBannerView()
  {
    return wrappedAdView;
  }
  
  public final Class<MillennialAdapterServerParameters> getServerParametersType()
  {
    return MillennialAdapterServerParameters.class;
  }
  
  public final void requestBannerAd(com.google.ads.mediation.d paramd, Activity paramActivity, MillennialAdapterServerParameters paramMillennialAdapterServerParameters, com.google.ads.d paramd1, a parama, MillennialAdapterExtras paramMillennialAdapterExtras)
  {
    bannerListener = paramd;
    paramd = new Hashtable();
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramd1.a(paramActivity), paramd1.b(paramActivity));
    adView = new MMAdView(paramActivity);
    adView.setApid(apid);
    adView.setHeight(paramd1.b());
    adView.setWidth(paramd1.a());
    adView.setId(MMSDK.getDefaultAdId());
    populateAdViewParameters(adView, paramd, parama, paramMillennialAdapterExtras);
    adView.setListener(new MillennialAdapter.BannerListener(this, null));
    wrappedAdView = new FrameLayout(paramActivity);
    wrappedAdView.setLayoutParams(localLayoutParams);
    wrappedAdView.addView(adView);
    if (paramd1.a(paramActivity) <= getResourcesgetDisplayMetricswidthPixels)
    {
      adView.getAd();
      return;
    }
    bannerListener.onFailedToReceiveAd(this, b.b);
  }
  
  public final void requestInterstitialAd(f paramf, Activity paramActivity, MillennialAdapterServerParameters paramMillennialAdapterServerParameters, a parama, MillennialAdapterExtras paramMillennialAdapterExtras)
  {
    interstitialListener = paramf;
    paramf = new Hashtable();
    interstitialView = new MMInterstitial(paramActivity);
    interstitialView.setApid(apid);
    populateAdViewParameters(interstitialView, paramf, parama, paramMillennialAdapterExtras);
    interstitialView.setListener(new MillennialAdapter.InterstitialListener(this, null));
    interstitialView.fetch();
  }
  
  public final void showInterstitial()
  {
    interstitialView.display();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.millennial.MillennialAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */