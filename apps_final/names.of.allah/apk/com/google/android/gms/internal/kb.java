package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

public class kb
  implements SafeParcelable
{
  public static final kc CREATOR = new kc();
  public final String YS;
  public final String YT;
  public final int versionCode;
  
  public kb(int paramInt, String paramString1, String paramString2)
  {
    versionCode = paramInt;
    YS = paramString1;
    YT = paramString2;
  }
  
  public kb(String paramString, Locale paramLocale)
  {
    versionCode = 0;
    YS = paramString;
    YT = paramLocale.toString();
  }
  
  public int describeContents()
  {
    kc localkc = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof kb))) {
        return false;
      }
      paramObject = (kb)paramObject;
    } while ((YT.equals(YT)) && (YS.equals(YS)));
    return false;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { YS, YT });
  }
  
  public String toString()
  {
    return hl.e(this).a("clientPackageName", YS).a("locale", YT).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kc localkc = CREATOR;
    kc.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */