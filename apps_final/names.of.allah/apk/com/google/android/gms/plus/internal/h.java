package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import java.util.Arrays;

public class h
  implements SafeParcelable
{
  public static final j CREATOR = new j();
  private final String[] abQ;
  private final String[] abR;
  private final String[] abS;
  private final String abT;
  private final String abU;
  private final String abV;
  private final String abW;
  private final PlusCommonExtras abX;
  private final int xJ;
  private final String yN;
  
  h(int paramInt, String paramString1, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String paramString2, String paramString3, String paramString4, String paramString5, PlusCommonExtras paramPlusCommonExtras)
  {
    xJ = paramInt;
    yN = paramString1;
    abQ = paramArrayOfString1;
    abR = paramArrayOfString2;
    abS = paramArrayOfString3;
    abT = paramString2;
    abU = paramString3;
    abV = paramString4;
    abW = paramString5;
    abX = paramPlusCommonExtras;
  }
  
  public h(String paramString1, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String paramString2, String paramString3, String paramString4, PlusCommonExtras paramPlusCommonExtras)
  {
    xJ = 1;
    yN = paramString1;
    abQ = paramArrayOfString1;
    abR = paramArrayOfString2;
    abS = paramArrayOfString3;
    abT = paramString2;
    abU = paramString3;
    abV = paramString4;
    abW = null;
    abX = paramPlusCommonExtras;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof h)) {}
    do
    {
      return false;
      paramObject = (h)paramObject;
    } while ((xJ != xJ) || (!hl.equal(yN, yN)) || (!Arrays.equals(abQ, abQ)) || (!Arrays.equals(abR, abR)) || (!Arrays.equals(abS, abS)) || (!hl.equal(abT, abT)) || (!hl.equal(abU, abU)) || (!hl.equal(abV, abV)) || (!hl.equal(abW, abW)) || (!hl.equal(abX, abX)));
    return true;
  }
  
  public String getAccountName()
  {
    return yN;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(xJ), yN, abQ, abR, abS, abT, abU, abV, abW, abX });
  }
  
  public String[] jU()
  {
    return abQ;
  }
  
  public String[] jV()
  {
    return abR;
  }
  
  public String[] jW()
  {
    return abS;
  }
  
  public String jX()
  {
    return abT;
  }
  
  public String jY()
  {
    return abU;
  }
  
  public String jZ()
  {
    return abV;
  }
  
  public String ka()
  {
    return abW;
  }
  
  public PlusCommonExtras kb()
  {
    return abX;
  }
  
  public Bundle kc()
  {
    Bundle localBundle = new Bundle();
    localBundle.setClassLoader(PlusCommonExtras.class.getClassLoader());
    abX.n(localBundle);
    return localBundle;
  }
  
  public String toString()
  {
    return hl.e(this).a("versionCode", Integer.valueOf(xJ)).a("accountName", yN).a("requestedScopes", abQ).a("visibleActivities", abR).a("requiredFeatures", abS).a("packageNameForAuth", abT).a("callingPackageName", abU).a("applicationName", abV).a("extra", abX.toString()).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */