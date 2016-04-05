package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;

public final class Tile
  implements SafeParcelable
{
  public static final TileCreator CREATOR = new TileCreator();
  public final byte[] data;
  public final int height;
  public final int width;
  private final int xJ;
  
  Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    xJ = paramInt1;
    width = paramInt2;
    height = paramInt3;
    data = paramArrayOfByte;
  }
  
  public Tile(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    this(1, paramInt1, paramInt2, paramArrayOfByte);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      i.a(this, paramParcel, paramInt);
      return;
    }
    TileCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */