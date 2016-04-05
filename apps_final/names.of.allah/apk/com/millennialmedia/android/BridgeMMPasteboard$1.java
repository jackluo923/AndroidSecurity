package com.millennialmedia.android;

import android.content.Context;
import android.text.ClipboardManager;
import java.util.concurrent.Callable;

class BridgeMMPasteboard$1
  implements Callable<MMJSResponse>
{
  BridgeMMPasteboard$1(BridgeMMPasteboard paramBridgeMMPasteboard, Context paramContext) {}
  
  public MMJSResponse call()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = ((ClipboardManager)val$context.getSystemService("clipboard")).getText();
        if (localObject1 == null) {
          break label43;
        }
        localObject1 = localObject1.toString();
        if (localObject1 != null)
        {
          localObject1 = MMJSResponse.responseWithSuccess((String)localObject1);
          return (MMJSResponse)localObject1;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      return null;
      label43:
      Object localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMPasteboard.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */