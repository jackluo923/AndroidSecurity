package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;

public class b
  implements Parcelable.Creator<WebImage>
{
  static void a(WebImage paramWebImage, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.C(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, paramWebImage.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, paramWebImage.getUrl(), paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 3, paramWebImage.getWidth());
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 4, paramWebImage.getHeight());
    com.google.android.gms.common.internal.safeparcel.b.G(paramParcel, i);
  }
  
  public WebImage[] ak(int paramInt)
  {
    return new WebImage[paramInt];
  }
  
  public WebImage y(Parcel paramParcel)
  {
    int m = a.B(paramParcel);
    int j = 0;
    Uri localUri = null;
    int i = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.A(paramParcel);
      switch (a.ar(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        i = a.g(paramParcel, n);
        break;
      case 2: 
        localUri = (Uri)a.a(paramParcel, n, Uri.CREATOR);
        break;
      case 3: 
        j = a.g(paramParcel, n);
        break;
      case 4: 
        k = a.g(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new WebImage(i, localUri, j, k);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */