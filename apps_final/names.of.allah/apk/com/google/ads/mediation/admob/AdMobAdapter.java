package com.google.ads.mediation.admob;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.eu;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

public final class AdMobAdapter
  implements MediationBannerAdapter, MediationInterstitialAdapter
{
  private AdView i;
  private InterstitialAd j;
  
  private static AdRequest a(Context paramContext, MediationAdRequest paramMediationAdRequest, Bundle paramBundle1, Bundle paramBundle2)
  {
    AdRequest.Builder localBuilder = new AdRequest.Builder();
    Object localObject = paramMediationAdRequest.getBirthday();
    if (localObject != null) {
      localBuilder.setBirthday((Date)localObject);
    }
    int k = paramMediationAdRequest.getGender();
    if (k != 0) {
      localBuilder.setGender(k);
    }
    localObject = paramMediationAdRequest.getKeywords();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localBuilder.addKeyword((String)((Iterator)localObject).next());
      }
    }
    if (paramMediationAdRequest.isTesting()) {
      localBuilder.addTestDevice(eu.o(paramContext));
    }
    boolean bool;
    if (paramBundle2.getInt("tagForChildDirectedTreatment") != -1)
    {
      if (paramBundle2.getInt("tagForChildDirectedTreatment") == 1)
      {
        bool = true;
        localBuilder.tagForChildDirectedTreatment(bool);
      }
    }
    else {
      if (paramBundle1 == null) {
        break label227;
      }
    }
    for (;;)
    {
      paramBundle1.putInt("gw", 1);
      paramBundle1.putString("mad_hac", paramBundle2.getString("mad_hac"));
      if (!TextUtils.isEmpty(paramBundle2.getString("adJson"))) {
        paramBundle1.putString("_ad", paramBundle2.getString("adJson"));
      }
      paramBundle1.putBoolean("_noRefresh", true);
      localBuilder.addNetworkExtrasBundle(AdMobAdapter.class, paramBundle1);
      return localBuilder.build();
      bool = false;
      break;
      label227:
      paramBundle1 = new Bundle();
    }
  }
  
  public final View getBannerView()
  {
    return i;
  }
  
  public final void onDestroy()
  {
    if (i != null)
    {
      i.destroy();
      i = null;
    }
    if (j != null) {
      j = null;
    }
  }
  
  public final void onPause()
  {
    if (i != null) {
      i.pause();
    }
  }
  
  public final void onResume()
  {
    if (i != null) {
      i.resume();
    }
  }
  
  public final void requestBannerAd(Context paramContext, MediationBannerListener paramMediationBannerListener, Bundle paramBundle1, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    i = new AdView(paramContext);
    i.setAdSize(new AdSize(paramAdSize.getWidth(), paramAdSize.getHeight()));
    i.setAdUnitId(paramBundle1.getString("pubid"));
    i.setAdListener(new AdMobAdapter.a(this, paramMediationBannerListener));
    i.loadAd(a(paramContext, paramMediationAdRequest, paramBundle2, paramBundle1));
  }
  
  public final void requestInterstitialAd(Context paramContext, MediationInterstitialListener paramMediationInterstitialListener, Bundle paramBundle1, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    j = new InterstitialAd(paramContext);
    j.setAdUnitId(paramBundle1.getString("pubid"));
    j.setAdListener(new AdMobAdapter.b(this, paramMediationInterstitialListener));
    j.loadAd(a(paramContext, paramMediationAdRequest, paramBundle2, paramBundle1));
  }
  
  public final void showInterstitial()
  {
    j.show();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.admob.AdMobAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */