package com.millennialmedia.android;

import android.content.Context;
import android.net.Uri;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

class HttpRedirection$RedirectionListenerImpl
  implements HttpRedirection.Listener
{
  long creatorAdImplInternalId;
  Uri destinationUri;
  String orientation;
  String url;
  WeakReference<Context> weakContext;
  
  public boolean canOpenOverlay()
  {
    return false;
  }
  
  public JSONObject getAdProperties()
  {
    return null;
  }
  
  public OverlaySettings getOverlaySettings()
  {
    return null;
  }
  
  public boolean isActivityStartable(Uri paramUri)
  {
    return true;
  }
  
  public boolean isExpandingToUrl()
  {
    return false;
  }
  
  public boolean isHandlingMMVideo(Uri paramUri)
  {
    return false;
  }
  
  public void startingActivity(Uri paramUri)
  {
    MMSDK.Log.d("Starting activity for %s", new Object[] { paramUri });
  }
  
  public void startingVideo() {}
  
  public void updateLastVideoViewedTime() {}
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpRedirection.RedirectionListenerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */