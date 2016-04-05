package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final PolygonOptionsCreator CREATOR = new PolygonOptionsCreator();
  private final List<LatLng> aaU;
  private final List<List<LatLng>> aaV;
  private boolean aaW = false;
  private float aar = 10.0F;
  private int aas = -16777216;
  private int aat = 0;
  private float aau = 0.0F;
  private boolean aav = true;
  private final int xJ;
  
  public PolygonOptions()
  {
    xJ = 1;
    aaU = new ArrayList();
    aaV = new ArrayList();
  }
  
  PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    xJ = paramInt1;
    aaU = paramList;
    aaV = paramList1;
    aar = paramFloat1;
    aas = paramInt2;
    aat = paramInt3;
    aau = paramFloat2;
    aav = paramBoolean1;
    aaW = paramBoolean2;
  }
  
  public final PolygonOptions add(LatLng paramLatLng)
  {
    aaU.add(paramLatLng);
    return this;
  }
  
  public final PolygonOptions add(LatLng... paramVarArgs)
  {
    aaU.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public final PolygonOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      aaU.add(localLatLng);
    }
    return this;
  }
  
  public final PolygonOptions addHole(Iterable<LatLng> paramIterable)
  {
    ArrayList localArrayList = new ArrayList();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      localArrayList.add((LatLng)paramIterable.next());
    }
    aaV.add(localArrayList);
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final PolygonOptions fillColor(int paramInt)
  {
    aat = paramInt;
    return this;
  }
  
  public final PolygonOptions geodesic(boolean paramBoolean)
  {
    aaW = paramBoolean;
    return this;
  }
  
  public final int getFillColor()
  {
    return aat;
  }
  
  public final List<List<LatLng>> getHoles()
  {
    return aaV;
  }
  
  public final List<LatLng> getPoints()
  {
    return aaU;
  }
  
  public final int getStrokeColor()
  {
    return aas;
  }
  
  public final float getStrokeWidth()
  {
    return aar;
  }
  
  final int getVersionCode()
  {
    return xJ;
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
  
  final List jK()
  {
    return aaV;
  }
  
  public final PolygonOptions strokeColor(int paramInt)
  {
    aas = paramInt;
    return this;
  }
  
  public final PolygonOptions strokeWidth(float paramFloat)
  {
    aar = paramFloat;
    return this;
  }
  
  public final PolygonOptions visible(boolean paramBoolean)
  {
    aav = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      g.a(this, paramParcel, paramInt);
      return;
    }
    PolygonOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final PolygonOptions zIndex(float paramFloat)
  {
    aau = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */