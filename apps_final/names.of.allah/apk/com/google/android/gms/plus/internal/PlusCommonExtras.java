package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public class PlusCommonExtras
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  public static String TAG = "PlusCommonExtras";
  private String abN;
  private String abO;
  private final int xJ;
  
  public PlusCommonExtras()
  {
    xJ = 1;
    abN = "";
    abO = "";
  }
  
  PlusCommonExtras(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    abN = paramString1;
    abO = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlusCommonExtras)) {}
    do
    {
      return false;
      paramObject = (PlusCommonExtras)paramObject;
    } while ((xJ != xJ) || (!hl.equal(abN, abN)) || (!hl.equal(abO, abO)));
    return true;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(xJ), abN, abO });
  }
  
  public String jS()
  {
    return abN;
  }
  
  public String jT()
  {
    return abO;
  }
  
  public void n(Bundle paramBundle)
  {
    paramBundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", c.a(this));
  }
  
  public String toString()
  {
    return hl.e(this).a("versionCode", Integer.valueOf(xJ)).a("Gpsrc", abN).a("ClientCallingPackage", abO).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.PlusCommonExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */