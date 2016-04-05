package com.inmobi.re.controller.util;

public abstract interface AVPlayerListener
{
  public abstract void onComplete(AVPlayer paramAVPlayer);
  
  public abstract void onError(AVPlayer paramAVPlayer);
  
  public abstract void onPrepared(AVPlayer paramAVPlayer);
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.util.AVPlayerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */