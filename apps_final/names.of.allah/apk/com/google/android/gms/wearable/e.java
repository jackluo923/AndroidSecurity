package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class e
  implements Parcelable.Creator<PutDataRequest>
{
  static void a(PutDataRequest paramPutDataRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, paramPutDataRequest.getUri(), paramInt, false);
    b.a(paramParcel, 4, paramPutDataRequest.nh(), false);
    b.a(paramParcel, 5, paramPutDataRequest.getData(), false);
    b.G(paramParcel, i);
  }
  
  public PutDataRequest cu(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    Bundle localBundle = null;
    Uri localUri = null;
    int i = 0;
    byte[] arrayOfByte = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      case 3: 
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localUri = (Uri)a.a(paramParcel, k, Uri.CREATOR);
        break;
      case 4: 
        localBundle = a.q(paramParcel, k);
        break;
      case 5: 
        arrayOfByte = a.r(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new PutDataRequest(i, localUri, localBundle, arrayOfByte);
  }
  
  public PutDataRequest[] ec(int paramInt)
  {
    return new PutDataRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */