package org.apache.cordova.api;

import org.apache.cordova.CordovaWebView;
import org.json.JSONArray;
import org.json.JSONObject;

public class CallbackContext
{
  private static final String LOG_TAG = "CordovaPlugin";
  private String callbackId;
  private int changingThreads;
  private boolean finished;
  private CordovaWebView webView;
  
  public CallbackContext(String paramString, CordovaWebView paramCordovaWebView)
  {
    callbackId = paramString;
    webView = paramCordovaWebView;
  }
  
  public void error(int paramInt)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramInt));
  }
  
  public void error(String paramString)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramString));
  }
  
  public void error(JSONObject paramJSONObject)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramJSONObject));
  }
  
  public String getCallbackId()
  {
    return callbackId;
  }
  
  public boolean isChangingThreads()
  {
    return changingThreads > 0;
  }
  
  public boolean isFinished()
  {
    return finished;
  }
  
  /* Error */
  public void sendPluginResult(PluginResult paramPluginResult)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	org/apache/cordova/api/CallbackContext:finished	Z
    //   6: ifeq +46 -> 52
    //   9: ldc 8
    //   11: new 61	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   18: ldc 64
    //   20: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_0
    //   24: getfield 22	org/apache/cordova/api/CallbackContext:callbackId	Ljava/lang/String;
    //   27: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc 70
    //   32: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_1
    //   36: invokevirtual 73	org/apache/cordova/api/PluginResult:getMessage	()Ljava/lang/String;
    //   39: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 82	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   48: pop
    //   49: aload_0
    //   50: monitorexit
    //   51: return
    //   52: aload_1
    //   53: invokevirtual 85	org/apache/cordova/api/PluginResult:getKeepCallback	()Z
    //   56: ifne +25 -> 81
    //   59: iconst_1
    //   60: istore_2
    //   61: aload_0
    //   62: iload_2
    //   63: putfield 59	org/apache/cordova/api/CallbackContext:finished	Z
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_0
    //   69: getfield 24	org/apache/cordova/api/CallbackContext:webView	Lorg/apache/cordova/CordovaWebView;
    //   72: aload_1
    //   73: aload_0
    //   74: getfield 22	org/apache/cordova/api/CallbackContext:callbackId	Ljava/lang/String;
    //   77: invokevirtual 90	org/apache/cordova/CordovaWebView:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    //   80: return
    //   81: iconst_0
    //   82: istore_2
    //   83: goto -22 -> 61
    //   86: astore_1
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_1
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	CallbackContext
    //   0	91	1	paramPluginResult	PluginResult
    //   60	23	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	51	86	finally
    //   52	59	86	finally
    //   61	68	86	finally
    //   87	89	86	finally
  }
  
  public void success()
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK));
  }
  
  public void success(int paramInt)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramInt));
  }
  
  public void success(String paramString)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramString));
  }
  
  public void success(JSONArray paramJSONArray)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramJSONArray));
  }
  
  public void success(JSONObject paramJSONObject)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramJSONObject));
  }
  
  public void success(byte[] paramArrayOfByte)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramArrayOfByte));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.api.CallbackContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */