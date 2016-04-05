package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class Notification$2$3
  implements DialogInterface.OnClickListener
{
  Notification$2$3(Notification.2 param2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this$1.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 3));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification.2.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */