package org.apache.cordova;

import java.util.concurrent.ExecutorService;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONException;

public class Echo
  extends CordovaPlugin
{
  public boolean execute(final String paramString, CordovaArgs paramCordovaArgs, final CallbackContext paramCallbackContext)
    throws JSONException
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if ("echo".equals(paramString))
    {
      if (paramCordovaArgs.isNull(0)) {}
      for (paramString = (String)localObject1;; paramString = paramCordovaArgs.getString(0))
      {
        paramCallbackContext.success(paramString);
        return true;
      }
    }
    if ("echoAsync".equals(paramString))
    {
      if (paramCordovaArgs.isNull(0)) {}
      for (paramString = (String)localObject2;; paramString = paramCordovaArgs.getString(0))
      {
        cordova.getThreadPool().execute(new Runnable()
        {
          public void run()
          {
            paramCallbackContext.success(paramString);
          }
        });
        return true;
      }
    }
    if ("echoArrayBuffer".equals(paramString))
    {
      paramCallbackContext.success(paramCordovaArgs.getArrayBuffer(0));
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Echo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */