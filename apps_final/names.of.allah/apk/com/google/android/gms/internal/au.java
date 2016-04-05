package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

public final class au
{
  public static final String DEVICE_ID_EMULATOR = eu.y("emulator");
  private final Date d;
  private final Set<String> f;
  private final Location h;
  private final String mi;
  private final int mj;
  private final boolean mk;
  private final Bundle ml;
  private final Map<Class<? extends NetworkExtras>, NetworkExtras> mm;
  private final String mn;
  private final SearchAdRequest mo;
  private final int mp;
  private final Set<String> mq;
  
  public au(au.a parama)
  {
    this(parama, null);
  }
  
  public au(au.a parama, SearchAdRequest paramSearchAdRequest)
  {
    d = au.a.a(parama);
    mi = au.a.b(parama);
    mj = au.a.c(parama);
    f = Collections.unmodifiableSet(au.a.d(parama));
    h = au.a.e(parama);
    mk = au.a.f(parama);
    ml = au.a.g(parama);
    mm = Collections.unmodifiableMap(au.a.h(parama));
    mn = au.a.i(parama);
    mo = paramSearchAdRequest;
    mp = au.a.j(parama);
    mq = Collections.unmodifiableSet(au.a.k(parama));
  }
  
  public final SearchAdRequest aC()
  {
    return mo;
  }
  
  public final Map<Class<? extends NetworkExtras>, NetworkExtras> aD()
  {
    return mm;
  }
  
  public final Bundle aE()
  {
    return ml;
  }
  
  public final int aF()
  {
    return mp;
  }
  
  public final Date getBirthday()
  {
    return d;
  }
  
  public final String getContentUrl()
  {
    return mi;
  }
  
  public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass)
  {
    Bundle localBundle = ml.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
    if (localBundle != null) {
      return localBundle.getBundle(paramClass.getClass().getName());
    }
    return null;
  }
  
  public final int getGender()
  {
    return mj;
  }
  
  public final Set<String> getKeywords()
  {
    return f;
  }
  
  public final Location getLocation()
  {
    return h;
  }
  
  public final boolean getManualImpressionsEnabled()
  {
    return mk;
  }
  
  @Deprecated
  public final <T extends NetworkExtras> T getNetworkExtras(Class<T> paramClass)
  {
    return (NetworkExtras)mm.get(paramClass);
  }
  
  public final Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass)
  {
    return ml.getBundle(paramClass.getName());
  }
  
  public final String getPublisherProvidedId()
  {
    return mn;
  }
  
  public final boolean isTestDevice(Context paramContext)
  {
    return mq.contains(eu.o(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */