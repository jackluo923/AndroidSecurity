package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

public class c
  implements Parcelable.Creator<CustomProperty>
{
  static void a(CustomProperty paramCustomProperty, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, JN, paramInt, false);
    b.a(paramParcel, 3, mValue, false);
    b.G(paramParcel, i);
  }
  
  public CustomProperty aB(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    CustomPropertyKey localCustomPropertyKey = null;
    int i = 0;
    String str = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localCustomPropertyKey = (CustomPropertyKey)a.a(paramParcel, k, CustomPropertyKey.CREATOR);
        break;
      case 3: 
        str = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new CustomProperty(i, localCustomPropertyKey, str);
  }
  
  public CustomProperty[] bx(int paramInt)
  {
    return new CustomProperty[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */