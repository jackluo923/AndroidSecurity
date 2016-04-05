package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class GameRef
  extends d
  implements Game
{
  public GameRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final boolean areSnapshotsEnabled()
  {
    return getInteger("snapshots_enabled") > 0;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return GameEntity.a(this, paramObject);
  }
  
  public final Game freeze()
  {
    return new GameEntity(this);
  }
  
  public final boolean gH()
  {
    return getBoolean("play_enabled_game");
  }
  
  public final boolean gI()
  {
    return getBoolean("identity_sharing_confirmed");
  }
  
  public final boolean gJ()
  {
    return getInteger("installed") > 0;
  }
  
  public final String gK()
  {
    return getString("package_name");
  }
  
  public final int gL()
  {
    return getInteger("gameplay_acl_status");
  }
  
  public final int getAchievementTotalCount()
  {
    return getInteger("achievement_total_count");
  }
  
  public final String getApplicationId()
  {
    return getString("external_game_id");
  }
  
  public final String getDescription()
  {
    return getString("game_description");
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    a("game_description", paramCharArrayBuffer);
  }
  
  public final String getDeveloperName()
  {
    return getString("developer_name");
  }
  
  public final void getDeveloperName(CharArrayBuffer paramCharArrayBuffer)
  {
    a("developer_name", paramCharArrayBuffer);
  }
  
  public final String getDisplayName()
  {
    return getString("display_name");
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    a("display_name", paramCharArrayBuffer);
  }
  
  public final Uri getFeaturedImageUri()
  {
    return aw("featured_image_uri");
  }
  
  public final String getFeaturedImageUrl()
  {
    return getString("featured_image_url");
  }
  
  public final Uri getHiResImageUri()
  {
    return aw("game_hi_res_image_uri");
  }
  
  public final String getHiResImageUrl()
  {
    return getString("game_hi_res_image_url");
  }
  
  public final Uri getIconImageUri()
  {
    return aw("game_icon_image_uri");
  }
  
  public final String getIconImageUrl()
  {
    return getString("game_icon_image_url");
  }
  
  public final int getLeaderboardCount()
  {
    return getInteger("leaderboard_count");
  }
  
  public final String getPrimaryCategory()
  {
    return getString("primary_category");
  }
  
  public final String getSecondaryCategory()
  {
    return getString("secondary_category");
  }
  
  public final int hashCode()
  {
    return GameEntity.a(this);
  }
  
  public final boolean isMuted()
  {
    return getBoolean("muted");
  }
  
  public final boolean isRealTimeMultiplayerEnabled()
  {
    return getInteger("real_time_support") > 0;
  }
  
  public final boolean isTurnBasedMultiplayerEnabled()
  {
    return getInteger("turn_based_support") > 0;
  }
  
  public final String toString()
  {
    return GameEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((GameEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.GameRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */