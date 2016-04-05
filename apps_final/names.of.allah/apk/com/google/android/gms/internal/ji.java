package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.Geofence;
import java.util.Locale;

public class ji
  implements SafeParcelable, Geofence
{
  public static final jj CREATOR = new jj();
  private final String Oy;
  private final int UX;
  private final short UZ;
  private final long VW;
  private final double Va;
  private final double Vb;
  private final float Vc;
  private final int Vd;
  private final int Ve;
  private final int xJ;
  
  public ji(int paramInt1, String paramString, int paramInt2, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt3, int paramInt4)
  {
    bq(paramString);
    b(paramFloat);
    a(paramDouble1, paramDouble2);
    paramInt2 = cM(paramInt2);
    xJ = paramInt1;
    UZ = paramShort;
    Oy = paramString;
    Va = paramDouble1;
    Vb = paramDouble2;
    Vc = paramFloat;
    VW = paramLong;
    UX = paramInt2;
    Vd = paramInt3;
    Ve = paramInt4;
  }
  
  public ji(String paramString, int paramInt1, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt2, int paramInt3)
  {
    this(1, paramString, paramInt1, paramShort, paramDouble1, paramDouble2, paramFloat, paramLong, paramInt2, paramInt3);
  }
  
  private static void a(double paramDouble1, double paramDouble2)
  {
    if ((paramDouble1 > 90.0D) || (paramDouble1 < -90.0D)) {
      throw new IllegalArgumentException("invalid latitude: " + paramDouble1);
    }
    if ((paramDouble2 > 180.0D) || (paramDouble2 < -180.0D)) {
      throw new IllegalArgumentException("invalid longitude: " + paramDouble2);
    }
  }
  
  private static void b(float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      throw new IllegalArgumentException("invalid radius: " + paramFloat);
    }
  }
  
  private static void bq(String paramString)
  {
    if ((paramString == null) || (paramString.length() > 100)) {
      throw new IllegalArgumentException("requestId is null or too long: " + paramString);
    }
  }
  
  private static int cM(int paramInt)
  {
    int i = paramInt & 0x7;
    if (i == 0) {
      throw new IllegalArgumentException("No supported transition specified: " + paramInt);
    }
    return i;
  }
  
  private static String cN(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return "CIRCLE";
  }
  
  public static ji h(byte[] paramArrayOfByte)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    paramArrayOfByte = CREATOR.bt(localParcel);
    localParcel.recycle();
    return paramArrayOfByte;
  }
  
  public int describeContents()
  {
    jj localjj = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof ji)) {
        return false;
      }
      paramObject = (ji)paramObject;
      if (Vc != Vc) {
        return false;
      }
      if (Va != Va) {
        return false;
      }
      if (Vb != Vb) {
        return false;
      }
    } while (UZ == UZ);
    return false;
  }
  
  public long getExpirationTime()
  {
    return VW;
  }
  
  public double getLatitude()
  {
    return Va;
  }
  
  public double getLongitude()
  {
    return Vb;
  }
  
  public int getNotificationResponsiveness()
  {
    return Vd;
  }
  
  public String getRequestId()
  {
    return Oy;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(Va);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(Vb);
    return ((((i + 31) * 31 + (int)(l ^ l >>> 32)) * 31 + Float.floatToIntBits(Vc)) * 31 + UZ) * 31 + UX;
  }
  
  public short iV()
  {
    return UZ;
  }
  
  public float iW()
  {
    return Vc;
  }
  
  public int iX()
  {
    return UX;
  }
  
  public int iY()
  {
    return Ve;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[] { cN(UZ), Oy, Integer.valueOf(UX), Double.valueOf(Va), Double.valueOf(Vb), Float.valueOf(Vc), Integer.valueOf(Vd / 1000), Integer.valueOf(Ve), Long.valueOf(VW) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jj localjj = CREATOR;
    jj.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */