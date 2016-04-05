package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class fe
  implements Parcelable
{
  @Deprecated
  public static final Parcelable.Creator<fe> CREATOR = new fe.1();
  private String mValue;
  private String xD;
  private String xE;
  
  @Deprecated
  public fe() {}
  
  @Deprecated
  fe(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public fe(String paramString1, String paramString2, String paramString3)
  {
    xD = paramString1;
    xE = paramString2;
    mValue = paramString3;
  }
  
  @Deprecated
  private void readFromParcel(Parcel paramParcel)
  {
    xD = paramParcel.readString();
    xE = paramParcel.readString();
    mValue = paramParcel.readString();
  }
  
  @Deprecated
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return xD;
  }
  
  public String getValue()
  {
    return mValue;
  }
  
  @Deprecated
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(xD);
    paramParcel.writeString(xE);
    paramParcel.writeString(mValue);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */