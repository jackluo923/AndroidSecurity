package com.millennialmedia.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.millennialmedia.google.gson.Gson;
import java.util.HashMap;

class InlineVideoView$InlineParams
{
  boolean autoPlay;
  int bodyHeight;
  int bodyWidth;
  String cachedVideoID;
  String cachedVideoURI;
  int currentPosition;
  boolean goingFullScreen;
  int height;
  boolean isCompleted;
  boolean isInitialPlayBack = true;
  boolean isPlayingStreaming;
  boolean isStopped;
  int originalOrientation;
  float scaleFactor;
  boolean showControls;
  String streamVideoURI;
  String touchCallBack;
  int width;
  int x;
  int y;
  
  InlineVideoView$InlineParams(HashMap<String, String> paramHashMap, Context paramContext)
  {
    if (paramHashMap.get("x") != null) {
      x = ((int)Float.parseFloat((String)paramHashMap.get("x")));
    }
    if (paramHashMap.get("y") != null) {
      y = ((int)Float.parseFloat((String)paramHashMap.get("y")));
    }
    if (paramHashMap.get("width") != null) {
      width = ((int)Float.parseFloat((String)paramHashMap.get("width")));
    }
    if (paramHashMap.get("height") != null) {
      height = ((int)Float.parseFloat((String)paramHashMap.get("height")));
    }
    streamVideoURI = ((String)paramHashMap.get("streamVideoURI"));
    cachedVideoURI = ((String)paramHashMap.get("cachedVideoURI"));
    cachedVideoID = ((String)paramHashMap.get("cachedVideoID"));
    if (paramHashMap.get("autoPlay") != null) {
      autoPlay = Boolean.parseBoolean((String)paramHashMap.get("autoPlay"));
    }
    if (paramHashMap.get("showControls") != null) {
      showControls = Boolean.parseBoolean((String)paramHashMap.get("showControls"));
    }
    if (paramHashMap.get("bodyWidth") != null) {
      bodyWidth = ((int)Float.parseFloat((String)paramHashMap.get("bodyWidth")));
    }
    if (paramHashMap.get("bodyHeight") != null) {
      bodyHeight = ((int)Float.parseFloat((String)paramHashMap.get("bodyHeight")));
    }
    touchCallBack = ((String)paramHashMap.get("touchCallback"));
    scaleFactor = getResourcesgetDisplayMetricsdensity;
  }
  
  static InlineParams getInlineParams(String paramString)
  {
    return (InlineParams)new Gson().fromJson(paramString, InlineParams.class);
  }
  
  void inflateFromGson(String paramString)
  {
    InlineParams localInlineParams = (InlineParams)new Gson().fromJson(paramString, InlineParams.class);
    x = x;
    y = y;
    bodyWidth = bodyWidth;
    bodyHeight = bodyHeight;
    width = width;
    height = height;
    currentPosition = currentPosition;
    streamVideoURI = streamVideoURI;
    cachedVideoURI = cachedVideoURI;
    cachedVideoID = cachedVideoID;
    touchCallBack = touchCallBack;
    autoPlay = autoPlay;
    showControls = showControls;
    isInitialPlayBack = isInitialPlayBack;
    scaleFactor = scaleFactor;
    goingFullScreen = goingFullScreen;
    originalOrientation = originalOrientation;
    isCompleted = isCompleted;
    MMSDK.Log.d("gson*****" + paramString);
    MMSDK.Log.d("PARAMS*****" + localInlineParams);
  }
  
  public String toString()
  {
    return String.format("%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay", new Object[] { cachedVideoID, Integer.valueOf(x), Integer.valueOf(y), Integer.valueOf(bodyWidth), Integer.valueOf(bodyHeight), Integer.valueOf(currentPosition), Boolean.valueOf(autoPlay) });
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.InlineParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */