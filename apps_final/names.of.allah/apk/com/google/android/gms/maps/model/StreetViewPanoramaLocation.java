package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public class StreetViewPanoramaLocation
  implements SafeParcelable
{
  public static final StreetViewPanoramaLocationCreator CREATOR = new StreetViewPanoramaLocationCreator();
  public final StreetViewPanoramaLink[] links;
  public final String panoId;
  public final LatLng position;
  private final int xJ;
  
  StreetViewPanoramaLocation(int paramInt, StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString)
  {
    xJ = paramInt;
    links = paramArrayOfStreetViewPanoramaLink;
    position = paramLatLng;
    panoId = paramString;
  }
  
  public StreetViewPanoramaLocation(StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString)
  {
    this(1, paramArrayOfStreetViewPanoramaLink, paramLatLng, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof StreetViewPanoramaLocation)) {
        return false;
      }
      paramObject = (StreetViewPanoramaLocation)paramObject;
    } while ((panoId.equals(panoId)) && (position.equals(position)));
    return false;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { position, panoId });
  }
  
  public String toString()
  {
    return hl.e(this).a("panoId", panoId).a("position", position.toString()).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    StreetViewPanoramaLocationCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */