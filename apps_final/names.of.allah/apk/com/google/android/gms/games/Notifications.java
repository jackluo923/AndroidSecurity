package com.google.android.gms.games;

import com.google.android.gms.common.api.GoogleApiClient;

public abstract interface Notifications
{
  public static final int NOTIFICATION_TYPES_ALL = 31;
  public static final int NOTIFICATION_TYPES_MULTIPLAYER = 3;
  public static final int NOTIFICATION_TYPE_INVITATION = 1;
  public static final int NOTIFICATION_TYPE_LEVEL_UP = 16;
  public static final int NOTIFICATION_TYPE_MATCH_UPDATE = 2;
  public static final int NOTIFICATION_TYPE_QUEST = 8;
  public static final int NOTIFICATION_TYPE_REQUEST = 4;
  
  public abstract void clear(GoogleApiClient paramGoogleApiClient, int paramInt);
  
  public abstract void clearAll(GoogleApiClient paramGoogleApiClient);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Notifications
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */