package com.google.android.gms.maps.model;

import com.google.android.gms.internal.hn;

public final class LatLngBounds$Builder
{
  private double aaH = Double.POSITIVE_INFINITY;
  private double aaI = Double.NEGATIVE_INFINITY;
  private double aaJ = NaN.0D;
  private double aaK = NaN.0D;
  
  private boolean d(double paramDouble)
  {
    if (aaJ <= aaK) {
      if ((aaJ > paramDouble) || (paramDouble > aaK)) {}
    }
    while ((aaJ <= paramDouble) || (paramDouble <= aaK))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public final LatLngBounds build()
  {
    if (!Double.isNaN(aaJ)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "no included points");
      return new LatLngBounds(new LatLng(aaH, aaJ), new LatLng(aaI, aaK));
    }
  }
  
  public final Builder include(LatLng paramLatLng)
  {
    aaH = Math.min(aaH, latitude);
    aaI = Math.max(aaI, latitude);
    double d = longitude;
    if (Double.isNaN(aaJ)) {
      aaJ = d;
    }
    do
    {
      aaK = d;
      do
      {
        return this;
      } while (d(d));
    } while (LatLngBounds.d(aaJ, d) >= LatLngBounds.e(aaK, d));
    aaJ = d;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */