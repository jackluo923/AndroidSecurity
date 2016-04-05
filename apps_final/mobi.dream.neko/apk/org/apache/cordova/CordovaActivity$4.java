package org.apache.cordova;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class CordovaActivity$4
  implements Runnable
{
  CordovaActivity$4(CordovaActivity paramCordovaActivity1, CordovaActivity paramCordovaActivity2, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {}
  
  public void run()
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(val$me);
      localBuilder.setMessage(val$message);
      localBuilder.setTitle(val$title);
      localBuilder.setCancelable(false);
      localBuilder.setPositiveButton(val$button, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          if (val$exit) {
            val$me.endActivity();
          }
        }
      });
      localBuilder.create();
      localBuilder.show();
      return;
    }
    catch (Exception localException)
    {
      this$0.finish();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */