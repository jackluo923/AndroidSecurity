package com.google.android.gms.ads.search;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.au;

public final class SearchAdRequest
{
  public static final int BORDER_TYPE_DASHED = 1;
  public static final int BORDER_TYPE_DOTTED = 2;
  public static final int BORDER_TYPE_NONE = 0;
  public static final int BORDER_TYPE_SOLID = 3;
  public static final int CALL_BUTTON_COLOR_DARK = 2;
  public static final int CALL_BUTTON_COLOR_LIGHT = 0;
  public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
  public static final String DEVICE_ID_EMULATOR = au.DEVICE_ID_EMULATOR;
  public static final int ERROR_CODE_INTERNAL_ERROR = 0;
  public static final int ERROR_CODE_INVALID_REQUEST = 1;
  public static final int ERROR_CODE_NETWORK_ERROR = 2;
  public static final int ERROR_CODE_NO_FILL = 3;
  private final au kq;
  private final int sZ;
  private final int ta;
  private final int tb;
  private final int tc;
  private final int td;
  private final int te;
  private final int tf;
  private final int tg;
  private final String th;
  private final int ti;
  private final String tj;
  private final int tk;
  private final int tl;
  private final String tm;
  
  private SearchAdRequest(SearchAdRequest.Builder paramBuilder)
  {
    sZ = SearchAdRequest.Builder.a(paramBuilder);
    ta = SearchAdRequest.Builder.b(paramBuilder);
    tb = SearchAdRequest.Builder.c(paramBuilder);
    tc = SearchAdRequest.Builder.d(paramBuilder);
    td = SearchAdRequest.Builder.e(paramBuilder);
    te = SearchAdRequest.Builder.f(paramBuilder);
    tf = SearchAdRequest.Builder.g(paramBuilder);
    tg = SearchAdRequest.Builder.h(paramBuilder);
    th = SearchAdRequest.Builder.i(paramBuilder);
    ti = SearchAdRequest.Builder.j(paramBuilder);
    tj = SearchAdRequest.Builder.k(paramBuilder);
    tk = SearchAdRequest.Builder.l(paramBuilder);
    tl = SearchAdRequest.Builder.m(paramBuilder);
    tm = SearchAdRequest.Builder.n(paramBuilder);
    kq = new au(SearchAdRequest.Builder.o(paramBuilder), this);
  }
  
  final au O()
  {
    return kq;
  }
  
  public final int getAnchorTextColor()
  {
    return sZ;
  }
  
  public final int getBackgroundColor()
  {
    return ta;
  }
  
  public final int getBackgroundGradientBottom()
  {
    return tb;
  }
  
  public final int getBackgroundGradientTop()
  {
    return tc;
  }
  
  public final int getBorderColor()
  {
    return td;
  }
  
  public final int getBorderThickness()
  {
    return te;
  }
  
  public final int getBorderType()
  {
    return tf;
  }
  
  public final int getCallButtonColor()
  {
    return tg;
  }
  
  public final String getCustomChannels()
  {
    return th;
  }
  
  public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> paramClass)
  {
    return kq.getCustomEventExtrasBundle(paramClass);
  }
  
  public final int getDescriptionTextColor()
  {
    return ti;
  }
  
  public final String getFontFace()
  {
    return tj;
  }
  
  public final int getHeaderTextColor()
  {
    return tk;
  }
  
  public final int getHeaderTextSize()
  {
    return tl;
  }
  
  public final Location getLocation()
  {
    return kq.getLocation();
  }
  
  @Deprecated
  public final <T extends NetworkExtras> T getNetworkExtras(Class<T> paramClass)
  {
    return kq.getNetworkExtras(paramClass);
  }
  
  public final <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> paramClass)
  {
    return kq.getNetworkExtrasBundle(paramClass);
  }
  
  public final String getQuery()
  {
    return tm;
  }
  
  public final boolean isTestDevice(Context paramContext)
  {
    return kq.isTestDevice(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */