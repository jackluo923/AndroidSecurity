package com.phonegap.plugins.barcodescanner;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BarcodeScannerPlugin
  extends CordovaPlugin
{
  private static final String CANCELLED = "cancelled";
  private static final String DATA = "data";
  private static final String EMAIL_TYPE = "EMAIL_TYPE";
  private static final String ENCODE = "encode";
  private static final String ENCODE_DATA = "ENCODE_DATA";
  private static final String ENCODE_INTENT = "com.phonegap.plugins.barcodescanner.ENCODE";
  private static final String ENCODE_TYPE = "ENCODE_TYPE";
  private static final String FORMAT = "format";
  private static final String LOG_TAG = "BarcodeScanner";
  private static final String PHONE_TYPE = "PHONE_TYPE";
  public static final int REQUEST_CODE = 195543262;
  private static final String SCAN = "scan";
  private static final String SCAN_INTENT = "com.phonegap.plugins.barcodescanner.SCAN";
  private static final String SMS_TYPE = "SMS_TYPE";
  private static final String TEXT = "text";
  private static final String TEXT_TYPE = "TEXT_TYPE";
  private static final String TYPE = "type";
  private CallbackContext callbackContext;
  
  public void encode(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.phonegap.plugins.barcodescanner.ENCODE");
    localIntent.putExtra("ENCODE_TYPE", paramString1);
    localIntent.putExtra("ENCODE_DATA", paramString2);
    cordova.getActivity().startActivity(localIntent);
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
  {
    callbackContext = paramCallbackContext;
    if (paramString.equals("encode"))
    {
      paramString = paramJSONArray.optJSONObject(0);
      if (paramString != null)
      {
        paramJSONArray = paramString.optString("type");
        String str = paramString.optString("data");
        paramString = paramJSONArray;
        if (paramJSONArray == null) {
          paramString = "TEXT_TYPE";
        }
        if (str == null)
        {
          paramCallbackContext.error("User did not specify data to encode");
          return true;
        }
        encode(paramString, str);
        return true;
      }
      paramCallbackContext.error("User did not specify data to encode");
      return true;
    }
    if (paramString.equals("scan"))
    {
      scan();
      return true;
    }
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    JSONObject localJSONObject;
    if (paramInt1 == 195543262)
    {
      if (paramInt2 == -1) {
        localJSONObject = new JSONObject();
      }
    }
    else {
      try
      {
        localJSONObject.put("text", paramIntent.getStringExtra("SCAN_RESULT"));
        localJSONObject.put("format", paramIntent.getStringExtra("SCAN_RESULT_FORMAT"));
        localJSONObject.put("cancelled", false);
        callbackContext.success(localJSONObject);
        return;
      }
      catch (JSONException paramIntent)
      {
        for (;;)
        {
          Log.d("BarcodeScanner", "This should never happen");
        }
      }
    }
    if (paramInt2 == 0)
    {
      paramIntent = new JSONObject();
      try
      {
        paramIntent.put("text", "");
        paramIntent.put("format", "");
        paramIntent.put("cancelled", true);
        callbackContext.success(paramIntent);
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          Log.d("BarcodeScanner", "This should never happen");
        }
      }
    }
    callbackContext.error("Unexpected error");
  }
  
  public void scan()
  {
    Intent localIntent = new Intent("com.phonegap.plugins.barcodescanner.SCAN");
    localIntent.addCategory("android.intent.category.DEFAULT");
    cordova.startActivityForResult(this, localIntent, 195543262);
  }
}

/* Location:
 * Qualified Name:     com.phonegap.plugins.barcodescanner.BarcodeScannerPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */