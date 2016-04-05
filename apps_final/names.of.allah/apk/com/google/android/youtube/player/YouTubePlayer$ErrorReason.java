package com.google.android.youtube.player;

public enum YouTubePlayer$ErrorReason
{
  static
  {
    BLOCKED_FOR_APP = new ErrorReason("BLOCKED_FOR_APP", 1);
    NOT_PLAYABLE = new ErrorReason("NOT_PLAYABLE", 2);
    NETWORK_ERROR = new ErrorReason("NETWORK_ERROR", 3);
    UNAUTHORIZED_OVERLAY = new ErrorReason("UNAUTHORIZED_OVERLAY", 4);
    PLAYER_VIEW_TOO_SMALL = new ErrorReason("PLAYER_VIEW_TOO_SMALL", 5);
    EMPTY_PLAYLIST = new ErrorReason("EMPTY_PLAYLIST", 6);
    AUTOPLAY_DISABLED = new ErrorReason("AUTOPLAY_DISABLED", 7);
    USER_DECLINED_RESTRICTED_CONTENT = new ErrorReason("USER_DECLINED_RESTRICTED_CONTENT", 8);
    USER_DECLINED_HIGH_BANDWIDTH = new ErrorReason("USER_DECLINED_HIGH_BANDWIDTH", 9);
    UNEXPECTED_SERVICE_DISCONNECTION = new ErrorReason("UNEXPECTED_SERVICE_DISCONNECTION", 10);
  }
  
  private YouTubePlayer$ErrorReason() {}
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayer.ErrorReason
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */