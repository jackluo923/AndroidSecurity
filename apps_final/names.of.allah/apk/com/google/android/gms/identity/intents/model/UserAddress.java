package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class UserAddress
  implements SafeParcelable
{
  public static final Parcelable.Creator<UserAddress> CREATOR = new b();
  String UE;
  String UF;
  String UG;
  String UH;
  String UI;
  String UJ;
  String UK;
  String UL;
  String UM;
  String UN;
  boolean UO;
  String UP;
  String UQ;
  String name;
  String rc;
  private final int xJ;
  
  UserAddress()
  {
    xJ = 1;
  }
  
  UserAddress(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, boolean paramBoolean, String paramString13, String paramString14)
  {
    xJ = paramInt;
    name = paramString1;
    UE = paramString2;
    UF = paramString3;
    UG = paramString4;
    UH = paramString5;
    UI = paramString6;
    UJ = paramString7;
    UK = paramString8;
    rc = paramString9;
    UL = paramString10;
    UM = paramString11;
    UN = paramString12;
    UO = paramBoolean;
    UP = paramString13;
    UQ = paramString14;
  }
  
  public static UserAddress fromIntent(Intent paramIntent)
  {
    if ((paramIntent == null) || (!paramIntent.hasExtra("com.google.android.gms.identity.intents.EXTRA_ADDRESS"))) {
      return null;
    }
    return (UserAddress)paramIntent.getParcelableExtra("com.google.android.gms.identity.intents.EXTRA_ADDRESS");
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
  
  public final String getAddress4()
  {
    return UH;
  }
  
  public final String getAddress5()
  {
    return UI;
  }
  
  public final String getAdministrativeArea()
  {
    return UJ;
  }
  
  public final String getCompanyName()
  {
    return UP;
  }
  
  public final String getCountryCode()
  {
    return rc;
  }
  
  public final String getEmailAddress()
  {
    return UQ;
  }
  
  public final String getLocality()
  {
    return UK;
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
  
  public final String getSortingCode()
  {
    return UM;
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
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.identity.intents.model.UserAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */