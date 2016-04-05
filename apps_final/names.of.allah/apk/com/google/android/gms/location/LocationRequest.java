package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

public final class LocationRequest
  implements SafeParcelable
{
  public static final LocationRequestCreator CREATOR = new LocationRequestCreator();
  public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
  public static final int PRIORITY_HIGH_ACCURACY = 100;
  public static final int PRIORITY_LOW_POWER = 104;
  public static final int PRIORITY_NO_POWER = 105;
  long UY;
  long Vi;
  long Vj;
  boolean Vk;
  int Vl;
  float Vm;
  int mPriority;
  private final int xJ;
  
  public LocationRequest()
  {
    xJ = 1;
    mPriority = 102;
    Vi = 3600000L;
    Vj = 600000L;
    Vk = false;
    UY = Long.MAX_VALUE;
    Vl = Integer.MAX_VALUE;
    Vm = 0.0F;
  }
  
  LocationRequest(int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt3, float paramFloat)
  {
    xJ = paramInt1;
    mPriority = paramInt2;
    Vi = paramLong1;
    Vj = paramLong2;
    Vk = paramBoolean;
    UY = paramLong3;
    Vl = paramInt3;
    Vm = paramFloat;
  }
  
  private static void a(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("invalid displacement: " + paramFloat);
    }
  }
  
  private static void cG(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      throw new IllegalArgumentException("invalid quality: " + paramInt);
    }
  }
  
  public static String cH(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      return "???";
    case 100: 
      return "PRIORITY_HIGH_ACCURACY";
    case 102: 
      return "PRIORITY_BALANCED_POWER_ACCURACY";
    case 104: 
      return "PRIORITY_LOW_POWER";
    }
    return "PRIORITY_NO_POWER";
  }
  
  public static LocationRequest create()
  {
    return new LocationRequest();
  }
  
  private static void v(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("invalid interval: " + paramLong);
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LocationRequest)) {
        return false;
      }
      paramObject = (LocationRequest)paramObject;
    } while ((mPriority == mPriority) && (Vi == Vi) && (Vj == Vj) && (Vk == Vk) && (UY == UY) && (Vl == Vl) && (Vm == Vm));
    return false;
  }
  
  public final long getExpirationTime()
  {
    return UY;
  }
  
  public final long getFastestInterval()
  {
    return Vj;
  }
  
  public final long getInterval()
  {
    return Vi;
  }
  
  public final int getNumUpdates()
  {
    return Vl;
  }
  
  public final int getPriority()
  {
    return mPriority;
  }
  
  public final float getSmallestDisplacement()
  {
    return Vm;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(mPriority), Long.valueOf(Vi), Long.valueOf(Vj), Boolean.valueOf(Vk), Long.valueOf(UY), Integer.valueOf(Vl), Float.valueOf(Vm) });
  }
  
  public final LocationRequest setExpirationDuration(long paramLong)
  {
    long l = SystemClock.elapsedRealtime();
    if (paramLong > Long.MAX_VALUE - l) {}
    for (UY = Long.MAX_VALUE;; UY = (l + paramLong))
    {
      if (UY < 0L) {
        UY = 0L;
      }
      return this;
    }
  }
  
  public final LocationRequest setExpirationTime(long paramLong)
  {
    UY = paramLong;
    if (UY < 0L) {
      UY = 0L;
    }
    return this;
  }
  
  public final LocationRequest setFastestInterval(long paramLong)
  {
    v(paramLong);
    Vk = true;
    Vj = paramLong;
    return this;
  }
  
  public final LocationRequest setInterval(long paramLong)
  {
    v(paramLong);
    Vi = paramLong;
    if (!Vk) {
      Vj = ((Vi / 6.0D));
    }
    return this;
  }
  
  public final LocationRequest setNumUpdates(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("invalid numUpdates: " + paramInt);
    }
    Vl = paramInt;
    return this;
  }
  
  public final LocationRequest setPriority(int paramInt)
  {
    cG(paramInt);
    mPriority = paramInt;
    return this;
  }
  
  public final LocationRequest setSmallestDisplacement(float paramFloat)
  {
    a(paramFloat);
    Vm = paramFloat;
    return this;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Request[").append(cH(mPriority));
    if (mPriority != 105)
    {
      localStringBuilder.append(" requested=");
      localStringBuilder.append(Vi + "ms");
    }
    localStringBuilder.append(" fastest=");
    localStringBuilder.append(Vj + "ms");
    if (UY != Long.MAX_VALUE)
    {
      long l1 = UY;
      long l2 = SystemClock.elapsedRealtime();
      localStringBuilder.append(" expireIn=");
      localStringBuilder.append(l1 - l2 + "ms");
    }
    if (Vl != Integer.MAX_VALUE) {
      localStringBuilder.append(" num=").append(Vl);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    LocationRequestCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */