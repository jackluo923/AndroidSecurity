package org.apache.cordova;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BatteryListener
  extends CordovaPlugin
{
  private static final String LOG_TAG = "BatteryManager";
  private CallbackContext batteryCallbackContext = null;
  BroadcastReceiver receiver = null;
  
  private JSONObject getBatteryInfo(Intent paramIntent)
  {
    boolean bool = false;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("level", paramIntent.getIntExtra("level", 0));
      if (paramIntent.getIntExtra("plugged", -1) > 0) {
        bool = true;
      }
      localJSONObject.put("isPlugged", bool);
      return localJSONObject;
    }
    catch (JSONException paramIntent)
    {
      Log.e("BatteryManager", paramIntent.getMessage(), paramIntent);
    }
    return localJSONObject;
  }
  
  private void removeBatteryListener()
  {
    if (receiver != null) {}
    try
    {
      cordova.getActivity().unregisterReceiver(receiver);
      receiver = null;
      return;
    }
    catch (Exception localException)
    {
      Log.e("BatteryManager", "Error unregistering battery receiver: " + localException.getMessage(), localException);
    }
  }
  
  private void sendUpdate(JSONObject paramJSONObject, boolean paramBoolean)
  {
    if (batteryCallbackContext != null)
    {
      paramJSONObject = new PluginResult(PluginResult.Status.OK, paramJSONObject);
      paramJSONObject.setKeepCallback(paramBoolean);
      batteryCallbackContext.sendPluginResult(paramJSONObject);
    }
  }
  
  private void updateBatteryInfo(Intent paramIntent)
  {
    sendUpdate(getBatteryInfo(paramIntent), true);
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
  {
    if (paramString.equals("start"))
    {
      if (batteryCallbackContext != null)
      {
        paramCallbackContext.error("Battery listener already running.");
        return true;
      }
      batteryCallbackContext = paramCallbackContext;
      paramString = new IntentFilter();
      paramString.addAction("android.intent.action.BATTERY_CHANGED");
      if (receiver == null)
      {
        receiver = new BroadcastReceiver()
        {
          public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
          {
            BatteryListener.this.updateBatteryInfo(paramAnonymousIntent);
          }
        };
        cordova.getActivity().registerReceiver(receiver, paramString);
      }
      paramString = new PluginResult(PluginResult.Status.NO_RESULT);
      paramString.setKeepCallback(true);
      paramCallbackContext.sendPluginResult(paramString);
      return true;
    }
    if (paramString.equals("stop"))
    {
      removeBatteryListener();
      sendUpdate(new JSONObject(), false);
      batteryCallbackContext = null;
      paramCallbackContext.success();
      return true;
    }
    return false;
  }
  
  public void onDestroy()
  {
    removeBatteryListener();
  }
  
  public void onReset()
  {
    removeBatteryListener();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.BatteryListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */