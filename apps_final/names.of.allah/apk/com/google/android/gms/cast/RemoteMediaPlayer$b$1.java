package com.google.android.gms.cast;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gr;
import org.json.JSONObject;

class RemoteMediaPlayer$b$1
  implements gr
{
  RemoteMediaPlayer$b$1(RemoteMediaPlayer.b paramb) {}
  
  public void a(long paramLong, int paramInt, JSONObject paramJSONObject)
  {
    Bo.b(new RemoteMediaPlayer.c(new Status(paramInt), paramJSONObject));
  }
  
  public void n(long paramLong)
  {
    Bo.b(Bo.l(new Status(4)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */