package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

public final class av
{
  private AdListener lO;
  private PlayStorePurchaseListener mA;
  private AppEventListener mf;
  private AdSize[] mg;
  private String mh;
  private final bt mu = new bt();
  private final al mv;
  private ar mw;
  private String mx;
  private ViewGroup my;
  private InAppPurchaseListener mz;
  
  public av(ViewGroup paramViewGroup)
  {
    this(paramViewGroup, null, false, al.aA());
  }
  
  public av(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean, al.aA());
  }
  
  av(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean, al paramal)
  {
    my = paramViewGroup;
    mv = paramal;
    if (paramAttributeSet != null) {
      paramal = paramViewGroup.getContext();
    }
    try
    {
      paramAttributeSet = new ap(paramal, paramAttributeSet);
      mg = paramAttributeSet.f(paramBoolean);
      mh = paramAttributeSet.getAdUnitId();
      if (paramViewGroup.isInEditMode()) {
        eu.a(paramViewGroup, new am(paramal, mg[0]), "Ads by Google");
      }
      return;
    }
    catch (IllegalArgumentException paramAttributeSet)
    {
      eu.a(paramViewGroup, new am(paramal, AdSize.BANNER), paramAttributeSet.getMessage(), paramAttributeSet.getMessage());
    }
  }
  
  private void aG()
  {
    try
    {
      d locald = mw.P();
      if (locald == null) {
        return;
      }
      my.addView((View)e.e(locald));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to get an ad frame.", localRemoteException);
    }
  }
  
  private void aH()
  {
    if (((mg == null) || (mh == null)) && (mw == null)) {
      throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
    }
    Context localContext = my.getContext();
    mw = ai.a(localContext, new am(localContext, mg), mh, mu);
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
    aG();
  }
  
  public final void a(au paramau)
  {
    try
    {
      if (mw == null) {
        aH();
      }
      if (mw.a(mv.a(my.getContext(), paramau))) {
        mu.c(paramau.aD());
      }
      return;
    }
    catch (RemoteException paramau)
    {
      ev.c("Failed to load ad.", paramau);
    }
  }
  
  public final void a(AdSize... paramVarArgs)
  {
    mg = paramVarArgs;
    try
    {
      if (mw != null) {
        mw.a(new am(my.getContext(), mg));
      }
      my.requestLayout();
      return;
    }
    catch (RemoteException paramVarArgs)
    {
      for (;;)
      {
        ev.c("Failed to set the ad size.", paramVarArgs);
      }
    }
  }
  
  public final void destroy()
  {
    try
    {
      if (mw != null) {
        mw.destroy();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to destroy AdView.", localRemoteException);
    }
  }
  
  public final AdListener getAdListener()
  {
    return lO;
  }
  
  public final AdSize getAdSize()
  {
    try
    {
      if (mw != null)
      {
        AdSize localAdSize = mw.Q().aB();
        return localAdSize;
      }
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to get the current AdSize.", localRemoteException);
      if (mg != null) {
        return mg[0];
      }
    }
    return null;
  }
  
  public final AdSize[] getAdSizes()
  {
    return mg;
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
  
  public final void pause()
  {
    try
    {
      if (mw != null) {
        mw.pause();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to call pause.", localRemoteException);
    }
  }
  
  public final void recordManualImpression()
  {
    try
    {
      mw.ab();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to record impression.", localRemoteException);
    }
  }
  
  public final void resume()
  {
    try
    {
      if (mw != null) {
        mw.resume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Failed to call resume.", localRemoteException);
    }
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
  
  public final void setAdSizes(AdSize... paramVarArgs)
  {
    if (mg != null) {
      throw new IllegalStateException("The ad size can only be set once on AdView.");
    }
    a(paramVarArgs);
  }
  
  public final void setAdUnitId(String paramString)
  {
    if (mh != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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
          break label56;
        }
      }
      label56:
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
    if (mz != null) {
      throw new IllegalStateException("InAppPurchaseListener has already been set.");
    }
    try
    {
      mA = paramPlayStorePurchaseListener;
      mx = paramString;
      ar localar;
      if (mw != null)
      {
        localar = mw;
        if (paramPlayStorePurchaseListener == null) {
          break label62;
        }
      }
      label62:
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */