package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class Notification$2$4
  implements DialogInterface.OnCancelListener
{
  Notification$2$4(Notification.2 param2) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    this$1.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification.2.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */