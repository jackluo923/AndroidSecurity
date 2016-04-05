package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.au.a;
import com.google.android.gms.internal.hn;
import java.util.Date;

public final class AdRequest$Builder
{
  private final au.a kr = new au.a();
  
  public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    kr.b(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addKeyword(String paramString)
  {
    kr.g(paramString);
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
  
  public final AdRequest build()
  {
    return new AdRequest(this, null);
  }
  
  public final Builder setBirthday(Date paramDate)
  {
    kr.a(paramDate);
    return this;
  }
  
  public final Builder setContentUrl(String paramString)
  {
    hn.b(paramString, "Content URL must be non-null.");
    hn.b(paramString, "Content URL must be non-empty.");
    if (paramString.length() <= 512) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Content URL must not exceed %d in length.  Provided length was %d.", new Object[] { Integer.valueOf(512), Integer.valueOf(paramString.length()) });
      kr.i(paramString);
      return this;
    }
  }
  
  public final Builder setGender(int paramInt)
  {
    kr.e(paramInt);
    return this;
  }
  
  public final Builder setLocation(Location paramLocation)
  {
    kr.a(paramLocation);
    return this;
  }
  
  public final Builder tagForChildDirectedTreatment(boolean paramBoolean)
  {
    kr.h(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */