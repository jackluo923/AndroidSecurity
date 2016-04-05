package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gp;
import java.io.IOException;
import org.json.JSONObject;

class RemoteMediaPlayer$6
  extends RemoteMediaPlayer.b
{
  RemoteMediaPlayer$6(RemoteMediaPlayer paramRemoteMediaPlayer, GoogleApiClient paramGoogleApiClient, JSONObject paramJSONObject) {}
  
  protected void a(gi arg1)
  {
    synchronized (RemoteMediaPlayer.c(AX))
    {
      RemoteMediaPlayer.d(AX).b(AY);
      try
      {
        RemoteMediaPlayer.e(AX).b(Bn, Be);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          b(l(new Status(1)));
          RemoteMediaPlayer.d(AX).b(null);
        }
        localObject1 = finally;
        throw ((Throwable)localObject1);
      }
      finally
      {
        RemoteMediaPlayer.d(AX).b(null);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */