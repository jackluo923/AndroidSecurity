package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@Deprecated
public class CountrySpecification
  implements SafeParcelable
{
  public static final Parcelable.Creator<CountrySpecification> CREATOR = new c();
  String rc;
  private final int xJ;
  
  CountrySpecification(int paramInt, String paramString)
  {
    xJ = paramInt;
    rc = paramString;
  }
  
  public CountrySpecification(String paramString)
  {
    xJ = 1;
    rc = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCountryCode()
  {
    return rc;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.CountrySpecification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */