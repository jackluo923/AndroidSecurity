package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class GameBadgeRef
  extends d
  implements GameBadge
{
  GameBadgeRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return GameBadgeEntity.a(this, paramObject);
  }
  
  public final String getDescription()
  {
    return getString("badge_description");
  }
  
  public final Uri getIconImageUri()
  {
    return aw("badge_icon_image_uri");
  }
  
  public final String getTitle()
  {
    return getString("badge_title");
  }
  
  public final int getType()
  {
    return getInteger("badge_type");
  }
  
  public final GameBadge hX()
  {
    return new GameBadgeEntity(this);
  }
  
  public final int hashCode()
  {
    return GameBadgeEntity.a(this);
  }
  
  public final String toString()
  {
    return GameBadgeEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((GameBadgeEntity)hX()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameBadgeRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */