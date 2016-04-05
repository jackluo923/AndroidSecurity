package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class StreetViewPanoramaLocationCreator
  implements Parcelable.Creator<StreetViewPanoramaLocation>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(StreetViewPanoramaLocation paramStreetViewPanoramaLocation, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramStreetViewPanoramaLocation.getVersionCode());
    b.a(paramParcel, 2, links, paramInt, false);
    b.a(paramParcel, 3, position, paramInt, false);
    b.a(paramParcel, 4, panoId, false);
    b.G(paramParcel, i);
  }
  
  public StreetViewPanoramaLocation createFromParcel(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    LatLng localLatLng = null;
    StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink = null;
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
        arrayOfStreetViewPanoramaLink = (StreetViewPanoramaLink[])a.b(paramParcel, k, StreetViewPanoramaLink.CREATOR);
        break;
      case 3: 
        localLatLng = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        str = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLocation(i, arrayOfStreetViewPanoramaLink, localLatLng, str);
  }
  
  public StreetViewPanoramaLocation[] newArray(int paramInt)
  {
    return new StreetViewPanoramaLocation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLocationCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */