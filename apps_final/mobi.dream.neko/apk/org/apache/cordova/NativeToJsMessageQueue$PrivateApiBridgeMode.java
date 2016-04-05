package org.apache.cordova;

import android.os.Message;
import android.util.Log;
import android.webkit.WebView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

class NativeToJsMessageQueue$PrivateApiBridgeMode
  extends NativeToJsMessageQueue.BridgeMode
{
  private static final int EXECUTE_JS = 194;
  boolean initFailed;
  Method sendMessageMethod;
  Object webViewCore;
  
  private NativeToJsMessageQueue$PrivateApiBridgeMode(NativeToJsMessageQueue paramNativeToJsMessageQueue)
  {
    super(paramNativeToJsMessageQueue, null);
  }
  
  private void initReflection()
  {
    Object localObject2 = NativeToJsMessageQueue.access$400(this$0);
    Object localObject3 = WebView.class;
    Object localObject1 = localObject2;
    for (;;)
    {
      try
      {
        Object localObject4 = WebView.class.getDeclaredField("mProvider");
        localObject1 = localObject2;
        ((Field)localObject4).setAccessible(true);
        localObject1 = localObject2;
        localObject2 = ((Field)localObject4).get(NativeToJsMessageQueue.access$400(this$0));
        localObject1 = localObject2;
        localObject4 = localObject2.getClass();
        localObject3 = localObject4;
        localObject1 = localObject2;
      }
      catch (Throwable localThrowable2)
      {
        continue;
      }
      try
      {
        localObject2 = ((Class)localObject3).getDeclaredField("mWebViewCore");
        ((Field)localObject2).setAccessible(true);
        webViewCore = ((Field)localObject2).get(localObject1);
        if (webViewCore != null)
        {
          sendMessageMethod = webViewCore.getClass().getDeclaredMethod("sendMessage", new Class[] { Message.class });
          sendMessageMethod.setAccessible(true);
        }
        return;
      }
      catch (Throwable localThrowable1)
      {
        initFailed = true;
        Log.e("JsMessageQueue", "PrivateApiBridgeMode failed to find the expected APIs.", localThrowable1);
        return;
      }
    }
  }
  
  void onNativeToJsMessageAvailable()
  {
    if ((sendMessageMethod == null) && (!initFailed)) {
      initReflection();
    }
    Message localMessage;
    if (sendMessageMethod != null) {
      localMessage = Message.obtain(null, 194, NativeToJsMessageQueue.access$300(this$0));
    }
    try
    {
      sendMessageMethod.invoke(webViewCore, new Object[] { localMessage });
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.e("JsMessageQueue", "Reflection message bridge failed.", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.NativeToJsMessageQueue.PrivateApiBridgeMode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */