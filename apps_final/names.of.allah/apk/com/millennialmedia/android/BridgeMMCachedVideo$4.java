package com.millennialmedia.android;

import java.util.concurrent.Callable;

class BridgeMMCachedVideo$4
  implements Callable<MMJSResponse>
{
  BridgeMMCachedVideo$4(BridgeMMCachedVideo paramBridgeMMCachedVideo, VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public MMJSResponse call()
  {
    val$vpa.pauseVideoByUser();
    return MMJSResponse.responseWithSuccess();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMCachedVideo.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */