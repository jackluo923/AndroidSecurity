package org.apache.cordova;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;

class Notification$2
  implements Runnable
{
  Notification$2(Notification paramNotification, CordovaInterface paramCordovaInterface, String paramString1, String paramString2, JSONArray paramJSONArray, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(val$cordova.getActivity());
    localBuilder.setMessage(val$message);
    localBuilder.setTitle(val$title);
    localBuilder.setCancelable(true);
    if (val$buttonLabels.length() > 0) {}
    try
    {
      localBuilder.setNegativeButton(val$buttonLabels.getString(0), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 1));
        }
      });
      if (val$buttonLabels.length() > 1) {}
      try
      {
        localBuilder.setNeutralButton(val$buttonLabels.getString(1), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
            val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 2));
          }
        });
        if (val$buttonLabels.length() > 2) {}
        try
        {
          localBuilder.setPositiveButton(val$buttonLabels.getString(2), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface.dismiss();
              val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 3));
            }
          });
          localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymousDialogInterface)
            {
              paramAnonymousDialogInterface.dismiss();
              val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
            }
          });
          localBuilder.create();
          localBuilder.show();
          return;
        }
        catch (JSONException localJSONException1)
        {
          for (;;) {}
        }
      }
      catch (JSONException localJSONException2)
      {
        for (;;) {}
      }
    }
    catch (JSONException localJSONException3)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */