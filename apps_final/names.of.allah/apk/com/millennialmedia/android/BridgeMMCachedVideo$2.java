package com.millennialmedia.android;

import java.util.concurrent.Callable;

class BridgeMMCachedVideo$2
  implements Callable<MMJSResponse>
{
  BridgeMMCachedVideo$2(BridgeMMCachedVideo paramBridgeMMCachedVideo, VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public MMJSResponse call()
  {
    val$vpa.resumeVideo();
    return MMJSResponse.responseWithSuccess();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMCachedVideo.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */