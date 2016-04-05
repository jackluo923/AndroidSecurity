package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.gq;
import java.io.IOException;

class RemoteMediaPlayer$a
  implements gq
{
  private GoogleApiClient Bj;
  private long Bk = 0L;
  
  public RemoteMediaPlayer$a(RemoteMediaPlayer paramRemoteMediaPlayer) {}
  
  public void a(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    if (Bj == null) {
      throw new IOException("No GoogleApiClient available");
    }
    Cast.CastApi.sendMessage(Bj, paramString1, paramString2).setResultCallback(new RemoteMediaPlayer.a.a(this, paramLong));
  }
  
  public void b(GoogleApiClient paramGoogleApiClient)
  {
    Bj = paramGoogleApiClient;
  }
  
  public long dW()
  {
    long l = Bk + 1L;
    Bk = l;
    return l;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */