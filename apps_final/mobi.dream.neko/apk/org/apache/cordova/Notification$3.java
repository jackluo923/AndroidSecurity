package org.apache.cordova;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class Notification$3
  implements Runnable
{
  Notification$3(Notification paramNotification, CordovaInterface paramCordovaInterface, String paramString1, String paramString2, EditText paramEditText, JSONArray paramJSONArray, String paramString3, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(val$cordova.getActivity());
    localBuilder.setMessage(val$message);
    localBuilder.setTitle(val$title);
    localBuilder.setCancelable(true);
    localBuilder.setView(val$promptInput);
    final JSONObject localJSONObject = new JSONObject();
    if (val$buttonLabels.length() > 0) {}
    try
    {
      localBuilder.setNegativeButton(val$buttonLabels.getString(0), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          for (;;)
          {
            try
            {
              localJSONObject.put("buttonIndex", 1);
              JSONObject localJSONObject = localJSONObject;
              if (val$promptInput.getText().toString().trim().length() != 0) {
                continue;
              }
              paramAnonymousDialogInterface = val$defaultText;
              localJSONObject.put("input1", paramAnonymousDialogInterface);
            }
            catch (JSONException paramAnonymousDialogInterface)
            {
              paramAnonymousDialogInterface.printStackTrace();
              continue;
            }
            val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
            return;
            paramAnonymousDialogInterface = val$promptInput.getText();
          }
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
            for (;;)
            {
              try
              {
                localJSONObject.put("buttonIndex", 2);
                JSONObject localJSONObject = localJSONObject;
                if (val$promptInput.getText().toString().trim().length() != 0) {
                  continue;
                }
                paramAnonymousDialogInterface = val$defaultText;
                localJSONObject.put("input1", paramAnonymousDialogInterface);
              }
              catch (JSONException paramAnonymousDialogInterface)
              {
                paramAnonymousDialogInterface.printStackTrace();
                continue;
              }
              val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
              return;
              paramAnonymousDialogInterface = val$promptInput.getText();
            }
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
              for (;;)
              {
                try
                {
                  localJSONObject.put("buttonIndex", 3);
                  JSONObject localJSONObject = localJSONObject;
                  if (val$promptInput.getText().toString().trim().length() != 0) {
                    continue;
                  }
                  paramAnonymousDialogInterface = val$defaultText;
                  localJSONObject.put("input1", paramAnonymousDialogInterface);
                }
                catch (JSONException paramAnonymousDialogInterface)
                {
                  paramAnonymousDialogInterface.printStackTrace();
                  continue;
                }
                val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                return;
                paramAnonymousDialogInterface = val$promptInput.getText();
              }
            }
          });
          localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymousDialogInterface)
            {
              paramAnonymousDialogInterface.dismiss();
              for (;;)
              {
                try
                {
                  localJSONObject.put("buttonIndex", 0);
                  JSONObject localJSONObject = localJSONObject;
                  if (val$promptInput.getText().toString().trim().length() != 0) {
                    continue;
                  }
                  paramAnonymousDialogInterface = val$defaultText;
                  localJSONObject.put("input1", paramAnonymousDialogInterface);
                }
                catch (JSONException paramAnonymousDialogInterface)
                {
                  paramAnonymousDialogInterface.printStackTrace();
                  continue;
                }
                val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                return;
                paramAnonymousDialogInterface = val$promptInput.getText();
              }
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
 * Qualified Name:     org.apache.cordova.Notification.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */