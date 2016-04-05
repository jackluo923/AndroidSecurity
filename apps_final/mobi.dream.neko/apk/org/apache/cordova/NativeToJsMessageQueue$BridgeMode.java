package org.apache.cordova;

abstract class NativeToJsMessageQueue$BridgeMode
{
  private NativeToJsMessageQueue$BridgeMode(NativeToJsMessageQueue paramNativeToJsMessageQueue) {}
  
  void notifyOfFlush(boolean paramBoolean) {}
  
  abstract void onNativeToJsMessageAvailable();
}

/* Location:
 * Qualified Name:     org.apache.cordova.NativeToJsMessageQueue.BridgeMode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */