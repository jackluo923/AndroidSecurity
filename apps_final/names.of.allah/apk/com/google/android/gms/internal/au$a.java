package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class au$a
{
  private Date d;
  private Location h;
  private String mi;
  private int mj = -1;
  private boolean mk = false;
  private final Bundle ml = new Bundle();
  private String mn;
  private int mp = -1;
  private final HashSet<String> mr = new HashSet();
  private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> ms = new HashMap();
  private final HashSet<String> mt = new HashSet();
  
  public final void a(Location paramLocation)
  {
    h = paramLocation;
  }
  
  @Deprecated
  public final void a(NetworkExtras paramNetworkExtras)
  {
    if ((paramNetworkExtras instanceof AdMobExtras))
    {
      a(AdMobAdapter.class, ((AdMobExtras)paramNetworkExtras).getExtras());
      return;
    }
    ms.put(paramNetworkExtras.getClass(), paramNetworkExtras);
  }
  
  public final void a(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
  {
    ml.putBundle(paramClass.getName(), paramBundle);
  }
  
  public final void a(Date paramDate)
  {
    d = paramDate;
  }
  
  public final void b(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    if (ml.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
      ml.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
    }
    ml.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(paramClass.getName(), paramBundle);
  }
  
  public final void e(int paramInt)
  {
    mj = paramInt;
  }
  
  public final void g(String paramString)
  {
    mr.add(paramString);
  }
  
  public final void g(boolean paramBoolean)
  {
    mk = paramBoolean;
  }
  
  public final void h(String paramString)
  {
    mt.add(paramString);
  }
  
  public final void h(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      mp = i;
      return;
    }
  }
  
  public final void i(String paramString)
  {
    mi = paramString;
  }
  
  public final void j(String paramString)
  {
    mn = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.au.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */