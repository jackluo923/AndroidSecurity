package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.internal.constants.PlatformType;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class GameInstanceRef
  extends d
  implements GameInstance
{
  GameInstanceRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final String getApplicationId()
  {
    return getString("external_game_id");
  }
  
  public final String getDisplayName()
  {
    return getString("instance_display_name");
  }
  
  public final String getPackageName()
  {
    return getString("package_name");
  }
  
  public final boolean hY()
  {
    return getInteger("real_time_support") > 0;
  }
  
  public final boolean hZ()
  {
    return getInteger("turn_based_support") > 0;
  }
  
  public final int ia()
  {
    return getInteger("platform_type");
  }
  
  public final boolean ib()
  {
    return getInteger("piracy_check") > 0;
  }
  
  public final boolean ic()
  {
    return getInteger("installed") > 0;
  }
  
  public final String toString()
  {
    return hl.e(this).a("ApplicationId", getApplicationId()).a("DisplayName", getDisplayName()).a("SupportsRealTime", Boolean.valueOf(hY())).a("SupportsTurnBased", Boolean.valueOf(hZ())).a("PlatformType", PlatformType.cm(ia())).a("PackageName", getPackageName()).a("PiracyCheckEnabled", Boolean.valueOf(ib())).a("Installed", Boolean.valueOf(ic())).toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameInstanceRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */