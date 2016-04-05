package com.google.android.gms.cast;

import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gp;

final class RemoteMediaPlayer$a$a
  implements ResultCallback<Status>
{
  private final long Bl;
  
  RemoteMediaPlayer$a$a(RemoteMediaPlayer.a parama, long paramLong)
  {
    Bl = paramLong;
  }
  
  public final void k(Status paramStatus)
  {
    if (!paramStatus.isSuccess()) {
      RemoteMediaPlayer.e(Bm.AX).a(Bl, paramStatus.getStatusCode());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */