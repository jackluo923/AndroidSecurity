package org.apache.cordova;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import org.apache.cordova.api.CordovaInterface;

class Notification$4
  implements Runnable
{
  Notification$4(Notification paramNotification, CordovaInterface paramCordovaInterface, String paramString1, String paramString2) {}
  
  public void run()
  {
    this$0.spinnerDialog = ProgressDialog.show(val$cordova.getActivity(), val$title, val$message, true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        this$0.spinnerDialog = null;
      }
    });
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */