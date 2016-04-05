package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

public final class gi
  extends hc<gm>
{
  private static final go BD = new go("CastClientImpl");
  private static final Object BX = new Object();
  private static final Object BY = new Object();
  private double AM;
  private boolean AN;
  private final Cast.Listener Ab;
  private ApplicationMetadata BE;
  private final CastDevice BF;
  private final gn BG;
  private final Map<String, Cast.MessageReceivedCallback> BH;
  private final long BI;
  private String BJ;
  private boolean BK;
  private boolean BL;
  private boolean BM;
  private AtomicBoolean BN;
  private int BO;
  private final AtomicLong BP;
  private String BQ;
  private String BR;
  private Bundle BS;
  private Map<Long, a.d<Status>> BT;
  private gi.b BU;
  private a.d<Cast.ApplicationConnectionResult> BV;
  private a.d<Status> BW;
  private final Handler mHandler;
  
  public gi(Context paramContext, Looper paramLooper, CastDevice paramCastDevice, long paramLong, Cast.Listener paramListener, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, null);
    BF = paramCastDevice;
    Ab = paramListener;
    BI = paramLong;
    mHandler = new Handler(paramLooper);
    BH = new HashMap();
    BM = false;
    BO = -1;
    BE = null;
    BJ = null;
    BN = new AtomicBoolean(false);
    AM = 0.0D;
    AN = false;
    BP = new AtomicLong(0L);
    BT = new HashMap();
    BU = new gi.b(this, null);
    registerConnectionFailedListener(BU);
    BG = new gi.1(this);
  }
  
  private void a(gf paramgf)
  {
    paramgf = paramgf.dX();
    if (!gj.a(paramgf, BJ)) {
      BJ = paramgf;
    }
    for (boolean bool = true;; bool = false)
    {
      BD.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", new Object[] { Boolean.valueOf(bool), Boolean.valueOf(BK) });
      if ((Ab != null) && ((bool) || (BK))) {
        Ab.onApplicationStatusChanged();
      }
      BK = false;
      return;
    }
  }
  
  private void a(gk paramgk)
  {
    double d = paramgk.ec();
    if ((d != NaN.0D) && (d != AM)) {
      AM = d;
    }
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = paramgk.ei();
      if (bool2 != AN)
      {
        AN = bool2;
        bool1 = true;
      }
      BD.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(BL) });
      if ((Ab != null) && ((bool1) || (BL))) {
        Ab.onVolumeChanged();
      }
      int i = paramgk.ej();
      if (i != BO) {
        BO = i;
      }
      for (bool1 = true;; bool1 = false)
      {
        BD.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(BL) });
        if ((Ab != null) && ((bool1) || (BL))) {
          Ab.O(BO);
        }
        BL = false;
        return;
      }
    }
  }
  
  private void c(a.d<Cast.ApplicationConnectionResult> paramd)
  {
    synchronized (BX)
    {
      if (BV != null) {
        BV.a(new gi.a(new Status(2002)));
      }
      BV = paramd;
      return;
    }
  }
  
  private void e(a.d<Status> paramd)
  {
    synchronized (BY)
    {
      if (BW != null)
      {
        paramd.a(new Status(2001));
        return;
      }
      BW = paramd;
      return;
    }
  }
  
  private void ed()
  {
    BD.b("removing all MessageReceivedCallbacks", new Object[0]);
    synchronized (BH)
    {
      BH.clear();
      return;
    }
  }
  
  private void ee()
  {
    if ((!BM) || (BN.get())) {
      throw new IllegalStateException("Not connected to a device");
    }
  }
  
  protected final gm G(IBinder paramIBinder)
  {
    return gm.a.H(paramIBinder);
  }
  
  public final void a(double paramDouble)
  {
    if ((Double.isInfinite(paramDouble)) || (Double.isNaN(paramDouble))) {
      throw new IllegalArgumentException("Volume cannot be " + paramDouble);
    }
    ((gm)fo()).a(paramDouble, AM, AN);
  }
  
  protected final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    BD.b("in onPostInitHandler; statusCode=%d", new Object[] { Integer.valueOf(paramInt) });
    if ((paramInt == 0) || (paramInt == 1001))
    {
      BM = true;
      BK = true;
      BL = true;
    }
    for (;;)
    {
      int i = paramInt;
      if (paramInt == 1001)
      {
        BS = new Bundle();
        BS.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
        i = 0;
      }
      super.a(i, paramIBinder, paramBundle);
      return;
      BM = false;
    }
  }
  
  protected final void a(hj paramhj, hc.e parame)
  {
    Bundle localBundle = new Bundle();
    BD.b("getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s", new Object[] { BQ, BR });
    BF.putInBundle(localBundle);
    localBundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", BI);
    if (BQ != null)
    {
      localBundle.putString("last_application_id", BQ);
      if (BR != null) {
        localBundle.putString("last_session_id", BR);
      }
    }
    paramhj.a(parame, 5077000, getContext().getPackageName(), BG.asBinder(), localBundle);
  }
  
  public final void a(String paramString, Cast.MessageReceivedCallback paramMessageReceivedCallback)
  {
    gj.ak(paramString);
    aj(paramString);
    if (paramMessageReceivedCallback != null) {}
    synchronized (BH)
    {
      BH.put(paramString, paramMessageReceivedCallback);
      ((gm)fo()).an(paramString);
      return;
    }
  }
  
  public final void a(String paramString, LaunchOptions paramLaunchOptions, a.d<Cast.ApplicationConnectionResult> paramd)
  {
    c(paramd);
    ((gm)fo()).a(paramString, paramLaunchOptions);
  }
  
  public final void a(String paramString, a.d<Status> paramd)
  {
    e(paramd);
    ((gm)fo()).am(paramString);
  }
  
  public final void a(String paramString1, String paramString2, a.d<Status> paramd)
  {
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("The message payload cannot be null or empty");
    }
    if (paramString2.length() > 65536) {
      throw new IllegalArgumentException("Message exceeds maximum size");
    }
    gj.ak(paramString1);
    ee();
    long l = BP.incrementAndGet();
    ((gm)fo()).a(paramString1, paramString2, l);
    BT.put(Long.valueOf(l), paramd);
  }
  
  public final void a(String paramString, boolean paramBoolean, a.d<Cast.ApplicationConnectionResult> paramd)
  {
    c(paramd);
    ((gm)fo()).e(paramString, paramBoolean);
  }
  
  public final void aj(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Channel namespace cannot be null or empty");
    }
    synchronized (BH)
    {
      Cast.MessageReceivedCallback localMessageReceivedCallback = (Cast.MessageReceivedCallback)BH.remove(paramString);
      if (localMessageReceivedCallback == null) {}
    }
  }
  
  public final void b(String paramString1, String paramString2, a.d<Cast.ApplicationConnectionResult> paramd)
  {
    c(paramd);
    ((gm)fo()).h(paramString1, paramString2);
  }
  
  protected final String bp()
  {
    return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
  }
  
  protected final String bq()
  {
    return "com.google.android.gms.cast.internal.ICastDeviceController";
  }
  
  public final void d(a.d<Status> paramd)
  {
    e(paramd);
    ((gm)fo()).ek();
  }
  
  public final void disconnect()
  {
    BD.b("disconnect(); mDisconnecting=%b, isConnected=%b", new Object[] { Boolean.valueOf(BN.get()), Boolean.valueOf(isConnected()) });
    if (BN.getAndSet(true))
    {
      BD.b("mDisconnecting is set, so short-circuiting", new Object[0]);
      return;
    }
    ed();
    try
    {
      if ((isConnected()) || (isConnecting())) {
        ((gm)fo()).disconnect();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      BD.a(localRemoteException, "Error while disconnecting the controller interface: %s", new Object[] { localRemoteException.getMessage() });
      return;
    }
    finally
    {
      super.disconnect();
    }
  }
  
  public final Bundle ea()
  {
    if (BS != null)
    {
      Bundle localBundle = BS;
      BS = null;
      return localBundle;
    }
    return super.ea();
  }
  
  public final void eb()
  {
    ((gm)fo()).eb();
  }
  
  public final double ec()
  {
    ee();
    return AM;
  }
  
  public final ApplicationMetadata getApplicationMetadata()
  {
    ee();
    return BE;
  }
  
  public final String getApplicationStatus()
  {
    ee();
    return BJ;
  }
  
  public final boolean isMute()
  {
    ee();
    return AN;
  }
  
  public final void y(boolean paramBoolean)
  {
    ((gm)fo()).a(paramBoolean, AM, AN);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */