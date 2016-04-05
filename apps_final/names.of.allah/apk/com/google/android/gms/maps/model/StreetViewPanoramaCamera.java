package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;

public class StreetViewPanoramaCamera
  implements SafeParcelable
{
  public static final StreetViewPanoramaCameraCreator CREATOR = new StreetViewPanoramaCameraCreator();
  private StreetViewPanoramaOrientation aaY;
  public final float bearing;
  public final float tilt;
  private final int xJ;
  public final float zoom;
  
  public StreetViewPanoramaCamera(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramFloat1, paramFloat2, paramFloat3);
  }
  
  StreetViewPanoramaCamera(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if ((-90.0F <= paramFloat2) && (paramFloat2 <= 90.0F))
    {
      bool = true;
      hn.b(bool, "Tilt needs to be between -90 and 90 inclusive");
      xJ = paramInt;
      zoom = paramFloat1;
      tilt = (0.0F + paramFloat2);
      if (paramFloat3 > 0.0D) {
        break label100;
      }
    }
    label100:
    for (paramFloat1 = paramFloat3 % 360.0F + 360.0F;; paramFloat1 = paramFloat3)
    {
      bearing = (paramFloat1 % 360.0F);
      aaY = new StreetViewPanoramaOrientation.Builder().tilt(paramFloat2).bearing(paramFloat3).build();
      return;
      bool = false;
      break;
    }
  }
  
  public static StreetViewPanoramaCamera.Builder builder()
  {
    return new StreetViewPanoramaCamera.Builder();
  }
  
  public static StreetViewPanoramaCamera.Builder builder(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
  {
    return new StreetViewPanoramaCamera.Builder(paramStreetViewPanoramaCamera);
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
      if (!(paramObject instanceof StreetViewPanoramaCamera)) {
        return false;
      }
      paramObject = (StreetViewPanoramaCamera)paramObject;
    } while ((Float.floatToIntBits(zoom) == Float.floatToIntBits(zoom)) && (Float.floatToIntBits(tilt) == Float.floatToIntBits(tilt)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing)));
    return false;
  }
  
  public StreetViewPanoramaOrientation getOrientation()
  {
    return aaY;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Float.valueOf(zoom), Float.valueOf(tilt), Float.valueOf(bearing) });
  }
  
  public String toString()
  {
    return hl.e(this).a("zoom", Float.valueOf(zoom)).a("tilt", Float.valueOf(tilt)).a("bearing", Float.valueOf(bearing)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    StreetViewPanoramaCameraCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaCamera
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */