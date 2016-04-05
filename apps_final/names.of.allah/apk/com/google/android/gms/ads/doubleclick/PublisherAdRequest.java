package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.au;
import java.util.Date;
import java.util.Set;

public final class PublisherAdRequest
{
  public static final String DEVICE_ID_EMULATOR = au.DEVICE_ID_EMULATOR;
  public static final int ERROR_CODE_INTERNAL_ERROR = 0;
  public static final int ERROR_CODE_INVALID_REQUEST = 1;
  public static final int ERROR_CODE_NETWORK_ERROR = 2;
  public static final int ERROR_CODE_NO_FILL = 3;
  public static final int GENDER_FEMALE = 2;
  public static final int GENDER_MALE = 1;
  public static final int GENDER_UNKNOWN = 0;
  private final au kq;
  
  private PublisherAdRequest(PublisherAdRequest.Builder paramBuilder)
  {
    kq = new au(PublisherAdRequest.Builder.a(paramBuilder));
  }
  
  final au O()
  {
    return kq;
  }
  
  public final Date getBirthday()
  {
    return kq.getBirthday();
  }
  
  public final String getContentUrl()
  {
    return kq.getContentUrl();
  }
  
  public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> paramClass)
  {
    return kq.getCustomEventExtrasBundle(paramClass);
  }
  
  public final int getGender()
  {
    return kq.getGender();
  }
  
  public final Set<String> getKeywords()
  {
    return kq.getKeywords();
  }
  
  public final Location getLocation()
  {
    return kq.getLocation();
  }
  
  public final boolean getManualImpressionsEnabled()
  {
    return kq.getManualImpressionsEnabled();
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
  
  public final String getPublisherProvidedId()
  {
    return kq.getPublisherProvidedId();
  }
  
  public final boolean isTestDevice(Context paramContext)
  {
    return kq.isTestDevice(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */