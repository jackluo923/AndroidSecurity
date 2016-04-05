package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.internal.hn;

public class CustomProperty
  implements SafeParcelable
{
  public static final Parcelable.Creator<CustomProperty> CREATOR = new c();
  final CustomPropertyKey JN;
  final String mValue;
  final int xJ;
  
  CustomProperty(int paramInt, CustomPropertyKey paramCustomPropertyKey, String paramString)
  {
    xJ = paramInt;
    hn.b(paramCustomPropertyKey, "key");
    JN = paramCustomPropertyKey;
    mValue = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.CustomProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */