package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.b;
import com.google.ads.mediation.c;
import com.google.ads.mediation.d;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.google.ads.mediation.g;
import com.google.ads.mediation.j;

public final class cb<NETWORK_EXTRAS extends j, SERVER_PARAMETERS extends g>
  implements d, f
{
  private final bw nR;
  
  public cb(bw parambw)
  {
    nR = parambw;
  }
  
  public final void onClick(c<?, ?> paramc)
  {
    ev.z("Adapter called onClick.");
    if (!eu.bR())
    {
      ev.D("onClick must be called on the main UI thread.");
      eu.ss.post(new cb.1(this));
      return;
    }
    try
    {
      nR.onAdClicked();
      return;
    }
    catch (RemoteException paramc)
    {
      ev.c("Could not call onAdClicked.", paramc);
    }
  }
  
  public final void onDismissScreen(c<?, ?> paramc)
  {
    ev.z("Adapter called onDismissScreen.");
    if (!eu.bR())
    {
      ev.D("onDismissScreen must be called on the main UI thread.");
      eu.ss.post(new cb.4(this));
      return;
    }
    try
    {
      nR.onAdClosed();
      return;
    }
    catch (RemoteException paramc)
    {
      ev.c("Could not call onAdClosed.", paramc);
    }
  }
  
  public final void onDismissScreen(e<?, ?> parame)
  {
    ev.z("Adapter called onDismissScreen.");
    if (!eu.bR())
    {
      ev.D("onDismissScreen must be called on the main UI thread.");
      eu.ss.post(new cb.9(this));
      return;
    }
    try
    {
      nR.onAdClosed();
      return;
    }
    catch (RemoteException parame)
    {
      ev.c("Could not call onAdClosed.", parame);
    }
  }
  
  public final void onFailedToReceiveAd(c<?, ?> paramc, b paramb)
  {
    ev.z("Adapter called onFailedToReceiveAd with error. " + paramb);
    if (!eu.bR())
    {
      ev.D("onFailedToReceiveAd must be called on the main UI thread.");
      eu.ss.post(new cb.5(this, paramb));
      return;
    }
    try
    {
      nR.onAdFailedToLoad(cc.a(paramb));
      return;
    }
    catch (RemoteException paramc)
    {
      ev.c("Could not call onAdFailedToLoad.", paramc);
    }
  }
  
  public final void onFailedToReceiveAd(e<?, ?> parame, b paramb)
  {
    ev.z("Adapter called onFailedToReceiveAd with error " + paramb + ".");
    if (!eu.bR())
    {
      ev.D("onFailedToReceiveAd must be called on the main UI thread.");
      eu.ss.post(new cb.10(this, paramb));
      return;
    }
    try
    {
      nR.onAdFailedToLoad(cc.a(paramb));
      return;
    }
    catch (RemoteException parame)
    {
      ev.c("Could not call onAdFailedToLoad.", parame);
    }
  }
  
  public final void onLeaveApplication(c<?, ?> paramc)
  {
    ev.z("Adapter called onLeaveApplication.");
    if (!eu.bR())
    {
      ev.D("onLeaveApplication must be called on the main UI thread.");
      eu.ss.post(new cb.6(this));
      return;
    }
    try
    {
      nR.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramc)
    {
      ev.c("Could not call onAdLeftApplication.", paramc);
    }
  }
  
  public final void onLeaveApplication(e<?, ?> parame)
  {
    ev.z("Adapter called onLeaveApplication.");
    if (!eu.bR())
    {
      ev.D("onLeaveApplication must be called on the main UI thread.");
      eu.ss.post(new cb.11(this));
      return;
    }
    try
    {
      nR.onAdLeftApplication();
      return;
    }
    catch (RemoteException parame)
    {
      ev.c("Could not call onAdLeftApplication.", parame);
    }
  }
  
  public final void onPresentScreen(c<?, ?> paramc)
  {
    ev.z("Adapter called onPresentScreen.");
    if (!eu.bR())
    {
      ev.D("onPresentScreen must be called on the main UI thread.");
      eu.ss.post(new cb.7(this));
      return;
    }
    try
    {
      nR.onAdOpened();
      return;
    }
    catch (RemoteException paramc)
    {
      ev.c("Could not call onAdOpened.", paramc);
    }
  }
  
  public final void onPresentScreen(e<?, ?> parame)
  {
    ev.z("Adapter called onPresentScreen.");
    if (!eu.bR())
    {
      ev.D("onPresentScreen must be called on the main UI thread.");
      eu.ss.post(new cb.2(this));
      return;
    }
    try
    {
      nR.onAdOpened();
      return;
    }
    catch (RemoteException parame)
    {
      ev.c("Could not call onAdOpened.", parame);
    }
  }
  
  public final void onReceivedAd(c<?, ?> paramc)
  {
    ev.z("Adapter called onReceivedAd.");
    if (!eu.bR())
    {
      ev.D("onReceivedAd must be called on the main UI thread.");
      eu.ss.post(new cb.8(this));
      return;
    }
    try
    {
      nR.onAdLoaded();
      return;
    }
    catch (RemoteException paramc)
    {
      ev.c("Could not call onAdLoaded.", paramc);
    }
  }
  
  public final void onReceivedAd(e<?, ?> parame)
  {
    ev.z("Adapter called onReceivedAd.");
    if (!eu.bR())
    {
      ev.D("onReceivedAd must be called on the main UI thread.");
      eu.ss.post(new cb.3(this));
      return;
    }
    try
    {
      nR.onAdLoaded();
      return;
    }
    catch (RemoteException parame)
    {
      ev.c("Could not call onAdLoaded.", parame);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */