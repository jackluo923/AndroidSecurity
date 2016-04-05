package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.af;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mf;

public class DriveId
  implements SafeParcelable
{
  public static final Parcelable.Creator<DriveId> CREATOR = new c();
  final String HK;
  final long HL;
  final long HM;
  private volatile String HN = null;
  final int xJ;
  
  DriveId(int paramInt, String paramString, long paramLong1, long paramLong2)
  {
    xJ = paramInt;
    HK = paramString;
    if (!"".equals(paramString)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      hn.C(bool1);
      if (paramString == null)
      {
        bool1 = bool2;
        if (paramLong1 == -1L) {}
      }
      else
      {
        bool1 = true;
      }
      hn.C(bool1);
      HL = paramLong1;
      HM = paramLong2;
      return;
    }
  }
  
  public DriveId(String paramString, long paramLong1, long paramLong2)
  {
    this(1, paramString, paramLong1, paramLong2);
  }
  
  public static DriveId aL(String paramString)
  {
    hn.f(paramString);
    return new DriveId(paramString, -1L, -1L);
  }
  
  public static DriveId decodeFromString(String paramString)
  {
    hn.b(paramString.startsWith("DriveId:"), "Invalid DriveId: " + paramString);
    return f(Base64.decode(paramString.substring(8), 10));
  }
  
  static DriveId f(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      af localaf;
      try
      {
        localaf = af.g(paramArrayOfByte);
        if ("".equals(Jq))
        {
          paramArrayOfByte = null;
          return new DriveId(versionCode, paramArrayOfByte, Jr, Js);
        }
      }
      catch (me paramArrayOfByte)
      {
        throw new IllegalArgumentException();
      }
      paramArrayOfByte = Jq;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final String encodeToString()
  {
    if (HN == null)
    {
      String str = Base64.encodeToString(gf(), 10);
      HN = ("DriveId:" + str);
    }
    return HN;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DriveId)) {}
    do
    {
      return false;
      paramObject = (DriveId)paramObject;
      if (HM != HM)
      {
        Log.w("DriveId", "Attempt to compare invalid DriveId detected. Has local storage been cleared?");
        return false;
      }
      if ((HL == -1L) && (HL == -1L)) {
        return HK.equals(HK);
      }
    } while (HL != HL);
    return true;
  }
  
  public String getResourceId()
  {
    return HK;
  }
  
  final byte[] gf()
  {
    af localaf = new af();
    versionCode = xJ;
    if (HK == null) {}
    for (String str = "";; str = HK)
    {
      Jq = str;
      Jr = HL;
      Js = HM;
      return mf.d(localaf);
    }
  }
  
  public int hashCode()
  {
    if (HL == -1L) {
      return HK.hashCode();
    }
    return (String.valueOf(HM) + String.valueOf(HL)).hashCode();
  }
  
  public String toString()
  {
    return encodeToString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.DriveId
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */