package com.millennialmedia.android;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

class MMCommand
  implements Runnable
{
  private Map<String, String> arguments;
  private String callback;
  private Class cls;
  private Method method;
  private WeakReference<MMWebView> webViewRef;
  
  MMCommand(MMWebView paramMMWebView, String paramString)
  {
    webViewRef = new WeakReference(paramMMWebView);
    for (;;)
    {
      int i;
      try
      {
        Object localObject = Uri.parse(paramString).getHost().split("\\.");
        if (localObject.length < 2) {
          return;
        }
        paramMMWebView = localObject[(localObject.length - 2)];
        localObject = localObject[(localObject.length - 1)];
        arguments = new HashMap();
        String[] arrayOfString1 = paramString.substring(paramString.indexOf('?') + 1).split("&");
        int j = arrayOfString1.length;
        i = 0;
        if (i < j)
        {
          String[] arrayOfString2 = arrayOfString1[i].split("=");
          if (arrayOfString2.length >= 2)
          {
            arguments.put(Uri.decode(arrayOfString2[0]), Uri.decode(arrayOfString2[1]));
            if (arrayOfString2[0].equalsIgnoreCase("callback")) {
              callback = Uri.decode(arrayOfString2[1]);
            }
          }
        }
        else
        {
          cls = Class.forName("com.millennialmedia.android.Bridge" + paramMMWebView);
          method = cls.getMethod((String)localObject, new Class[] { arguments.getClass() });
          return;
        }
      }
      catch (Exception paramMMWebView)
      {
        MMSDK.Log.e("Exception while executing javascript call %s %s", new Object[] { paramString, paramMMWebView.getMessage() });
        paramMMWebView.printStackTrace();
        return;
      }
      i += 1;
    }
  }
  
  private String getBridgeStrippedClassName()
  {
    return cls.getSimpleName().replaceFirst("Bridge", "");
  }
  
  boolean isResizeCommand()
  {
    if (method != null) {
      return "resize".equals(method.getName());
    }
    return false;
  }
  
  public void run()
  {
    if ((cls != null) && (method != null)) {
      try
      {
        Object localObject1 = (MMWebView)webViewRef.get();
        if (localObject1 == null) {
          return;
        }
        Object localObject4 = (MMJSObject)cls.newInstance();
        ((MMJSObject)localObject4).setContext(((MMWebView)localObject1).getContext());
        ((MMJSObject)localObject4).setMMWebView((MMWebView)localObject1);
        ((MMWebView)localObject1).updateArgumentsWithSettings(arguments);
        try
        {
          localObject1 = (MMJSResponse)method.invoke(localObject4, new Object[] { arguments });
          if ((callback == null) || (callback.length() <= 0)) {
            return;
          }
          MMWebView localMMWebView = (MMWebView)webViewRef.get();
          if (localMMWebView == null) {
            return;
          }
          localObject4 = localObject1;
          if (localObject1 == null) {
            localObject4 = MMJSResponse.responseWithError(method.getName());
          }
          if (methodName == null) {
            methodName = method.getName();
          }
          if (className == null) {
            className = getBridgeStrippedClassName();
          }
          localObject1 = String.format("javascript:%s(%s);", new Object[] { callback, ((MMJSResponse)localObject4).toJSONString() });
          MMSDK.Log.v("Executing JS bridge callback: " + (String)localObject1);
          MMSDK.runOnUiThread(new MMCommand.1(this, localMMWebView, (String)localObject1));
          return;
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          for (;;)
          {
            Object localObject2 = localInvocationTargetException.getCause();
            if ((localObject2 != null) && (localObject2.getClass() == ActivityNotFoundException.class)) {
              localObject2 = MMJSResponse.responseWithError("Activity not found");
            } else {
              localObject2 = MMJSResponse.responseWithError();
            }
          }
        }
        if (TextUtils.isEmpty(callback)) {
          return;
        }
      }
      catch (Exception localException)
      {
        MMSDK.Log.e("Exception while executing javascript call %s %s", new Object[] { method.toString(), localException.getMessage() });
        localException.printStackTrace();
        return;
      }
    }
    Object localObject3 = MMJSResponse.responseWithError("No class or method found");
    localObject3 = String.format("javascript:%s(%s);", new Object[] { callback, ((MMJSResponse)localObject3).toJSONString() });
    MMSDK.Log.v("Executing JS bridge failed callback: " + (String)localObject3);
    MMSDK.runOnUiThread(new MMCommand.2(this, (MMWebView)webViewRef.get(), (String)localObject3));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMCommand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */