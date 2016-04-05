package org.apache.cordova;

import java.util.Iterator;
import java.util.List;
import java.util.TimerTask;
import org.apache.cordova.api.CallbackContext;

class CordovaLocationListener$LocationTimeoutTask
  extends TimerTask
{
  private CallbackContext callbackContext = null;
  private CordovaLocationListener listener = null;
  
  public CordovaLocationListener$LocationTimeoutTask(CordovaLocationListener paramCordovaLocationListener1, CallbackContext paramCallbackContext, CordovaLocationListener paramCordovaLocationListener2)
  {
    callbackContext = paramCallbackContext;
    listener = paramCordovaLocationListener2;
  }
  
  public void run()
  {
    Iterator localIterator = CordovaLocationListener.access$000(listener).iterator();
    while (localIterator.hasNext())
    {
      CallbackContext localCallbackContext = (CallbackContext)localIterator.next();
      if (callbackContext == localCallbackContext) {
        CordovaLocationListener.access$000(listener).remove(localCallbackContext);
      }
    }
    if (listener.size() == 0) {
      CordovaLocationListener.access$100(listener);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaLocationListener.LocationTimeoutTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */