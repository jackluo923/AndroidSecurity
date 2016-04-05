package com.google.ads.mediation.inmobi;

import android.app.Activity;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.ads.b;
import com.google.ads.mediation.a;
import com.google.ads.mediation.c;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitial.State;
import java.util.Calendar;
import java.util.HashMap;

public final class InMobiAdapter
  implements c<InMobiAdapterExtras, InMobiAdapterServerParameters>, e<InMobiAdapterExtras, InMobiAdapterServerParameters>
{
  private static final com.google.ads.d ADSIZE_INMOBI_AD_UNIT_120X600 = new com.google.ads.d(120, 600);
  private static final com.google.ads.d ADSIZE_INMOBI_AD_UNIT_300X250;
  private static final com.google.ads.d ADSIZE_INMOBI_AD_UNIT_320X48 = new com.google.ads.d(320, 48);
  private static final com.google.ads.d ADSIZE_INMOBI_AD_UNIT_320X50 = new com.google.ads.d(320, 50);
  private static final com.google.ads.d ADSIZE_INMOBI_AD_UNIT_468X60 = new com.google.ads.d(468, 60);
  private static final com.google.ads.d ADSIZE_INMOBI_AD_UNIT_728X90 = new com.google.ads.d(728, 90);
  private static Boolean disableHardwareFlag = Boolean.valueOf(false);
  private static Boolean isAppInitialize = Boolean.valueOf(false);
  private IMInterstitial adInterstitial;
  private IMBanner adView;
  private com.google.ads.mediation.d bannerListener;
  private f interstitialListener;
  private FrameLayout wrappedAdView;
  
  static
  {
    ADSIZE_INMOBI_AD_UNIT_300X250 = new com.google.ads.d(300, 250);
  }
  
  private void buildAdRequest(a parama, InMobiAdapterExtras paramInMobiAdapterExtras)
  {
    InMobiAdapterExtras localInMobiAdapterExtras = paramInMobiAdapterExtras;
    if (paramInMobiAdapterExtras == null) {
      localInMobiAdapterExtras = new InMobiAdapterExtras();
    }
    if (localInMobiAdapterExtras.getAreaCode() != null) {
      InMobi.setAreaCode(localInMobiAdapterExtras.getAreaCode());
    }
    if (parama.d() != null)
    {
      InMobi.setLocationInquiryAllowed(true);
      InMobi.setCurrentLocation(parama.d());
    }
    if (parama.a() != null)
    {
      paramInMobiAdapterExtras = Calendar.getInstance();
      paramInMobiAdapterExtras.setTime(parama.a());
      InMobi.setDateOfBirth(paramInMobiAdapterExtras);
    }
    if (localInMobiAdapterExtras.getEducation() != null) {
      InMobi.setEducation(localInMobiAdapterExtras.getEducation());
    }
    if (localInMobiAdapterExtras.getEthnicity() != null) {
      InMobi.setEthnicity(localInMobiAdapterExtras.getEthnicity());
    }
    if (parama.b() != null) {
      switch (parama.b())
      {
      default: 
        InMobi.setGender(GenderType.UNKNOWN);
      }
    }
    for (;;)
    {
      if (localInMobiAdapterExtras.getIncome() != null) {
        InMobi.setIncome(localInMobiAdapterExtras.getIncome().intValue());
      }
      if (localInMobiAdapterExtras.getInterests() != null) {
        InMobi.setInterests(TextUtils.join(", ", localInMobiAdapterExtras.getInterests()));
      }
      if (localInMobiAdapterExtras.getPostalCode() != null) {
        InMobi.setPostalCode(localInMobiAdapterExtras.getPostalCode());
      }
      InMobi.setDeviceIDMask(localInMobiAdapterExtras.getDeviceIdMask());
      if (localInMobiAdapterExtras.getSexualOrientations() != null) {
        InMobi.setSexualOrientation(localInMobiAdapterExtras.getSexualOrientations());
      }
      if (localInMobiAdapterExtras.getMartialStatus() != null) {
        InMobi.setMaritalStatus(localInMobiAdapterExtras.getMartialStatus());
      }
      if (localInMobiAdapterExtras.getLangauge() != null) {
        InMobi.setLanguage(localInMobiAdapterExtras.getLangauge());
      }
      if (localInMobiAdapterExtras.getHasChildren() != null) {
        InMobi.setHasChildren(localInMobiAdapterExtras.getHasChildren());
      }
      if ((localInMobiAdapterExtras.getCity() != null) && (localInMobiAdapterExtras.getState() != null) && (localInMobiAdapterExtras.getCountry() != null)) {
        InMobi.setLocationWithCityStateCountry(localInMobiAdapterExtras.getCity(), localInMobiAdapterExtras.getState(), localInMobiAdapterExtras.getCountry());
      }
      return;
      InMobi.setGender(GenderType.MALE);
      continue;
      InMobi.setGender(GenderType.FEMALE);
    }
  }
  
  public static void disableHardwareAcceleration()
  {
    disableHardwareFlag = Boolean.valueOf(true);
  }
  
  public final void destroy() {}
  
  public final Class<InMobiAdapterExtras> getAdditionalParametersType()
  {
    return InMobiAdapterExtras.class;
  }
  
  public final View getBannerView()
  {
    return wrappedAdView;
  }
  
  public final Class<InMobiAdapterServerParameters> getServerParametersType()
  {
    return InMobiAdapterServerParameters.class;
  }
  
  public final void requestBannerAd(com.google.ads.mediation.d paramd, Activity paramActivity, InMobiAdapterServerParameters paramInMobiAdapterServerParameters, com.google.ads.d paramd1, a parama, InMobiAdapterExtras paramInMobiAdapterExtras)
  {
    int i = 12;
    if (!isAppInitialize.booleanValue())
    {
      InMobi.initialize(paramActivity, appId);
      isAppInitialize = Boolean.valueOf(true);
    }
    if (Build.VERSION.SDK_INT < 7)
    {
      paramd.onFailedToReceiveAd(this, b.a);
      return;
    }
    if (!InMobi.getVersion().substring(0, 1).equals("4"))
    {
      paramd.onFailedToReceiveAd(this, b.a);
      Log.e("Invalid SDK VERSION", "Please integrate with new sdk" + InMobi.getVersion());
      return;
    }
    bannerListener = paramd;
    paramd1 = paramd1.a(new com.google.ads.d[] { ADSIZE_INMOBI_AD_UNIT_320X48, ADSIZE_INMOBI_AD_UNIT_320X50, ADSIZE_INMOBI_AD_UNIT_468X60, ADSIZE_INMOBI_AD_UNIT_728X90, ADSIZE_INMOBI_AD_UNIT_300X250, ADSIZE_INMOBI_AD_UNIT_120X600 });
    if (paramd1 == ADSIZE_INMOBI_AD_UNIT_320X48) {
      i = 9;
    }
    for (;;)
    {
      paramd1 = new FrameLayout.LayoutParams(paramd1.a(paramActivity), paramd1.b(paramActivity));
      adView = new IMBanner(paramActivity, appId, i);
      adView.setRefreshInterval(-1);
      adView.setAnimationType(AnimationType.ANIMATION_OFF);
      if (parama.c() != null) {
        adView.setKeywords(TextUtils.join(", ", parama.c()));
      }
      paramd = new HashMap();
      paramd.put("tp", "c_admob");
      paramd.put("tp-ver", "6.2.1");
      adView.setRequestParams(paramd);
      paramd = paramInMobiAdapterExtras;
      if (paramInMobiAdapterExtras == null) {
        paramd = new InMobiAdapterExtras();
      }
      if ((paramd.getRefTagKey() != null) && (paramd.getRefTagValue() != null) && (!paramd.getRefTagKey().trim().equals("")) && (!paramd.getRefTagValue().trim().equals(""))) {
        adView.setRefTagParam(paramd.getRefTagKey(), paramd.getRefTagValue());
      }
      adView.setIMBannerListener(new InMobiAdapter.BannerListener(this, null));
      if (disableHardwareFlag.booleanValue()) {
        adView.disableHardwareAcceleration();
      }
      wrappedAdView = new FrameLayout(paramActivity);
      wrappedAdView.setLayoutParams(paramd1);
      wrappedAdView.addView(adView);
      buildAdRequest(parama, paramd);
      adView.loadBanner();
      return;
      if (paramd1 == ADSIZE_INMOBI_AD_UNIT_320X50)
      {
        i = 15;
      }
      else if (paramd1 == ADSIZE_INMOBI_AD_UNIT_468X60)
      {
        Log.e("ADSIZE_INMOBI_AD_UNIT_468x60", 12);
      }
      else if (paramd1 == ADSIZE_INMOBI_AD_UNIT_728X90)
      {
        Log.e("INMOBI_AD_UNIT_728X90", 11);
        i = 11;
      }
      else if (paramd1 == ADSIZE_INMOBI_AD_UNIT_300X250)
      {
        Log.e("INMOBI_AD_UNIT_300X250", 10);
        i = 10;
      }
      else
      {
        if (paramd1 != ADSIZE_INMOBI_AD_UNIT_120X600) {
          break;
        }
        i = 13;
        Log.e("INMOBI_AD_UNIT_120X600", 13);
      }
    }
    paramd.onFailedToReceiveAd(this, b.a);
  }
  
  public final void requestInterstitialAd(f paramf, Activity paramActivity, InMobiAdapterServerParameters paramInMobiAdapterServerParameters, a parama, InMobiAdapterExtras paramInMobiAdapterExtras)
  {
    if (!isAppInitialize.booleanValue())
    {
      InMobi.initialize(paramActivity, appId);
      isAppInitialize = Boolean.valueOf(true);
    }
    if (Build.VERSION.SDK_INT < 7)
    {
      paramf.onFailedToReceiveAd(this, b.a);
      return;
    }
    if (!InMobi.getVersion().substring(0, 1).equals("4"))
    {
      paramf.onFailedToReceiveAd(this, b.a);
      Log.e("Invalid SDK VERSION", "Please integrate with new sdk" + InMobi.getVersion());
      return;
    }
    interstitialListener = paramf;
    adInterstitial = new IMInterstitial(paramActivity, appId);
    if (parama.c() != null) {
      adInterstitial.setKeywords(TextUtils.join(", ", parama.c()));
    }
    paramf = new HashMap();
    paramf.put("tp", "c_admob");
    paramf.put("tp-ver", "6.2.1");
    adInterstitial.setRequestParams(paramf);
    adInterstitial.setIMInterstitialListener(new InMobiAdapter.InterstitialListener(this, null));
    if (disableHardwareFlag.booleanValue()) {
      adInterstitial.disableHardwareAcceleration();
    }
    buildAdRequest(parama, paramInMobiAdapterExtras);
    adInterstitial.loadInterstitial();
  }
  
  public final void showInterstitial()
  {
    if (adInterstitial.getState() == IMInterstitial.State.READY) {
      adInterstitial.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.inmobi.InMobiAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */