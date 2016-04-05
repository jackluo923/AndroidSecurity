package com.millennialmedia.android;

import java.util.concurrent.Callable;

class BridgeMMCachedVideo$5
  implements Callable<MMJSResponse>
{
  BridgeMMCachedVideo$5(BridgeMMCachedVideo paramBridgeMMCachedVideo, VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public MMJSResponse call()
  {
    val$vpa.restartVideo();
    return MMJSResponse.responseWithSuccess();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMCachedVideo.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */