package org.apache.cordova;

import java.util.LinkedList;

class NativeToJsMessageQueue$OnlineEventsBridgeMode$1
  implements Runnable
{
  NativeToJsMessageQueue$OnlineEventsBridgeMode$1(NativeToJsMessageQueue.OnlineEventsBridgeMode paramOnlineEventsBridgeMode) {}
  
  public void run()
  {
    NativeToJsMessageQueue.OnlineEventsBridgeMode localOnlineEventsBridgeMode;
    if (!NativeToJsMessageQueue.access$600(this$1.this$0).isEmpty())
    {
      localOnlineEventsBridgeMode = this$1;
      if (this$1.online) {
        break label59;
      }
    }
    label59:
    for (boolean bool = true;; bool = false)
    {
      online = bool;
      NativeToJsMessageQueue.access$400(this$1.this$0).setNetworkAvailable(this$1.online);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.NativeToJsMessageQueue.OnlineEventsBridgeMode.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */