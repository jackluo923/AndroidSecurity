package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.b;
import com.google.ads.mediation.c;
import com.google.ads.mediation.g;
import com.google.ads.mediation.j;
import com.google.android.gms.dynamic.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public final class ca<NETWORK_EXTRAS extends j, SERVER_PARAMETERS extends g>
  extends bv.a
{
  private final b<NETWORK_EXTRAS, SERVER_PARAMETERS> nS;
  private final NETWORK_EXTRAS nT;
  
  public ca(b<NETWORK_EXTRAS, SERVER_PARAMETERS> paramb, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    nS = paramb;
    nT = paramNETWORK_EXTRAS;
  }
  
  private SERVER_PARAMETERS b(String paramString1, int paramInt, String paramString2)
  {
    if (paramString1 != null) {
      try
      {
        localObject = new JSONObject(paramString1);
        paramString2 = new HashMap(((JSONObject)localObject).length());
        Iterator localIterator = ((JSONObject)localObject).keys();
        for (;;)
        {
          paramString1 = paramString2;
          if (!localIterator.hasNext()) {
            break;
          }
          paramString1 = (String)localIterator.next();
          paramString2.put(paramString1, ((JSONObject)localObject).getString(paramString1));
        }
        paramString1 = new HashMap(0);
      }
      catch (Throwable paramString1)
      {
        ev.c("Could not get MediationServerParameters.", paramString1);
        throw new RemoteException();
      }
    }
    Object localObject = nS.getServerParametersType();
    paramString2 = null;
    if (localObject != null)
    {
      paramString2 = (g)((Class)localObject).newInstance();
      paramString2.load(paramString1);
    }
    return paramString2;
  }
  
  public final void a(d paramd, aj paramaj, String paramString, bw parambw)
  {
    a(paramd, paramaj, paramString, null, parambw);
  }
  
  public final void a(d paramd, aj paramaj, String paramString1, String paramString2, bw parambw)
  {
    if (!(nS instanceof com.google.ads.mediation.e))
    {
      ev.D("MediationAdapter is not a MediationInterstitialAdapter: " + nS.getClass().getCanonicalName());
      throw new RemoteException();
    }
    ev.z("Requesting interstitial ad from adapter.");
    try
    {
      ((com.google.ads.mediation.e)nS).requestInterstitialAd(new cb(parambw), (Activity)com.google.android.gms.dynamic.e.e(paramd), b(paramString1, lU, paramString2), cc.e(paramaj), nT);
      return;
    }
    catch (Throwable paramd)
    {
      ev.c("Could not request interstitial ad from adapter.", paramd);
      throw new RemoteException();
    }
  }
  
  public final void a(d paramd, am paramam, aj paramaj, String paramString, bw parambw)
  {
    a(paramd, paramam, paramaj, paramString, null, parambw);
  }
  
  public final void a(d paramd, am paramam, aj paramaj, String paramString1, String paramString2, bw parambw)
  {
    if (!(nS instanceof c))
    {
      ev.D("MediationAdapter is not a MediationBannerAdapter: " + nS.getClass().getCanonicalName());
      throw new RemoteException();
    }
    ev.z("Requesting banner ad from adapter.");
    try
    {
      ((c)nS).requestBannerAd(new cb(parambw), (Activity)com.google.android.gms.dynamic.e.e(paramd), b(paramString1, lU, paramString2), cc.b(paramam), cc.e(paramaj), nT);
      return;
    }
    catch (Throwable paramd)
    {
      ev.c("Could not request banner ad from adapter.", paramd);
      throw new RemoteException();
    }
  }
  
  public final void destroy()
  {
    try
    {
      nS.destroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final d getView()
  {
    if (!(nS instanceof c))
    {
      ev.D("MediationAdapter is not a MediationBannerAdapter: " + nS.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      d locald = com.google.android.gms.dynamic.e.h(((c)nS).getBannerView());
      return locald;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void pause()
  {
    throw new RemoteException();
  }
  
  public final void resume()
  {
    throw new RemoteException();
  }
  
  public final void showInterstitial()
  {
    if (!(nS instanceof com.google.ads.mediation.e))
    {
      ev.D("MediationAdapter is not a MediationInterstitialAdapter: " + nS.getClass().getCanonicalName());
      throw new RemoteException();
    }
    ev.z("Showing interstitial from adapter.");
    try
    {
      ((com.google.ads.mediation.e)nS).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */