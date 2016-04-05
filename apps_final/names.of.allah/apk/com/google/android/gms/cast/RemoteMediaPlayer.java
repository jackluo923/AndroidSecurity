package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.gp;
import org.json.JSONObject;

public class RemoteMediaPlayer
  implements Cast.MessageReceivedCallback
{
  public static final int RESUME_STATE_PAUSE = 2;
  public static final int RESUME_STATE_PLAY = 1;
  public static final int RESUME_STATE_UNCHANGED = 0;
  public static final int STATUS_CANCELED = 2;
  public static final int STATUS_FAILED = 1;
  public static final int STATUS_REPLACED = 4;
  public static final int STATUS_SUCCEEDED = 0;
  public static final int STATUS_TIMED_OUT = 3;
  private final gp AT = new RemoteMediaPlayer.1(this);
  private final RemoteMediaPlayer.a AU = new RemoteMediaPlayer.a(this);
  private RemoteMediaPlayer.OnMetadataUpdatedListener AV;
  private RemoteMediaPlayer.OnStatusUpdatedListener AW;
  private final Object lq = new Object();
  
  public RemoteMediaPlayer()
  {
    AT.a(AU);
  }
  
  private void onMetadataUpdated()
  {
    if (AV != null) {
      AV.onMetadataUpdated();
    }
  }
  
  private void onStatusUpdated()
  {
    if (AW != null) {
      AW.onStatusUpdated();
    }
  }
  
  public long getApproximateStreamPosition()
  {
    synchronized (lq)
    {
      long l = AT.getApproximateStreamPosition();
      return l;
    }
  }
  
  public MediaInfo getMediaInfo()
  {
    synchronized (lq)
    {
      MediaInfo localMediaInfo = AT.getMediaInfo();
      return localMediaInfo;
    }
  }
  
  public MediaStatus getMediaStatus()
  {
    synchronized (lq)
    {
      MediaStatus localMediaStatus = AT.getMediaStatus();
      return localMediaStatus;
    }
  }
  
  public String getNamespace()
  {
    return AT.getNamespace();
  }
  
  public long getStreamDuration()
  {
    synchronized (lq)
    {
      long l = AT.getStreamDuration();
      return l;
    }
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> load(GoogleApiClient paramGoogleApiClient, MediaInfo paramMediaInfo)
  {
    return load(paramGoogleApiClient, paramMediaInfo, true, 0L, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> load(GoogleApiClient paramGoogleApiClient, MediaInfo paramMediaInfo, boolean paramBoolean)
  {
    return load(paramGoogleApiClient, paramMediaInfo, paramBoolean, 0L, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> load(GoogleApiClient paramGoogleApiClient, MediaInfo paramMediaInfo, boolean paramBoolean, long paramLong)
  {
    return load(paramGoogleApiClient, paramMediaInfo, paramBoolean, paramLong, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> load(GoogleApiClient paramGoogleApiClient, MediaInfo paramMediaInfo, boolean paramBoolean, long paramLong, JSONObject paramJSONObject)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.4(this, paramGoogleApiClient, paramMediaInfo, paramBoolean, paramLong, paramJSONObject));
  }
  
  public void onMessageReceived(CastDevice paramCastDevice, String paramString1, String paramString2)
  {
    AT.ai(paramString2);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> pause(GoogleApiClient paramGoogleApiClient)
  {
    return pause(paramGoogleApiClient, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> pause(GoogleApiClient paramGoogleApiClient, JSONObject paramJSONObject)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.5(this, paramGoogleApiClient, paramJSONObject));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> play(GoogleApiClient paramGoogleApiClient)
  {
    return play(paramGoogleApiClient, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> play(GoogleApiClient paramGoogleApiClient, JSONObject paramJSONObject)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.7(this, paramGoogleApiClient, paramJSONObject));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> requestStatus(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.11(this, paramGoogleApiClient));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> seek(GoogleApiClient paramGoogleApiClient, long paramLong)
  {
    return seek(paramGoogleApiClient, paramLong, 0, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> seek(GoogleApiClient paramGoogleApiClient, long paramLong, int paramInt)
  {
    return seek(paramGoogleApiClient, paramLong, paramInt, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> seek(GoogleApiClient paramGoogleApiClient, long paramLong, int paramInt, JSONObject paramJSONObject)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.8(this, paramGoogleApiClient, paramLong, paramInt, paramJSONObject));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> setActiveMediaTracks(GoogleApiClient paramGoogleApiClient, long[] paramArrayOfLong)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.2(this, paramGoogleApiClient, paramArrayOfLong));
  }
  
  public void setOnMetadataUpdatedListener(RemoteMediaPlayer.OnMetadataUpdatedListener paramOnMetadataUpdatedListener)
  {
    AV = paramOnMetadataUpdatedListener;
  }
  
  public void setOnStatusUpdatedListener(RemoteMediaPlayer.OnStatusUpdatedListener paramOnStatusUpdatedListener)
  {
    AW = paramOnStatusUpdatedListener;
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> setStreamMute(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return setStreamMute(paramGoogleApiClient, paramBoolean, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> setStreamMute(GoogleApiClient paramGoogleApiClient, boolean paramBoolean, JSONObject paramJSONObject)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.10(this, paramGoogleApiClient, paramBoolean, paramJSONObject));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> setStreamVolume(GoogleApiClient paramGoogleApiClient, double paramDouble)
  {
    return setStreamVolume(paramGoogleApiClient, paramDouble, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> setStreamVolume(GoogleApiClient paramGoogleApiClient, double paramDouble, JSONObject paramJSONObject)
  {
    if ((Double.isInfinite(paramDouble)) || (Double.isNaN(paramDouble))) {
      throw new IllegalArgumentException("Volume cannot be " + paramDouble);
    }
    return paramGoogleApiClient.b(new RemoteMediaPlayer.9(this, paramGoogleApiClient, paramDouble, paramJSONObject));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> setTextTrackStyle(GoogleApiClient paramGoogleApiClient, TextTrackStyle paramTextTrackStyle)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.3(this, paramGoogleApiClient, paramTextTrackStyle));
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> stop(GoogleApiClient paramGoogleApiClient)
  {
    return stop(paramGoogleApiClient, null);
  }
  
  public PendingResult<RemoteMediaPlayer.MediaChannelResult> stop(GoogleApiClient paramGoogleApiClient, JSONObject paramJSONObject)
  {
    return paramGoogleApiClient.b(new RemoteMediaPlayer.6(this, paramGoogleApiClient, paramJSONObject));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */