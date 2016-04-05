package com.millennialmedia.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.GeolocationPermissions.Callback;

class MMWebView$MyWebChromeClient$2
  implements DialogInterface.OnClickListener
{
  MMWebView$MyWebChromeClient$2(MMWebView.MyWebChromeClient paramMyWebChromeClient, GeolocationPermissions.Callback paramCallback, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MMWebView.MyWebChromeClient.access$300(this$1, true);
    val$callback.invoke(val$origin, true, true);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.MyWebChromeClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */