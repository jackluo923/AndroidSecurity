package com.millennialmedia.android;

import android.net.Uri;
import org.json.JSONObject;

class VideoPlayerActivity$1
  extends HttpRedirection.RedirectionListenerImpl
{
  VideoPlayerActivity$1(VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public JSONObject getAdProperties()
  {
    if (this$0.adProperties != null) {
      return this$0.adProperties.getAdProperties();
    }
    return null;
  }
  
  public OverlaySettings getOverlaySettings()
  {
    OverlaySettings localOverlaySettings = null;
    if (this$0.lastOverlayOrientation != null)
    {
      localOverlaySettings = new OverlaySettings();
      orientation = this$0.lastOverlayOrientation;
    }
    return localOverlaySettings;
  }
  
  public boolean isHandlingMMVideo(Uri paramUri)
  {
    this$0.runOnUiThread(new VideoPlayerActivity.1.1(this));
    if ((paramUri != null) && (VideoPlayerActivity.access$000(this$0, paramUri)))
    {
      this$0.processVideoPlayerUri(paramUri.getHost());
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoPlayerActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */