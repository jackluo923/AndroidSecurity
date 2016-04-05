package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

public final class aw
{
  private AdListener lO;
  private PlayStorePurchaseListener mA;
  private final Context mContext;
  private AppEventListener mf;
  private String mh;
  private final bt mu = new bt();
  private final al mv;
  private ar mw;
  private String mx;
  private InAppPurchaseListener mz;
  
  public aw(Context paramContext)
  {
    this(paramContext, al.aA());
  }
  
  public aw(Context paramContext, al paramal)
  {
    mContext = paramContext;
    mv = paramal;
  }
  
  private void k(String paramString)
  {
    if (mh == null) {
      l(paramString);
    }
    mw = ai.a(mContext, new am(), mh, mu);
    if (lO != null) {
      mw.a(new ah(lO));
    }
    if (mf != null) {
      mw.a(new ao(mf));
    }
    if (mz != null) {
      mw.a(new di(mz));
    }
    if (mA != null) {
      mw.a(new dm(mA), mx);
    }
  }
  
  private void l(String paramString)
  {
    if (mw == null) {
      throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + paramString + " is called.");
    }
  }
  
  public final void a(au paramau)
  {
    try
    {
      if (mw == null) {
        k("loadAd");
      }
      if (mw.a(mv.a(mContext, paramau))) {
        mu.c(paramau.aD());
      }
      return;
    }
    catch (RemoteException paramau)
    {
      ev.c("Failed to load ad.", paramau);
    }
  }
  
  public final AdListener getAdListener()
  {
    return lO;
  }
  
  public final String getAdUnitId()
  {
    return mh;
  }
  
  public final AppEventListener getAppEventListener()
  {
    return mf;
  }
  
  public final InAppPurchaseListener getInAppPurchaseListener()
  {
    return mz;
  }
  
  public final boolean isLoaded()
  {
    try
    {
      if (mw == null) {
        return false;
      }
      boolean bool = mw.isReady();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to check if ad is ready.", localRemoteException);
    }
    return false;
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    try
    {
      lO = paramAdListener;
      ar localar;
      if (mw != null)
      {
        localar = mw;
        if (paramAdListener == null) {
          break label38;
        }
      }
      label38:
      for (paramAdListener = new ah(paramAdListener);; paramAdListener = null)
      {
        localar.a(paramAdListener);
        return;
      }
      return;
    }
    catch (RemoteException paramAdListener)
    {
      ev.c("Failed to set the AdListener.", paramAdListener);
    }
  }
  
  public final void setAdUnitId(String paramString)
  {
    if (mh != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }
    mh = paramString;
  }
  
  public final void setAppEventListener(AppEventListener paramAppEventListener)
  {
    try
    {
      mf = paramAppEventListener;
      ar localar;
      if (mw != null)
      {
        localar = mw;
        if (paramAppEventListener == null) {
          break label38;
        }
      }
      label38:
      for (paramAppEventListener = new ao(paramAppEventListener);; paramAppEventListener = null)
      {
        localar.a(paramAppEventListener);
        return;
      }
      return;
    }
    catch (RemoteException paramAppEventListener)
    {
      ev.c("Failed to set the AppEventListener.", paramAppEventListener);
    }
  }
  
  public final void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    if (mA != null) {
      throw new IllegalStateException("Play store purchase parameter has already been set.");
    }
    try
    {
      mz = paramInAppPurchaseListener;
      ar localar;
      if (mw != null)
      {
        localar = mw;
        if (paramInAppPurchaseListener == null) {
          break label55;
        }
      }
      label55:
      for (paramInAppPurchaseListener = new di(paramInAppPurchaseListener);; paramInAppPurchaseListener = null)
      {
        localar.a(paramInAppPurchaseListener);
        return;
      }
      return;
    }
    catch (RemoteException paramInAppPurchaseListener)
    {
      ev.c("Failed to set the InAppPurchaseListener.", paramInAppPurchaseListener);
    }
  }
  
  public final void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    try
    {
      mA = paramPlayStorePurchaseListener;
      ar localar;
      if (mw != null)
      {
        localar = mw;
        if (paramPlayStorePurchaseListener == null) {
          break label39;
        }
      }
      label39:
      for (paramPlayStorePurchaseListener = new dm(paramPlayStorePurchaseListener);; paramPlayStorePurchaseListener = null)
      {
        localar.a(paramPlayStorePurchaseListener, paramString);
        return;
      }
      return;
    }
    catch (RemoteException paramPlayStorePurchaseListener)
    {
      ev.c("Failed to set the play store purchase parameter.", paramPlayStorePurchaseListener);
    }
  }
  
  public final void show()
  {
    try
    {
      l("show");
      mw.showInterstitial();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to show interstitial.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */