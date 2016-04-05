package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.Callable;

class BridgeMMInlineVideo$1
  implements Callable<MMJSResponse>
{
  BridgeMMInlineVideo$1(BridgeMMInlineVideo paramBridgeMMInlineVideo, HashMap paramHashMap) {}
  
  public MMJSResponse call()
  {
    MMWebView localMMWebView = (MMWebView)this$0.mmWebViewRef.get();
    if (localMMWebView != null)
    {
      MMLayout localMMLayout = localMMWebView.getMMLayout();
      localMMLayout.initInlineVideo(new InlineVideoView.InlineParams(val$parameters, localMMWebView.getContext()));
      return MMJSResponse.responseWithSuccess("usingStreaming=" + localMMLayout.isVideoPlayingStreaming());
    }
    return MMJSResponse.responseWithError();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMInlineVideo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */