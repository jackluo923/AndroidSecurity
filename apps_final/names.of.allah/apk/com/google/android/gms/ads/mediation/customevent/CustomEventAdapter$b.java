package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.ev;

class CustomEventAdapter$b
  implements CustomEventInterstitialListener
{
  private final MediationInterstitialListener m;
  private final CustomEventAdapter sV;
  
  public CustomEventAdapter$b(CustomEventAdapter paramCustomEventAdapter1, CustomEventAdapter paramCustomEventAdapter2, MediationInterstitialListener paramMediationInterstitialListener)
  {
    sV = paramCustomEventAdapter2;
    m = paramMediationInterstitialListener;
  }
  
  public void onAdClicked()
  {
    ev.z("Custom event adapter called onAdClicked.");
    m.onAdClicked(sV);
  }
  
  public void onAdClosed()
  {
    ev.z("Custom event adapter called onAdClosed.");
    m.onAdClosed(sV);
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    ev.z("Custom event adapter called onFailedToReceiveAd.");
    m.onAdFailedToLoad(sV, paramInt);
  }
  
  public void onAdLeftApplication()
  {
    ev.z("Custom event adapter called onAdLeftApplication.");
    m.onAdLeftApplication(sV);
  }
  
  public void onAdLoaded()
  {
    ev.z("Custom event adapter called onReceivedAd.");
    m.onAdLoaded(sW);
  }
  
  public void onAdOpened()
  {
    ev.z("Custom event adapter called onAdOpened.");
    m.onAdOpened(sV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */