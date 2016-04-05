package com.google.android.gms.games.internal.player;

import android.text.TextUtils;

public final class PlayerColumnNames
{
  public final String RL;
  public final String RM;
  public final String RN;
  public final String RO;
  public final String RP;
  public final String RQ;
  public final String RR;
  public final String RS;
  public final String RT;
  public final String RU;
  public final String RV;
  public final String RW;
  public final String RX;
  public final String RY;
  public final String RZ;
  public final String Sa;
  public final String Sb;
  public final String Sc;
  public final String Sd;
  public final String Se;
  public final String Sf;
  public final String Sg;
  public final String Sh;
  public final String Si;
  
  public PlayerColumnNames(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      RL = "external_player_id";
      RM = "profile_name";
      RN = "profile_icon_image_uri";
      RO = "profile_icon_image_url";
      RP = "profile_hi_res_image_uri";
      RQ = "profile_hi_res_image_url";
      RR = "last_updated";
      RS = "is_in_circles";
      RT = "played_with_timestamp";
      RU = "current_xp_total";
      RV = "current_level";
      RW = "current_level_min_xp";
      RX = "current_level_max_xp";
      RY = "next_level";
      RZ = "next_level_max_xp";
      Sa = "last_level_up_timestamp";
      Sb = "player_title";
      Sc = "has_all_public_acls";
      Sd = "most_recent_external_game_id";
      Se = "most_recent_game_name";
      Sf = "most_recent_activity_timestamp";
      Sg = "most_recent_game_icon_uri";
      Sh = "most_recent_game_hi_res_uri";
      Si = "most_recent_game_featured_uri";
      return;
    }
    RL = (paramString + "external_player_id");
    RM = (paramString + "profile_name");
    RN = (paramString + "profile_icon_image_uri");
    RO = (paramString + "profile_icon_image_url");
    RP = (paramString + "profile_hi_res_image_uri");
    RQ = (paramString + "profile_hi_res_image_url");
    RR = (paramString + "last_updated");
    RS = (paramString + "is_in_circles");
    RT = (paramString + "played_with_timestamp");
    RU = (paramString + "current_xp_total");
    RV = (paramString + "current_level");
    RW = (paramString + "current_level_min_xp");
    RX = (paramString + "current_level_max_xp");
    RY = (paramString + "next_level");
    RZ = (paramString + "next_level_max_xp");
    Sa = (paramString + "last_level_up_timestamp");
    Sb = (paramString + "player_title");
    Sc = (paramString + "has_all_public_acls");
    Sd = (paramString + "most_recent_external_game_id");
    Se = (paramString + "most_recent_game_name");
    Sf = (paramString + "most_recent_activity_timestamp");
    Sg = (paramString + "most_recent_game_icon_uri");
    Sh = (paramString + "most_recent_game_hi_res_uri");
    Si = (paramString + "most_recent_game_featured_uri");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.player.PlayerColumnNames
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */