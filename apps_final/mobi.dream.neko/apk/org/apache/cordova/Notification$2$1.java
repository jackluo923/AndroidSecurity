package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class Notification$2$1
  implements DialogInterface.OnClickListener
{
  Notification$2$1(Notification.2 param2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this$1.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 1));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */