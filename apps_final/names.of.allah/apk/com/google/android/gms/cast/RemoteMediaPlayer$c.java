package com.google.android.gms.cast;

import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

final class RemoteMediaPlayer$c
  implements RemoteMediaPlayer.MediaChannelResult
{
  private final JSONObject Ax;
  private final Status yw;
  
  RemoteMediaPlayer$c(Status paramStatus, JSONObject paramJSONObject)
  {
    yw = paramStatus;
    Ax = paramJSONObject;
  }
  
  public final JSONObject getCustomData()
  {
    return Ax;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */