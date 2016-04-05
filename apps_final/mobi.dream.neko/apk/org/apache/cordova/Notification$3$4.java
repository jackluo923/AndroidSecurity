package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.widget.EditText;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONException;
import org.json.JSONObject;

class Notification$3$4
  implements DialogInterface.OnCancelListener
{
  Notification$3$4(Notification.3 param3, JSONObject paramJSONObject) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    for (;;)
    {
      try
      {
        val$result.put("buttonIndex", 0);
        JSONObject localJSONObject = val$result;
        if (this$1.val$promptInput.getText().toString().trim().length() != 0) {
          continue;
        }
        paramDialogInterface = this$1.val$defaultText;
        localJSONObject.put("input1", paramDialogInterface);
      }
      catch (JSONException paramDialogInterface)
      {
        paramDialogInterface.printStackTrace();
        continue;
      }
      this$1.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, val$result));
      return;
      paramDialogInterface = this$1.val$promptInput.getText();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification.3.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */