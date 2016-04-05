package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.l.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.f;

class GoogleMap$10
  extends l.a
{
  GoogleMap$10(GoogleMap paramGoogleMap, GoogleMap.OnMarkerClickListener paramOnMarkerClickListener) {}
  
  public boolean a(f paramf)
  {
    return Zk.onMarkerClick(new Marker(paramf));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */