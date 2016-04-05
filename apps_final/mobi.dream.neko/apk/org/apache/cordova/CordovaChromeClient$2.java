package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsResult;

class CordovaChromeClient$2
  implements DialogInterface.OnCancelListener
{
  CordovaChromeClient$2(CordovaChromeClient paramCordovaChromeClient, JsResult paramJsResult) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    val$result.cancel();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaChromeClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */