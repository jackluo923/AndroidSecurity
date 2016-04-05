package org.apache.cordova;

import android.content.Intent;

class CordovaWebView$ActivityResult
{
  Intent incoming;
  int request;
  int result;
  
  public CordovaWebView$ActivityResult(CordovaWebView paramCordovaWebView, int paramInt1, int paramInt2, Intent paramIntent)
  {
    request = paramInt1;
    result = paramInt2;
    incoming = paramIntent;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebView.ActivityResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */