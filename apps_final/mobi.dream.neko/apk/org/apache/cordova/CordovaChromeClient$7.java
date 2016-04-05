package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import android.webkit.JsResult;

class CordovaChromeClient$7
  implements DialogInterface.OnKeyListener
{
  CordovaChromeClient$7(CordovaChromeClient paramCordovaChromeClient, JsResult paramJsResult) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      val$result.cancel();
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaChromeClient.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */