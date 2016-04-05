package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class MostRecentGameInfoRef
  extends d
  implements MostRecentGameInfo
{
  private final PlayerColumnNames Nd;
  
  public MostRecentGameInfoRef(DataHolder paramDataHolder, int paramInt, PlayerColumnNames paramPlayerColumnNames)
  {
    super(paramDataHolder, paramInt);
    Nd = paramPlayerColumnNames;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return MostRecentGameInfoEntity.a(this, paramObject);
  }
  
  public final int hashCode()
  {
    return MostRecentGameInfoEntity.a(this);
  }
  
  public final String ik()
  {
    return getString(Nd.Sd);
  }
  
  public final String il()
  {
    return getString(Nd.Se);
  }
  
  public final long im()
  {
    return getLong(Nd.Sf);
  }
  
  public final Uri in()
  {
    return aw(Nd.Sg);
  }
  
  public final Uri io()
  {
    return aw(Nd.Sh);
  }
  
  public final Uri ip()
  {
    return aw(Nd.Si);
  }
  
  public final MostRecentGameInfo iq()
  {
    return new MostRecentGameInfoEntity(this);
  }
  
  public final String toString()
  {
    return MostRecentGameInfoEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((MostRecentGameInfoEntity)iq()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.player.MostRecentGameInfoRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */