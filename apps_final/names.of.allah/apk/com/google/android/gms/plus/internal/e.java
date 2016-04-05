package com.google.android.gms.plus.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.c;
import com.google.android.gms.internal.hc.e;
import com.google.android.gms.internal.hc.g;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class e
  extends hc<d>
{
  private Person abG;
  private final h abH;
  
  public e(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, h paramh)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramh.jU());
    abH = paramh;
  }
  
  @Deprecated
  public e(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener, h paramh)
  {
    this(paramContext, paramContext.getMainLooper(), new hc.c(paramConnectionCallbacks), new hc.g(paramOnConnectionFailedListener), paramh);
  }
  
  public hh a(a.d<People.LoadPeopleResult> paramd, int paramInt, String paramString)
  {
    ci();
    paramd = new e.e(this, paramd);
    try
    {
      paramString = ((d)fo()).a(paramd, 1, paramInt, -1, paramString);
      return paramString;
    }
    catch (RemoteException paramString)
    {
      paramd.a(DataHolder.af(8), null);
    }
    return null;
  }
  
  protected void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    if ((paramInt == 0) && (paramBundle != null) && (paramBundle.containsKey("loaded_person"))) {
      abG = kt.i(paramBundle.getByteArray("loaded_person"));
    }
    super.a(paramInt, paramIBinder, paramBundle);
  }
  
  public void a(a.d<Moments.LoadMomentsResult> paramd, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    ci();
    if (paramd != null) {}
    for (paramd = new e.b(this, paramd);; paramd = null) {
      try
      {
        ((d)fo()).a(paramd, paramInt, paramString1, paramUri, paramString2, paramString3);
        return;
      }
      catch (RemoteException paramString1)
      {
        paramd.a(DataHolder.af(8), null, null);
      }
    }
  }
  
  public void a(a.d<Status> paramd, Moment paramMoment)
  {
    ci();
    if (paramd != null) {}
    for (paramd = new e.a(this, paramd);; paramd = null) {
      try
      {
        paramMoment = if.a((kq)paramMoment);
        ((d)fo()).a(paramd, paramMoment);
        return;
      }
      catch (RemoteException paramMoment)
      {
        if (paramd != null) {
          break;
        }
        throw new IllegalStateException(paramMoment);
        paramd.am(new Status(8, null, null));
      }
    }
  }
  
  public void a(a.d<People.LoadPeopleResult> paramd, Collection<String> paramCollection)
  {
    ci();
    paramd = new e.e(this, paramd);
    try
    {
      ((d)fo()).a(paramd, new ArrayList(paramCollection));
      return;
    }
    catch (RemoteException paramCollection)
    {
      paramd.a(DataHolder.af(8), null);
    }
  }
  
  protected void a(hj paramhj, hc.e parame)
  {
    Bundle localBundle = abH.kc();
    localBundle.putStringArray("request_visible_actions", abH.jV());
    paramhj.a(parame, 5077000, abH.jY(), abH.jX(), fn(), abH.getAccountName(), localBundle);
  }
  
  protected d bn(IBinder paramIBinder)
  {
    return d.a.bm(paramIBinder);
  }
  
  protected String bp()
  {
    return "com.google.android.gms.plus.service.START";
  }
  
  protected String bq()
  {
    return "com.google.android.gms.plus.internal.IPlusService";
  }
  
  public boolean by(String paramString)
  {
    return Arrays.asList(fn()).contains(paramString);
  }
  
  public void clearDefaultAccount()
  {
    ci();
    try
    {
      abG = null;
      ((d)fo()).clearDefaultAccount();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void d(a.d<People.LoadPeopleResult> paramd, String[] paramArrayOfString)
  {
    a(paramd, Arrays.asList(paramArrayOfString));
  }
  
  public String getAccountName()
  {
    ci();
    try
    {
      String str = ((d)fo()).getAccountName();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public Person getCurrentPerson()
  {
    ci();
    return abG;
  }
  
  public void k(a.d<Moments.LoadMomentsResult> paramd)
  {
    a(paramd, 20, null, null, null, "me");
  }
  
  public void l(a.d<People.LoadPeopleResult> paramd)
  {
    ci();
    paramd = new e.e(this, paramd);
    try
    {
      ((d)fo()).a(paramd, 2, 1, -1, null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      paramd.a(DataHolder.af(8), null);
    }
  }
  
  public void m(a.d<Status> paramd)
  {
    ci();
    clearDefaultAccount();
    paramd = new e.g(this, paramd);
    try
    {
      ((d)fo()).b(paramd);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      paramd.h(8, null);
    }
  }
  
  public hh r(a.d<People.LoadPeopleResult> paramd, String paramString)
  {
    return a(paramd, 0, paramString);
  }
  
  public void removeMoment(String paramString)
  {
    ci();
    try
    {
      ((d)fo()).removeMoment(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new IllegalStateException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */