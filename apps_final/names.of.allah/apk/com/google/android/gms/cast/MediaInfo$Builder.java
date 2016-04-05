package com.google.android.gms.cast;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

public class MediaInfo$Builder
{
  private final MediaInfo Ay;
  
  public MediaInfo$Builder(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Content ID cannot be empty");
    }
    Ay = new MediaInfo(paramString);
  }
  
  public MediaInfo build()
  {
    Ay.dT();
    return Ay;
  }
  
  public Builder setContentType(String paramString)
  {
    Ay.setContentType(paramString);
    return this;
  }
  
  public Builder setCustomData(JSONObject paramJSONObject)
  {
    Ay.setCustomData(paramJSONObject);
    return this;
  }
  
  public Builder setMediaTracks(List<MediaTrack> paramList)
  {
    Ay.b(paramList);
    return this;
  }
  
  public Builder setMetadata(MediaMetadata paramMediaMetadata)
  {
    Ay.a(paramMediaMetadata);
    return this;
  }
  
  public Builder setStreamDuration(long paramLong)
  {
    Ay.m(paramLong);
    return this;
  }
  
  public Builder setStreamType(int paramInt)
  {
    Ay.setStreamType(paramInt);
    return this;
  }
  
  public Builder setTextTrackStyle(TextTrackStyle paramTextTrackStyle)
  {
    Ay.setTextTrackStyle(paramTextTrackStyle);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.MediaInfo.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */