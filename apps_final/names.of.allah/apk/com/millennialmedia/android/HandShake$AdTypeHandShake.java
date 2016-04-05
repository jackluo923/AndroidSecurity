package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.json.JSONObject;

class HandShake$AdTypeHandShake
{
  boolean downloading;
  long lastVideo = 0L;
  long videoInterval = 0L;
  
  HandShake$AdTypeHandShake(HandShake paramHandShake) {}
  
  boolean canDisplayCachedAd(long paramLong)
  {
    return System.currentTimeMillis() - paramLong < HandShake.access$1100(this$0);
  }
  
  boolean canRequestVideo(Context paramContext, String paramString)
  {
    MMSDK.Log.d("canRequestVideo() Current Time: %d Last Video: %d  Diff: %d  Video interval: %d", new Object[] { Long.valueOf(System.currentTimeMillis()), Long.valueOf(lastVideo / 1000L), Long.valueOf((System.currentTimeMillis() - lastVideo) / 1000L), Long.valueOf(videoInterval / 1000L) });
    return System.currentTimeMillis() - lastVideo > videoInterval;
  }
  
  void deserializeFromObj(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return;
    }
    videoInterval = (paramJSONObject.optLong("videointerval") * 1000L);
  }
  
  boolean load(SharedPreferences paramSharedPreferences, String paramString)
  {
    boolean bool = false;
    if (paramSharedPreferences.contains("handshake_lastvideo_" + paramString))
    {
      lastVideo = paramSharedPreferences.getLong("handshake_lastvideo_" + paramString, lastVideo);
      bool = true;
    }
    if (paramSharedPreferences.contains("handshake_videointerval_" + paramString))
    {
      videoInterval = paramSharedPreferences.getLong("handshake_videointerval_" + paramString, videoInterval);
      return true;
    }
    return bool;
  }
  
  void loadLastVideo(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
    if ((paramContext != null) && (paramContext.contains("handshake_lastvideo_" + paramString))) {
      lastVideo = paramContext.getLong("handshake_lastvideo_" + paramString, lastVideo);
    }
  }
  
  void save(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
    save(paramContext, paramString);
    paramContext.commit();
  }
  
  void save(SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putLong("handshake_lastvideo_" + paramString, lastVideo);
    paramEditor.putLong("handshake_videointerval_" + paramString, videoInterval);
  }
  
  void updateLastVideoViewedTime(Context paramContext, String paramString)
  {
    lastVideo = System.currentTimeMillis();
    save(paramContext, paramString);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HandShake.AdTypeHandShake
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */