package com.google.android.gms.maps;

import android.location.Location;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.o.a;

class GoogleMap$2
  extends o.a
{
  GoogleMap$2(GoogleMap paramGoogleMap, GoogleMap.OnMyLocationChangeListener paramOnMyLocationChangeListener) {}
  
  public void f(d paramd)
  {
    Za.onMyLocationChange((Location)e.e(paramd));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */