package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;

public class StreetViewPanoramaOrientation
  implements SafeParcelable
{
  public static final StreetViewPanoramaOrientationCreator CREATOR = new StreetViewPanoramaOrientationCreator();
  public final float bearing;
  public final float tilt;
  private final int xJ;
  
  public StreetViewPanoramaOrientation(float paramFloat1, float paramFloat2)
  {
    this(1, paramFloat1, paramFloat2);
  }
  
  StreetViewPanoramaOrientation(int paramInt, float paramFloat1, float paramFloat2)
  {
    if ((-90.0F <= paramFloat1) && (paramFloat1 <= 90.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Tilt needs to be between -90 and 90 inclusive");
      xJ = paramInt;
      tilt = (0.0F + paramFloat1);
      paramFloat1 = paramFloat2;
      if (paramFloat2 <= 0.0D) {
        paramFloat1 = paramFloat2 % 360.0F + 360.0F;
      }
      bearing = (paramFloat1 % 360.0F);
      return;
    }
  }
  
  public static StreetViewPanoramaOrientation.Builder builder()
  {
    return new StreetViewPanoramaOrientation.Builder();
  }
  
  public static StreetViewPanoramaOrientation.Builder builder(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
  {
    return new StreetViewPanoramaOrientation.Builder(paramStreetViewPanoramaOrientation);
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
      if (!(paramObject instanceof StreetViewPanoramaOrientation)) {
        return false;
      }
      paramObject = (StreetViewPanoramaOrientation)paramObject;
    } while ((Float.floatToIntBits(tilt) == Float.floatToIntBits(tilt)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing)));
    return false;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Float.valueOf(tilt), Float.valueOf(bearing) });
  }
  
  public String toString()
  {
    return hl.e(this).a("tilt", Float.valueOf(tilt)).a("bearing", Float.valueOf(bearing)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    StreetViewPanoramaOrientationCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaOrientation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */