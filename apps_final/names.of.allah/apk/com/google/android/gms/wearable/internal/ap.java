package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ap
  implements Parcelable.Creator<ao>
{
  static void a(ao paramao, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, paramao.nj(), false);
    b.G(paramParcel, paramInt);
  }
  
  public ao cI(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
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
        localIBinder = a.p(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new ao(i, localIBinder);
  }
  
  public ao[] er(int paramInt)
  {
    return new ao[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */