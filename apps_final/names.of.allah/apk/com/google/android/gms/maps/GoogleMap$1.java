package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.f.a;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.internal.d;

class GoogleMap$1
  extends f.a
{
  GoogleMap$1(GoogleMap paramGoogleMap, GoogleMap.OnIndoorStateChangeListener paramOnIndoorStateChangeListener) {}
  
  public void a(d paramd)
  {
    YY.onIndoorLevelActivated(new IndoorBuilding(paramd));
  }
  
  public void onIndoorBuildingFocused()
  {
    YY.onIndoorBuildingFocused();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */