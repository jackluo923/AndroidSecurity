package com.inmobi.re.controller.util;

public enum AVPlayer$playerState
{
  static
  {
    PAUSED = new playerState("PAUSED", 2);
    HIDDEN = new playerState("HIDDEN", 3);
    SHOWING = new playerState("SHOWING", 4);
  }
  
  private AVPlayer$playerState() {}
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.util.AVPlayer.playerState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */