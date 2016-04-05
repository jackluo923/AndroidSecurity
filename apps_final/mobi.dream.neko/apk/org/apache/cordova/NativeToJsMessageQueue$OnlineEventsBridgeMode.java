package org.apache.cordova;

import android.app.Activity;
import java.util.LinkedList;
import org.apache.cordova.api.CordovaInterface;

class NativeToJsMessageQueue$OnlineEventsBridgeMode
  extends NativeToJsMessageQueue.BridgeMode
{
  boolean online = false;
  final Runnable runnable = new Runnable()
  {
    public void run()
    {
      NativeToJsMessageQueue.OnlineEventsBridgeMode localOnlineEventsBridgeMode;
      if (!NativeToJsMessageQueue.access$600(this$0).isEmpty())
      {
        localOnlineEventsBridgeMode = NativeToJsMessageQueue.OnlineEventsBridgeMode.this;
        if (online) {
          break label59;
        }
      }
      label59:
      for (boolean bool = true;; bool = false)
      {
        online = bool;
        NativeToJsMessageQueue.access$400(this$0).setNetworkAvailable(online);
        return;
      }
    }
  };
  
  NativeToJsMessageQueue$OnlineEventsBridgeMode(NativeToJsMessageQueue paramNativeToJsMessageQueue)
  {
    super(paramNativeToJsMessageQueue, null);
    NativeToJsMessageQueue.access$400(paramNativeToJsMessageQueue).setNetworkAvailable(true);
  }
  
  void notifyOfFlush(boolean paramBoolean) {}
  
  void onNativeToJsMessageAvailable()
  {
    NativeToJsMessageQueue.access$500(this$0).getActivity().runOnUiThread(runnable);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.NativeToJsMessageQueue.OnlineEventsBridgeMode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */