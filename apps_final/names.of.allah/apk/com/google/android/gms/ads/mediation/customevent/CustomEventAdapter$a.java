package com.google.android.gms.ads.mediation.customevent;

import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.ev;

final class CustomEventAdapter$a
  implements CustomEventBannerListener
{
  private final MediationBannerListener l;
  private final CustomEventAdapter sV;
  
  public CustomEventAdapter$a(CustomEventAdapter paramCustomEventAdapter, MediationBannerListener paramMediationBannerListener)
  {
    sV = paramCustomEventAdapter;
    l = paramMediationBannerListener;
  }
  
  public final void onAdClicked()
  {
    ev.z("Custom event adapter called onAdClicked.");
    l.onAdClicked(sV);
  }
  
  public final void onAdClosed()
  {
    ev.z("Custom event adapter called onAdClosed.");
    l.onAdClosed(sV);
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    ev.z("Custom event adapter called onAdFailedToLoad.");
    l.onAdFailedToLoad(sV, paramInt);
  }
  
  public final void onAdLeftApplication()
  {
    ev.z("Custom event adapter called onAdLeftApplication.");
    l.onAdLeftApplication(sV);
  }
  
  public final void onAdLoaded(View paramView)
  {
    ev.z("Custom event adapter called onAdLoaded.");
    CustomEventAdapter.a(sV, paramView);
    l.onAdLoaded(sV);
  }
  
  public final void onAdOpened()
  {
    ev.z("Custom event adapter called onAdOpened.");
    l.onAdOpened(sV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */