package org.apache.cordova;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import java.util.TimeZone;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.LOG;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Device
  extends CordovaPlugin
{
  public static final String TAG = "Device";
  public static String cordovaVersion = "2.9.1-dev";
  public static String platform = "Android";
  public static String uuid;
  BroadcastReceiver telephonyReceiver = null;
  
  private void initTelephonyReceiver()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PHONE_STATE");
    telephonyReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if ((paramAnonymousIntent != null) && (paramAnonymousIntent.getAction().equals("android.intent.action.PHONE_STATE")) && (paramAnonymousIntent.hasExtra("state")))
        {
          paramAnonymousContext = paramAnonymousIntent.getStringExtra("state");
          if (!paramAnonymousContext.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
            break label64;
          }
          LOG.i("Device", "Telephone RINGING");
          webView.postMessage("telephone", "ringing");
        }
        label64:
        do
        {
          return;
          if (paramAnonymousContext.equals(TelephonyManager.EXTRA_STATE_OFFHOOK))
          {
            LOG.i("Device", "Telephone OFFHOOK");
            webView.postMessage("telephone", "offhook");
            return;
          }
        } while (!paramAnonymousContext.equals(TelephonyManager.EXTRA_STATE_IDLE));
        LOG.i("Device", "Telephone IDLE");
        webView.postMessage("telephone", "idle");
      }
    };
    cordova.getActivity().registerReceiver(telephonyReceiver, localIntentFilter);
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equals("getDeviceInfo"))
    {
      paramString = new JSONObject();
      paramString.put("uuid", uuid);
      paramString.put("version", getOSVersion());
      paramString.put("platform", platform);
      paramString.put("cordova", cordovaVersion);
      paramString.put("model", getModel());
      paramCallbackContext.success(paramString);
      return true;
    }
    return false;
  }
  
  public String getCordovaVersion()
  {
    return cordovaVersion;
  }
  
  public String getModel()
  {
    return Build.MODEL;
  }
  
  public String getOSVersion()
  {
    return Build.VERSION.RELEASE;
  }
  
  public String getPlatform()
  {
    return platform;
  }
  
  public String getProductName()
  {
    return Build.PRODUCT;
  }
  
  public String getSDKVersion()
  {
    return Build.VERSION.SDK;
  }
  
  public String getTimeZoneID()
  {
    return TimeZone.getDefault().getID();
  }
  
  public String getUuid()
  {
    return Settings.Secure.getString(cordova.getActivity().getContentResolver(), "android_id");
  }
  
  public void initialize(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super.initialize(paramCordovaInterface, paramCordovaWebView);
    uuid = getUuid();
    initTelephonyReceiver();
  }
  
  public void onDestroy()
  {
    cordova.getActivity().unregisterReceiver(telephonyReceiver);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Device
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */