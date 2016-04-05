package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class AchievementRef
  extends d
  implements Achievement
{
  AchievementRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final String getAchievementId()
  {
    return getString("external_achievement_id");
  }
  
  public final int getCurrentSteps()
  {
    boolean bool = true;
    if (getType() == 1) {}
    for (;;)
    {
      gy.A(bool);
      return getInteger("current_steps");
      bool = false;
    }
  }
  
  public final String getDescription()
  {
    return getString("description");
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    a("description", paramCharArrayBuffer);
  }
  
  public final String getFormattedCurrentSteps()
  {
    boolean bool = true;
    if (getType() == 1) {}
    for (;;)
    {
      gy.A(bool);
      return getString("formatted_current_steps");
      bool = false;
    }
  }
  
  public final void getFormattedCurrentSteps(CharArrayBuffer paramCharArrayBuffer)
  {
    boolean bool = true;
    if (getType() == 1) {}
    for (;;)
    {
      gy.A(bool);
      a("formatted_current_steps", paramCharArrayBuffer);
      return;
      bool = false;
    }
  }
  
  public final String getFormattedTotalSteps()
  {
    boolean bool = true;
    if (getType() == 1) {}
    for (;;)
    {
      gy.A(bool);
      return getString("formatted_total_steps");
      bool = false;
    }
  }
  
  public final void getFormattedTotalSteps(CharArrayBuffer paramCharArrayBuffer)
  {
    boolean bool = true;
    if (getType() == 1) {}
    for (;;)
    {
      gy.A(bool);
      a("formatted_total_steps", paramCharArrayBuffer);
      return;
      bool = false;
    }
  }
  
  public final long getLastUpdatedTimestamp()
  {
    return getLong("last_updated_timestamp");
  }
  
  public final String getName()
  {
    return getString("name");
  }
  
  public final void getName(CharArrayBuffer paramCharArrayBuffer)
  {
    a("name", paramCharArrayBuffer);
  }
  
  public final Player getPlayer()
  {
    return new PlayerRef(DD, Ez);
  }
  
  public final Uri getRevealedImageUri()
  {
    return aw("revealed_icon_image_uri");
  }
  
  public final String getRevealedImageUrl()
  {
    return getString("revealed_icon_image_url");
  }
  
  public final int getState()
  {
    return getInteger("state");
  }
  
  public final int getTotalSteps()
  {
    boolean bool = true;
    if (getType() == 1) {}
    for (;;)
    {
      gy.A(bool);
      return getInteger("total_steps");
      bool = false;
    }
  }
  
  public final int getType()
  {
    return getInteger("type");
  }
  
  public final Uri getUnlockedImageUri()
  {
    return aw("unlocked_icon_image_uri");
  }
  
  public final String getUnlockedImageUrl()
  {
    return getString("unlocked_icon_image_url");
  }
  
  public final long getXpValue()
  {
    if ((!av("instance_xp_value")) || (ax("instance_xp_value"))) {
      return getLong("definition_xp_value");
    }
    return getLong("instance_xp_value");
  }
  
  public final String toString()
  {
    hl.a locala = hl.e(this).a("AchievementId", getAchievementId()).a("Type", Integer.valueOf(getType())).a("Name", getName()).a("Description", getDescription()).a("UnlockedImageUri", getUnlockedImageUri()).a("UnlockedImageUrl", getUnlockedImageUrl()).a("RevealedImageUri", getRevealedImageUri()).a("RevealedImageUrl", getRevealedImageUrl()).a("Player", getPlayer()).a("LastUpdatedTimeStamp", Long.valueOf(getLastUpdatedTimestamp()));
    if (getType() == 1)
    {
      locala.a("CurrentSteps", Integer.valueOf(getCurrentSteps()));
      locala.a("TotalSteps", Integer.valueOf(getTotalSteps()));
    }
    return locala.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.achievement.AchievementRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */