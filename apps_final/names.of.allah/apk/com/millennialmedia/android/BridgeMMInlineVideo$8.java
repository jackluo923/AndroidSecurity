package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.Callable;

class BridgeMMInlineVideo$8
  implements Callable<MMJSResponse>
{
  BridgeMMInlineVideo$8(BridgeMMInlineVideo paramBridgeMMInlineVideo, HashMap paramHashMap) {}
  
  public MMJSResponse call()
  {
    Object localObject = (MMWebView)this$0.mmWebViewRef.get();
    if (localObject != null)
    {
      localObject = ((MMWebView)localObject).getMMLayout();
      String str = (String)val$parameters.get("streamVideoURI");
      if ((localObject != null) && (str != null))
      {
        ((MMLayout)localObject).setVideoSource(str);
        return MMJSResponse.responseWithSuccess();
      }
    }
    return MMJSResponse.responseWithError();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMInlineVideo.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */