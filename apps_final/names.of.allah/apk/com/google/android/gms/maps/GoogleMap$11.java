package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.m.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.f;

class GoogleMap$11
  extends m.a
{
  GoogleMap$11(GoogleMap paramGoogleMap, GoogleMap.OnMarkerDragListener paramOnMarkerDragListener) {}
  
  public void b(f paramf)
  {
    Zl.onMarkerDragStart(new Marker(paramf));
  }
  
  public void c(f paramf)
  {
    Zl.onMarkerDragEnd(new Marker(paramf));
  }
  
  public void d(f paramf)
  {
    Zl.onMarkerDrag(new Marker(paramf));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */