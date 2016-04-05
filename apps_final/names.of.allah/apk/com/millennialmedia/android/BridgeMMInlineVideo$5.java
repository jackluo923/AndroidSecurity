package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

class BridgeMMInlineVideo$5
  implements Callable<MMJSResponse>
{
  BridgeMMInlineVideo$5(BridgeMMInlineVideo paramBridgeMMInlineVideo) {}
  
  public MMJSResponse call()
  {
    Object localObject = (MMWebView)this$0.mmWebViewRef.get();
    if (localObject != null)
    {
      localObject = ((MMWebView)localObject).getMMLayout();
      if (localObject != null)
      {
        ((MMLayout)localObject).stopVideo();
        return MMJSResponse.responseWithSuccess();
      }
    }
    return MMJSResponse.responseWithError();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMInlineVideo.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */