package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;

public class f
  implements Parcelable.Creator<CloseContentsRequest>
{
  static void a(CloseContentsRequest paramCloseContentsRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, It, paramInt, false);
    b.a(paramParcel, 3, Iw, false);
    b.G(paramParcel, i);
  }
  
  public CloseContentsRequest V(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    Contents localContents = null;
    int i = 0;
    Boolean localBoolean = null;
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
        localContents = (Contents)a.a(paramParcel, k, Contents.CREATOR);
        break;
      case 3: 
        localBoolean = a.d(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new CloseContentsRequest(i, localContents, localBoolean);
  }
  
  public CloseContentsRequest[] aQ(int paramInt)
  {
    return new CloseContentsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */