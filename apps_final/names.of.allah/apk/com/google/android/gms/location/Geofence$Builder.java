package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.ji;

public final class Geofence$Builder
{
  private String Oy = null;
  private int UX = 0;
  private long UY = Long.MIN_VALUE;
  private short UZ = -1;
  private double Va;
  private double Vb;
  private float Vc;
  private int Vd = 0;
  private int Ve = -1;
  
  public final Geofence build()
  {
    if (Oy == null) {
      throw new IllegalArgumentException("Request ID not set.");
    }
    if (UX == 0) {
      throw new IllegalArgumentException("Transitions types not set.");
    }
    if (((UX & 0x4) != 0) && (Ve < 0)) {
      throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
    }
    if (UY == Long.MIN_VALUE) {
      throw new IllegalArgumentException("Expiration not set.");
    }
    if (UZ == -1) {
      throw new IllegalArgumentException("Geofence region not set.");
    }
    if (Vd < 0) {
      throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
    }
    return new ji(Oy, UX, (short)1, Va, Vb, Vc, UY, Vd, Ve);
  }
  
  public final Builder setCircularRegion(double paramDouble1, double paramDouble2, float paramFloat)
  {
    UZ = 1;
    Va = paramDouble1;
    Vb = paramDouble2;
    Vc = paramFloat;
    return this;
  }
  
  public final Builder setExpirationDuration(long paramLong)
  {
    if (paramLong < 0L)
    {
      UY = -1L;
      return this;
    }
    UY = (SystemClock.elapsedRealtime() + paramLong);
    return this;
  }
  
  public final Builder setLoiteringDelay(int paramInt)
  {
    Ve = paramInt;
    return this;
  }
  
  public final Builder setNotificationResponsiveness(int paramInt)
  {
    Vd = paramInt;
    return this;
  }
  
  public final Builder setRequestId(String paramString)
  {
    Oy = paramString;
    return this;
  }
  
  public final Builder setTransitionTypes(int paramInt)
  {
    UX = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.Geofence.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */