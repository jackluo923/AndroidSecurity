package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class MMJSObject
{
  protected WeakReference<Context> contextRef;
  protected WeakReference<MMWebView> mmWebViewRef;
  
  long getAdImplId(String paramString)
  {
    if (paramString != null) {
      return Float.parseFloat(paramString);
    }
    return -4L;
  }
  
  AdViewOverlayActivity getBaseActivity()
  {
    Object localObject = (MMWebView)mmWebViewRef.get();
    if (localObject != null)
    {
      localObject = ((MMWebView)localObject).getActivity();
      if ((localObject instanceof MMActivity))
      {
        localObject = ((MMActivity)localObject).getWrappedActivity();
        if ((localObject instanceof AdViewOverlayActivity)) {
          return (AdViewOverlayActivity)localObject;
        }
      }
    }
    return null;
  }
  
  MMJSResponse runOnUiThreadFuture(Callable<MMJSResponse> paramCallable)
  {
    paramCallable = new FutureTask(paramCallable);
    MMSDK.runOnUiThread(paramCallable);
    try
    {
      paramCallable = (MMJSResponse)paramCallable.get();
      return paramCallable;
    }
    catch (InterruptedException paramCallable)
    {
      paramCallable.printStackTrace();
      return null;
    }
    catch (ExecutionException paramCallable)
    {
      for (;;)
      {
        paramCallable.printStackTrace();
      }
    }
  }
  
  void setContext(Context paramContext)
  {
    contextRef = new WeakReference(paramContext);
  }
  
  void setMMWebView(MMWebView paramMMWebView)
  {
    mmWebViewRef = new WeakReference(paramMMWebView);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMJSObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */