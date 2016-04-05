package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

class BridgeMMInlineVideo$6
  implements Callable<MMJSResponse>
{
  BridgeMMInlineVideo$6(BridgeMMInlineVideo paramBridgeMMInlineVideo) {}
  
  public MMJSResponse call()
  {
    Object localObject = (MMWebView)this$0.mmWebViewRef.get();
    if (localObject != null)
    {
      localObject = ((MMWebView)localObject).getMMLayout();
      if (localObject != null)
      {
        ((MMLayout)localObject).pauseVideo();
        return MMJSResponse.responseWithSuccess();
      }
    }
    return MMJSResponse.responseWithError();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMInlineVideo.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */