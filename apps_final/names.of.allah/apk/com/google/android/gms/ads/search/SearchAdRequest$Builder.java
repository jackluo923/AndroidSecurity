package com.google.android.gms.ads.search;

import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.au.a;

public final class SearchAdRequest$Builder
{
  private final au.a kr = new au.a();
  private int sZ;
  private int ta;
  private int tb;
  private int tc;
  private int td;
  private int te;
  private int tf = 0;
  private int tg;
  private String th;
  private int ti;
  private String tj;
  private int tk;
  private int tl;
  private String tm;
  
  public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    kr.b(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addNetworkExtras(NetworkExtras paramNetworkExtras)
  {
    kr.a(paramNetworkExtras);
    return this;
  }
  
  public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
  {
    kr.a(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addTestDevice(String paramString)
  {
    kr.h(paramString);
    return this;
  }
  
  public final SearchAdRequest build()
  {
    return new SearchAdRequest(this, null);
  }
  
  public final Builder setAnchorTextColor(int paramInt)
  {
    sZ = paramInt;
    return this;
  }
  
  public final Builder setBackgroundColor(int paramInt)
  {
    ta = paramInt;
    tb = Color.argb(0, 0, 0, 0);
    tc = Color.argb(0, 0, 0, 0);
    return this;
  }
  
  public final Builder setBackgroundGradient(int paramInt1, int paramInt2)
  {
    ta = Color.argb(0, 0, 0, 0);
    tb = paramInt2;
    tc = paramInt1;
    return this;
  }
  
  public final Builder setBorderColor(int paramInt)
  {
    td = paramInt;
    return this;
  }
  
  public final Builder setBorderThickness(int paramInt)
  {
    te = paramInt;
    return this;
  }
  
  public final Builder setBorderType(int paramInt)
  {
    tf = paramInt;
    return this;
  }
  
  public final Builder setCallButtonColor(int paramInt)
  {
    tg = paramInt;
    return this;
  }
  
  public final Builder setCustomChannels(String paramString)
  {
    th = paramString;
    return this;
  }
  
  public final Builder setDescriptionTextColor(int paramInt)
  {
    ti = paramInt;
    return this;
  }
  
  public final Builder setFontFace(String paramString)
  {
    tj = paramString;
    return this;
  }
  
  public final Builder setHeaderTextColor(int paramInt)
  {
    tk = paramInt;
    return this;
  }
  
  public final Builder setHeaderTextSize(int paramInt)
  {
    tl = paramInt;
    return this;
  }
  
  public final Builder setLocation(Location paramLocation)
  {
    kr.a(paramLocation);
    return this;
  }
  
  public final Builder setQuery(String paramString)
  {
    tm = paramString;
    return this;
  }
  
  public final Builder tagForChildDirectedTreatment(boolean paramBoolean)
  {
    kr.h(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */