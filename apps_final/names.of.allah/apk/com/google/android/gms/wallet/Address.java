package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@Deprecated
public final class Address
  implements SafeParcelable
{
  public static final Parcelable.Creator<Address> CREATOR = new a();
  String UE;
  String UF;
  String UG;
  String UL;
  String UN;
  boolean UO;
  String UP;
  String aiF;
  String aiG;
  String name;
  String rc;
  private final int xJ;
  
  Address()
  {
    xJ = 1;
  }
  
  Address(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, boolean paramBoolean, String paramString10)
  {
    xJ = paramInt;
    name = paramString1;
    UE = paramString2;
    UF = paramString3;
    UG = paramString4;
    rc = paramString5;
    aiF = paramString6;
    aiG = paramString7;
    UL = paramString8;
    UN = paramString9;
    UO = paramBoolean;
    UP = paramString10;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getAddress1()
  {
    return UE;
  }
  
  public final String getAddress2()
  {
    return UF;
  }
  
  public final String getAddress3()
  {
    return UG;
  }
  
  public final String getCity()
  {
    return aiF;
  }
  
  public final String getCompanyName()
  {
    return UP;
  }
  
  public final String getCountryCode()
  {
    return rc;
  }
  
  public final String getName()
  {
    return name;
  }
  
  public final String getPhoneNumber()
  {
    return UN;
  }
  
  public final String getPostalCode()
  {
    return UL;
  }
  
  public final String getState()
  {
    return aiG;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean isPostBox()
  {
    return UO;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Address
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */