package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final PolylineOptionsCreator CREATOR = new PolylineOptionsCreator();
  private int Dg = -16777216;
  private final List<LatLng> aaU;
  private boolean aaW = false;
  private float aau = 0.0F;
  private boolean aav = true;
  private float aaz = 10.0F;
  private final int xJ;
  
  public PolylineOptions()
  {
    xJ = 1;
    aaU = new ArrayList();
  }
  
  PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    xJ = paramInt1;
    aaU = paramList;
    aaz = paramFloat1;
    Dg = paramInt2;
    aau = paramFloat2;
    aav = paramBoolean1;
    aaW = paramBoolean2;
  }
  
  public final PolylineOptions add(LatLng paramLatLng)
  {
    aaU.add(paramLatLng);
    return this;
  }
  
  public final PolylineOptions add(LatLng... paramVarArgs)
  {
    aaU.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public final PolylineOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      aaU.add(localLatLng);
    }
    return this;
  }
  
  public final PolylineOptions color(int paramInt)
  {
    Dg = paramInt;
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final PolylineOptions geodesic(boolean paramBoolean)
  {
    aaW = paramBoolean;
    return this;
  }
  
  public final int getColor()
  {
    return Dg;
  }
  
  public final List<LatLng> getPoints()
  {
    return aaU;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final float getWidth()
  {
    return aaz;
  }
  
  public final float getZIndex()
  {
    return aau;
  }
  
  public final boolean isGeodesic()
  {
    return aaW;
  }
  
  public final boolean isVisible()
  {
    return aav;
  }
  
  public final PolylineOptions visible(boolean paramBoolean)
  {
    aav = paramBoolean;
    return this;
  }
  
  public final PolylineOptions width(float paramFloat)
  {
    aaz = paramFloat;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      h.a(this, paramParcel, paramInt);
      return;
    }
    PolylineOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final PolylineOptions zIndex(float paramFloat)
  {
    aau = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */