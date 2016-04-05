package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gp;
import java.io.IOException;
import org.json.JSONObject;

class RemoteMediaPlayer$9
  extends RemoteMediaPlayer.b
{
  RemoteMediaPlayer$9(RemoteMediaPlayer paramRemoteMediaPlayer, GoogleApiClient paramGoogleApiClient, double paramDouble, JSONObject paramJSONObject) {}
  
  protected void a(gi arg1)
  {
    synchronized (RemoteMediaPlayer.c(AX))
    {
      RemoteMediaPlayer.d(AX).b(AY);
      try
      {
        RemoteMediaPlayer.e(AX).a(Bn, Bh, Be);
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          b(l(new Status(1)));
          RemoteMediaPlayer.d(AX).b(null);
        }
        localObject1 = finally;
        throw ((Throwable)localObject1);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;)
        {
          b(l(new Status(1)));
          RemoteMediaPlayer.d(AX).b(null);
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          b(l(new Status(1)));
          RemoteMediaPlayer.d(AX).b(null);
        }
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
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */