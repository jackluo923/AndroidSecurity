package com.millennialmedia.android;

import android.content.Context;
import android.text.ClipboardManager;
import java.util.HashMap;
import java.util.concurrent.Callable;

class BridgeMMPasteboard$2
  implements Callable<MMJSResponse>
{
  BridgeMMPasteboard$2(BridgeMMPasteboard paramBridgeMMPasteboard, Context paramContext, HashMap paramHashMap) {}
  
  public MMJSResponse call()
  {
    try
    {
      ((ClipboardManager)val$context.getSystemService("clipboard")).setText((String)val$arguments.get("data"));
      MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess();
      return localMMJSResponse;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMPasteboard.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */