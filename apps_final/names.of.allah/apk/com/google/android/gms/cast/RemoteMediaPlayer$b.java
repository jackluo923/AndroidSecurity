package com.google.android.gms.cast;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gr;

abstract class RemoteMediaPlayer$b
  extends Cast.a<RemoteMediaPlayer.MediaChannelResult>
{
  gr Bn = new RemoteMediaPlayer.b.1(this);
  
  public RemoteMediaPlayer.MediaChannelResult l(Status paramStatus)
  {
    return new RemoteMediaPlayer.b.2(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */