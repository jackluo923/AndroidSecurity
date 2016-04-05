package com.google.android.gms.games;

public final class Games$GamesOptions$Builder
{
  boolean MJ = false;
  boolean MK = true;
  int ML = 17;
  boolean MM = false;
  int MN = 4368;
  String MO = null;
  
  public final Games.GamesOptions build()
  {
    return new Games.GamesOptions(this, null);
  }
  
  public final Builder setSdkVariant(int paramInt)
  {
    MN = paramInt;
    return this;
  }
  
  public final Builder setShowConnectingPopup(boolean paramBoolean)
  {
    MK = paramBoolean;
    ML = 17;
    return this;
  }
  
  public final Builder setShowConnectingPopup(boolean paramBoolean, int paramInt)
  {
    MK = paramBoolean;
    ML = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Games.GamesOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */