package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.Callable;

class BridgeMMNotification$1
  implements Callable<MMJSResponse>
{
  BridgeMMNotification$1(BridgeMMNotification paramBridgeMMNotification, HashMap paramHashMap) {}
  
  public MMJSResponse call()
  {
    Object localObject1 = (MMWebView)this$0.mmWebViewRef.get();
    if (localObject1 != null)
    {
      Object localObject2 = ((MMWebView)localObject1).getActivity();
      localObject1 = val$arguments;
      if (localObject2 != null)
      {
        if (!((Activity)localObject2).isFinishing())
        {
          localObject2 = new AlertDialog.Builder((Context)localObject2).create();
          if (((HashMap)localObject1).containsKey("title")) {
            ((AlertDialog)localObject2).setTitle((CharSequence)((HashMap)localObject1).get("title"));
          }
          if (((HashMap)localObject1).containsKey("message")) {
            ((AlertDialog)localObject2).setMessage((CharSequence)((HashMap)localObject1).get("message"));
          }
          if (((HashMap)localObject1).containsKey("cancelButton")) {
            ((AlertDialog)localObject2).setButton(-2, (CharSequence)((HashMap)localObject1).get("cancelButton"), this$0);
          }
          if (((HashMap)localObject1).containsKey("buttons"))
          {
            localObject1 = ((String)((HashMap)localObject1).get("buttons")).split(",");
            if (localObject1.length > 0) {
              ((AlertDialog)localObject2).setButton(-3, localObject1[0], this$0);
            }
            if (localObject1.length > 1) {
              ((AlertDialog)localObject2).setButton(-1, localObject1[1], this$0);
            }
          }
          ((AlertDialog)localObject2).show();
        }
        localObject1 = new MMJSResponse();
        result = 1;
        response = Integer.valueOf(BridgeMMNotification.access$000(this$0));
        return (MMJSResponse)localObject1;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMNotification.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */