package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class do
  extends en
  implements dq.a, ez.a
{
  private final bu kz;
  private final ey lL;
  private final Object lq = new Object();
  private final Context mContext;
  private bn nd;
  private dv pA;
  private boolean pB = false;
  private bl pC;
  private br pD;
  private final dn.a pv;
  private final Object pw = new Object();
  private final dt.a px;
  private final l py;
  private en pz;
  
  public do(Context paramContext, dt.a parama, l paraml, ey paramey, bu parambu, dn.a parama1)
  {
    kz = parambu;
    pv = parama1;
    lL = paramey;
    mContext = paramContext;
    px = parama;
    py = paraml;
  }
  
  private am a(dt paramdt)
  {
    if (pA.qg == null) {
      throw new do.a("The ad response must specify one of the supported ad sizes.", 0);
    }
    Object localObject = pA.qg.split("x");
    if (localObject.length != 2) {
      throw new do.a("Could not parse the ad size from the ad response: " + pA.qg, 0);
    }
    for (;;)
    {
      int i;
      am localam;
      try
      {
        int m = Integer.parseInt(localObject[0]);
        int n = Integer.parseInt(localObject[1]);
        localObject = kR.me;
        int i1 = localObject.length;
        i = 0;
        if (i >= i1) {
          break;
        }
        localam = localObject[i];
        float f = mContext.getResources().getDisplayMetrics().density;
        if (width == -1)
        {
          j = (int)(widthPixels / f);
          if (height != -2) {
            break label243;
          }
          k = (int)(heightPixels / f);
          if ((m != j) || (n != k)) {
            break label253;
          }
          return new am(localam, kR.me);
        }
      }
      catch (NumberFormatException paramdt)
      {
        throw new do.a("Could not parse the ad size from the ad response: " + pA.qg, 0);
      }
      int j = width;
      continue;
      label243:
      int k = height;
      continue;
      label253:
      i += 1;
    }
    throw new do.a("The ad size from the ad response was not one of the requested sizes: " + pA.qg, 0);
  }
  
  private void a(dt paramdt, long paramLong)
  {
    synchronized (pw)
    {
      pC = new bl(mContext, paramdt, kz, nd);
      pD = pC.a(paramLong, 60000L);
      switch (pD.nJ)
      {
      default: 
        throw new do.a("Unexpected mediation result: " + pD.nJ, 0);
      }
    }
    throw new do.a("No fill from any mediation ad networks.", 3);
  }
  
  private void bi()
  {
    if (pA.errorCode == -3) {}
    do
    {
      return;
      if (TextUtils.isEmpty(pA.qb)) {
        throw new do.a("No fill from ad server.", 3);
      }
    } while (!pA.qd);
    try
    {
      nd = new bn(pA.qb);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new do.a("Could not parse mediation config: " + pA.qb, 0);
    }
  }
  
  private boolean c(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      lq.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new do.a("Ad request cancelled.", -1);
    }
  }
  
  private void e(long paramLong)
  {
    eu.ss.post(new do.3(this));
    h(paramLong);
  }
  
  private void g(long paramLong)
  {
    do
    {
      if (!c(paramLong)) {
        throw new do.a("Timed out waiting for ad response.", 2);
      }
    } while (pA == null);
    synchronized (pw)
    {
      pz = null;
      if ((pA.errorCode != -2) && (pA.errorCode != -3)) {
        throw new do.a("There was a problem getting an ad response. ErrorCode: " + pA.errorCode, pA.errorCode);
      }
    }
  }
  
  private void h(long paramLong)
  {
    do
    {
      if (!c(paramLong)) {
        throw new do.a("Timed out waiting for WebView to finish loading.", 2);
      }
    } while (!pB);
  }
  
  public void a(dv paramdv)
  {
    synchronized (lq)
    {
      ev.z("Received ad response.");
      pA = paramdv;
      lq.notify();
      return;
    }
  }
  
  public void a(ey arg1)
  {
    synchronized (lq)
    {
      ev.z("WebView finished loading.");
      pB = true;
      lq.notify();
      return;
    }
  }
  
  public void bc()
  {
    for (;;)
    {
      int i;
      synchronized (lq)
      {
        ev.z("AdLoaderBackgroundTask started.");
        String str1 = py.y().a(mContext);
        localObject6 = new dt(px, str1);
        str1 = null;
        localbm = null;
        i = -2;
        long l1 = -1L;
        long l2 = l1;
        Object localObject4 = localbm;
        long l3;
        try
        {
          l3 = SystemClock.elapsedRealtime();
          l2 = l1;
          localObject4 = localbm;
          localObject8 = dq.a(mContext, (dt)localObject6, this);
          l2 = l1;
          localObject4 = localbm;
          localObject7 = pw;
          l2 = l1;
          localObject4 = localbm;
          try
          {
            pz = ((en)localObject8);
            if (pz != null) {
              continue;
            }
            throw new do.a("Could not start the ad request service.", 0);
          }
          finally
          {
            l2 = l1;
            localObject4 = localbm;
            l2 = l1;
            localObject4 = localbm;
          }
          if (i != -1) {
            continue;
          }
        }
        catch (do.a locala)
        {
          i = locala.getErrorCode();
          if (i == 3) {}
        }
        ev.B(locala.getMessage());
        Object localObject2;
        boolean bool;
        if (pA == null)
        {
          pA = new dv(i);
          eu.ss.post(new do.1(this));
          l1 = l2;
          localObject2 = localObject4;
          bool = TextUtils.isEmpty(pA.ql);
          if (bool) {
            break label675;
          }
        }
        try
        {
          localObject4 = new JSONObject(pA.ql);
          aj localaj = pV;
          ey localey = lL;
          List localList1 = pA.nr;
          List localList2 = pA.ns;
          List localList3 = pA.qf;
          int j = pA.orientation;
          l2 = pA.nv;
          String str2 = pY;
          bool = pA.qd;
          if (pD == null) {
            break label680;
          }
          localbm = pD.nK;
          if (pD == null) {
            break label685;
          }
          localObject6 = pD.nL;
          if (pD == null) {
            break label691;
          }
          localObject7 = pD.nM;
          bn localbn = nd;
          if (pD == null) {
            break label697;
          }
          localObject8 = pD.nN;
          localObject2 = new eg(localaj, localey, localList1, i, localList2, localList3, j, l2, str2, bool, localbm, (bv)localObject6, (String)localObject7, localbn, (bp)localObject8, pA.qe, (am)localObject2, pA.qc, l1, pA.qh, pA.qi, (JSONObject)localObject4);
          eu.ss.post(new do.2(this, (eg)localObject2));
          return;
        }
        catch (Exception localException)
        {
          ev.b("Error parsing the JSON for Active View.", localException);
        }
        l2 = l1;
        localObject4 = localbm;
        g(l3);
        l2 = l1;
        localObject4 = localbm;
        l1 = SystemClock.elapsedRealtime();
        l2 = l1;
        localObject4 = localbm;
        bi();
        l2 = l1;
        localObject4 = localbm;
        if (kR.me != null)
        {
          l2 = l1;
          localObject4 = localbm;
          localObject2 = a((dt)localObject6);
        }
        l2 = l1;
        localObject4 = localObject2;
        if (pA.qd)
        {
          l2 = l1;
          localObject4 = localObject2;
          a((dt)localObject6, l3);
          continue;
        }
        l2 = l1;
        localObject4 = localObject2;
        if (pA.qj)
        {
          l2 = l1;
          localObject4 = localObject2;
          f(l3);
          continue;
        }
        l2 = l1;
        localObject4 = localObject2;
        e(l3);
        continue;
        ev.D(((do.a)localObject2).getMessage());
      }
      pA = new dv(i, pA.nv);
      continue;
      label675:
      Object localObject5 = null;
      continue;
      label680:
      bm localbm = null;
      continue;
      label685:
      Object localObject6 = null;
      continue;
      label691:
      Object localObject7 = null;
      continue;
      label697:
      Object localObject8 = null;
    }
  }
  
  protected void f(long paramLong)
  {
    Object localObject = lL.Q();
    int j;
    if (md) {
      j = mContext.getResources().getDisplayMetrics().widthPixels;
    }
    for (int i = mContext.getResources().getDisplayMetrics().heightPixels;; i = heightPixels)
    {
      localObject = new dp(this, lL, j, i);
      eu.ss.post(new do.4(this, (dp)localObject));
      h(paramLong);
      if (!((dp)localObject).bl()) {
        break;
      }
      ev.z("Ad-Network indicated no fill with passback URL.");
      throw new do.a("AdNetwork sent passback url", 3);
      j = widthPixels;
    }
    if (!((dp)localObject).bm()) {
      throw new do.a("AdNetwork timed out", 2);
    }
  }
  
  public void onStop()
  {
    synchronized (pw)
    {
      if (pz != null) {
        pz.cancel();
      }
      lL.stopLoading();
      ep.a(lL);
      if (pC != null) {
        pC.cancel();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */