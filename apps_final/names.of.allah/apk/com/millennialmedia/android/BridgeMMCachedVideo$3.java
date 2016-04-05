package com.millennialmedia.android;

import java.util.concurrent.Callable;

class BridgeMMCachedVideo$3
  implements Callable<MMJSResponse>
{
  BridgeMMCachedVideo$3(BridgeMMCachedVideo paramBridgeMMCachedVideo, VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public MMJSResponse call()
  {
    val$vpa.endVideo();
    return MMJSResponse.responseWithSuccess();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMCachedVideo.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */