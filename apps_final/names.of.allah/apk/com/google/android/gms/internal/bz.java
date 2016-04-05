package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

public final class bz
  implements MediationBannerListener, MediationInterstitialListener
{
  private final bw nR;
  
  public bz(bw parambw)
  {
    nR = parambw;
  }
  
  public final void onAdClicked(MediationBannerAdapter paramMediationBannerAdapter)
  {
    hn.ay("onAdClicked must be called on the main UI thread.");
    ev.z("Adapter called onAdClicked.");
    try
    {
      nR.onAdClicked();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      ev.c("Could not call onAdClicked.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdClicked(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    hn.ay("onAdClicked must be called on the main UI thread.");
    ev.z("Adapter called onAdClicked.");
    try
    {
      nR.onAdClicked();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      ev.c("Could not call onAdClicked.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdClosed(MediationBannerAdapter paramMediationBannerAdapter)
  {
    hn.ay("onAdClosed must be called on the main UI thread.");
    ev.z("Adapter called onAdClosed.");
    try
    {
      nR.onAdClosed();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      ev.c("Could not call onAdClosed.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdClosed(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    hn.ay("onAdClosed must be called on the main UI thread.");
    ev.z("Adapter called onAdClosed.");
    try
    {
      nR.onAdClosed();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      ev.c("Could not call onAdClosed.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdFailedToLoad(MediationBannerAdapter paramMediationBannerAdapter, int paramInt)
  {
    hn.ay("onAdFailedToLoad must be called on the main UI thread.");
    ev.z("Adapter called onAdFailedToLoad with error. " + paramInt);
    try
    {
      nR.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      ev.c("Could not call onAdFailedToLoad.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdFailedToLoad(MediationInterstitialAdapter paramMediationInterstitialAdapter, int paramInt)
  {
    hn.ay("onAdFailedToLoad must be called on the main UI thread.");
    ev.z("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      nR.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      ev.c("Could not call onAdFailedToLoad.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdLeftApplication(MediationBannerAdapter paramMediationBannerAdapter)
  {
    hn.ay("onAdLeftApplication must be called on the main UI thread.");
    ev.z("Adapter called onAdLeftApplication.");
    try
    {
      nR.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      ev.c("Could not call onAdLeftApplication.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdLeftApplication(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    hn.ay("onAdLeftApplication must be called on the main UI thread.");
    ev.z("Adapter called onAdLeftApplication.");
    try
    {
      nR.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      ev.c("Could not call onAdLeftApplication.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdLoaded(MediationBannerAdapter paramMediationBannerAdapter)
  {
    hn.ay("onAdLoaded must be called on the main UI thread.");
    ev.z("Adapter called onAdLoaded.");
    try
    {
      nR.onAdLoaded();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      ev.c("Could not call onAdLoaded.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdLoaded(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    hn.ay("onAdLoaded must be called on the main UI thread.");
    ev.z("Adapter called onAdLoaded.");
    try
    {
      nR.onAdLoaded();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      ev.c("Could not call onAdLoaded.", paramMediationInterstitialAdapter);
    }
  }
  
  public final void onAdOpened(MediationBannerAdapter paramMediationBannerAdapter)
  {
    hn.ay("onAdOpened must be called on the main UI thread.");
    ev.z("Adapter called onAdOpened.");
    try
    {
      nR.onAdOpened();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      ev.c("Could not call onAdOpened.", paramMediationBannerAdapter);
    }
  }
  
  public final void onAdOpened(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    hn.ay("onAdOpened must be called on the main UI thread.");
    ev.z("Adapter called onAdOpened.");
    try
    {
      nR.onAdOpened();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      ev.c("Could not call onAdOpened.", paramMediationInterstitialAdapter);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */