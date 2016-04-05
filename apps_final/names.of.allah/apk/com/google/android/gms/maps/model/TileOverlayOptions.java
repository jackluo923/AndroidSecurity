package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.internal.i;
import com.google.android.gms.maps.model.internal.i.a;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final TileOverlayOptionsCreator CREATOR = new TileOverlayOptionsCreator();
  private float aau;
  private boolean aav = true;
  private i aba;
  private TileProvider abb;
  private boolean abc = true;
  private final int xJ;
  
  public TileOverlayOptions()
  {
    xJ = 1;
  }
  
  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    xJ = paramInt;
    aba = i.a.bg(paramIBinder);
    if (aba == null) {}
    for (paramIBinder = null;; paramIBinder = new TileOverlayOptions.1(this))
    {
      abb = paramIBinder;
      aav = paramBoolean1;
      aau = paramFloat;
      abc = paramBoolean2;
      return;
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final TileOverlayOptions fadeIn(boolean paramBoolean)
  {
    abc = paramBoolean;
    return this;
  }
  
  public final boolean getFadeIn()
  {
    return abc;
  }
  
  public final TileProvider getTileProvider()
  {
    return abb;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final float getZIndex()
  {
    return aau;
  }
  
  public final boolean isVisible()
  {
    return aav;
  }
  
  final IBinder jL()
  {
    return aba.asBinder();
  }
  
  public final TileOverlayOptions tileProvider(TileProvider paramTileProvider)
  {
    abb = paramTileProvider;
    if (abb == null) {}
    for (paramTileProvider = null;; paramTileProvider = new TileOverlayOptions.2(this, paramTileProvider))
    {
      aba = paramTileProvider;
      return this;
    }
  }
  
  public final TileOverlayOptions visible(boolean paramBoolean)
  {
    aav = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      j.a(this, paramParcel, paramInt);
      return;
    }
    TileOverlayOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final TileOverlayOptions zIndex(float paramFloat)
  {
    aau = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */