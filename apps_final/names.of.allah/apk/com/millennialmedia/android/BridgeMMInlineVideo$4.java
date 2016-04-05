package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.Callable;

class BridgeMMInlineVideo$4
  implements Callable<MMJSResponse>
{
  BridgeMMInlineVideo$4(BridgeMMInlineVideo paramBridgeMMInlineVideo, HashMap paramHashMap) {}
  
  public MMJSResponse call()
  {
    MMWebView localMMWebView = (MMWebView)this$0.mmWebViewRef.get();
    if ((localMMWebView != null) && (localMMWebView != null) && (localMMWebView.getMMLayout().adjustVideo(new InlineVideoView.InlineParams(val$parameters, localMMWebView.getContext())))) {
      return MMJSResponse.responseWithSuccess();
    }
    return MMJSResponse.responseWithError();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMInlineVideo.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */