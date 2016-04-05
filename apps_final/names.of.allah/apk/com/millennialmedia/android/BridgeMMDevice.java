package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class BridgeMMDevice
  extends MMJSObject
{
  static JSONObject getDeviceInfo(Context paramContext)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      JSONArray localJSONArray;
      return localJSONObject;
    }
    catch (JSONException paramContext)
    {
      try
      {
        localJSONObject.put("sdkVersion", "5.0.1-13.05.14.a");
        localJSONObject.put("mmisdk", "5.0.1-13.05.14.a");
        localJSONObject.put("connection", MMSDK.getConnectionType(paramContext));
        localJSONObject.put("platform", "Android");
        if (Build.VERSION.RELEASE != null) {
          localJSONObject.put("version", Build.VERSION.RELEASE);
        }
        if (Build.MODEL != null) {
          localJSONObject.put("device", Build.MODEL);
        }
        localJSONObject.put("mmdid", MMSDK.getMMdid(paramContext));
        paramContext = paramContext.getResources().getDisplayMetrics();
        localJSONObject.put("density", new Float(density));
        localJSONObject.put("height", new Integer(heightPixels));
        localJSONObject.put("width", new Integer(widthPixels));
        paramContext = Locale.getDefault();
        if (paramContext != null)
        {
          localJSONObject.put("language", paramContext.getLanguage());
          localJSONObject.put("country", paramContext.getCountry());
        }
        paramContext = new JSONObject();
        paramContext.put("name", "MAC-ID");
        paramContext.put("path", "/");
        paramContext.put("value", MMSDK.macId);
        localJSONArray = new JSONArray();
        localJSONArray.put(paramContext);
        localJSONObject.put("cookies", localJSONArray);
        return localJSONObject;
      }
      catch (JSONException paramContext) {}
      paramContext = paramContext;
      return null;
    }
  }
  
  public MMJSResponse call(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    Object localObject = (String)paramHashMap.get("number");
    if ((localContext != null) && (localObject != null))
    {
      MMSDK.Log.d("Dialing Phone: %s", new Object[] { localObject });
      if ((Boolean.parseBoolean((String)paramHashMap.get("dial"))) && (localContext.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0)) {}
      for (localObject = new Intent("android.intent.action.CALL", Uri.parse("tel:" + (String)localObject));; localObject = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + (String)localObject)))
      {
        Utils.IntentUtils.startActivity(localContext, (Intent)localObject);
        MMSDK.Event.intentStarted(localContext, "tel", getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
        return MMJSResponse.responseWithSuccess();
      }
    }
    return null;
  }
  
  public MMJSResponse composeEmail(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    String str1 = (String)paramHashMap.get("recipients");
    String str2 = (String)paramHashMap.get("subject");
    String str3 = (String)paramHashMap.get("message");
    if (localContext != null)
    {
      MMSDK.Log.d("Creating email");
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("plain/text");
      if (str1 != null) {
        localIntent.putExtra("android.intent.extra.EMAIL", str1.split(","));
      }
      if (str2 != null) {
        localIntent.putExtra("android.intent.extra.SUBJECT", str2);
      }
      if (str3 != null) {
        localIntent.putExtra("android.intent.extra.TEXT", str3);
      }
      Utils.IntentUtils.startActivity(localContext, localIntent);
      MMSDK.Event.intentStarted(localContext, "email", getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
      return MMJSResponse.responseWithSuccess();
    }
    return null;
  }
  
  public MMJSResponse composeSms(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    Object localObject = (String)paramHashMap.get("number");
    String str = (String)paramHashMap.get("message");
    if ((localContext != null) && (localObject != null))
    {
      MMSDK.Log.d("Creating sms: %s", new Object[] { localObject });
      localObject = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + (String)localObject));
      if (str != null) {
        ((Intent)localObject).putExtra("sms_body", str);
      }
      Utils.IntentUtils.startActivity(localContext, (Intent)localObject);
      MMSDK.Event.intentStarted(localContext, "sms", getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
      return MMJSResponse.responseWithSuccess("SMS Sent");
    }
    return null;
  }
  
  public MMJSResponse enableHardwareAcceleration(HashMap<String, String> paramHashMap)
  {
    MMSDK.Log.d("hardware accel call" + paramHashMap);
    paramHashMap = (String)paramHashMap.get("enabled");
    MMWebView localMMWebView = (MMWebView)mmWebViewRef.get();
    if ((localMMWebView != null) && (localMMWebView != null))
    {
      if (Boolean.parseBoolean(paramHashMap)) {
        localMMWebView.enableHardwareAcceleration();
      }
      for (;;)
      {
        return MMJSResponse.responseWithSuccess();
        localMMWebView.disableAllAcceleration();
      }
    }
    return null;
  }
  
  public MMJSResponse getAvailableSchemes(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (Context)contextRef.get();
    if (paramHashMap != null)
    {
      HandShake localHandShake = HandShake.sharedHandShake(paramHashMap);
      MMJSResponse localMMJSResponse = new MMJSResponse();
      result = 1;
      response = localHandShake.getSchemesJSONArray(paramHashMap);
      return localMMJSResponse;
    }
    return null;
  }
  
  public MMJSResponse getInfo(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (Context)contextRef.get();
    if (paramHashMap != null)
    {
      MMJSResponse localMMJSResponse = new MMJSResponse();
      result = 1;
      response = getDeviceInfo(paramHashMap);
      return localMMJSResponse;
    }
    return null;
  }
  
  public MMJSResponse getLocation(HashMap<String, String> paramHashMap)
  {
    if (MMRequest.location != null) {}
    for (;;)
    {
      try
      {
        paramHashMap = new JSONObject();
      }
      catch (JSONException paramHashMap)
      {
        MMJSResponse localMMJSResponse;
        paramHashMap = null;
        continue;
      }
      try
      {
        paramHashMap.put("lat", Double.toString(MMRequest.location.getLatitude()));
        paramHashMap.put("long", Double.toString(MMRequest.location.getLongitude()));
        if (MMRequest.location.hasAccuracy())
        {
          paramHashMap.put("ha", Float.toString(MMRequest.location.getAccuracy()));
          paramHashMap.put("va", Float.toString(MMRequest.location.getAccuracy()));
        }
        if (MMRequest.location.hasSpeed()) {
          paramHashMap.put("spd", Float.toString(MMRequest.location.getSpeed()));
        }
        if (MMRequest.location.hasBearing()) {
          paramHashMap.put("brg", Float.toString(MMRequest.location.getBearing()));
        }
        if (MMRequest.location.hasAltitude()) {
          paramHashMap.put("alt", Double.toString(MMRequest.location.getAltitude()));
        }
        paramHashMap.put("tslr", Long.toString(MMRequest.location.getTime()));
      }
      catch (JSONException localJSONException) {}
    }
    localMMJSResponse = new MMJSResponse();
    result = 1;
    response = paramHashMap;
    return localMMJSResponse;
    return MMJSResponse.responseWithError("location object has not been set");
  }
  
  public MMJSResponse getOrientation(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (Context)contextRef.get();
    int i;
    if (paramHashMap != null)
    {
      i = getResourcesgetConfigurationorientation;
      if (i != 0) {
        break label101;
      }
      i = ((WindowManager)paramHashMap.getSystemService("window")).getDefaultDisplay().getOrientation();
    }
    label101:
    for (;;)
    {
      paramHashMap = new MMJSResponse();
      result = 1;
      switch (i)
      {
      }
      for (response = "portrait";; response = "landscape") {
        return paramHashMap;
      }
      return null;
    }
  }
  
  public MMJSResponse isSchemeAvailable(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (String)paramHashMap.get("scheme");
    if (!paramHashMap.contains(":")) {
      paramHashMap = paramHashMap + ":";
    }
    for (;;)
    {
      Context localContext = (Context)contextRef.get();
      if ((paramHashMap != null) && (localContext != null))
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramHashMap));
        if (localContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() > 0) {
          return MMJSResponse.responseWithSuccess(paramHashMap);
        }
      }
      return MMJSResponse.responseWithError(paramHashMap);
    }
  }
  
  public MMJSResponse openAppStore(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    String str1 = (String)paramHashMap.get("appId");
    String str2 = (String)paramHashMap.get("referrer");
    if ((localContext != null) && (str1 != null))
    {
      MMSDK.Log.d("Opening marketplace: %s", new Object[] { str1 });
      Intent localIntent = new Intent("android.intent.action.VIEW");
      if (str2 != null) {
        localIntent.setData(Uri.parse(String.format("market://details?id=%s&referrer=%s", new Object[] { str1, URLEncoder.encode(str2) })));
      }
      for (;;)
      {
        MMSDK.Event.intentStarted(localContext, "market", getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
        Utils.IntentUtils.startActivity(localContext, localIntent);
        return MMJSResponse.responseWithSuccess();
        localIntent.setData(Uri.parse("market://details?id=" + str1));
      }
    }
    return null;
  }
  
  public MMJSResponse openUrl(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    Object localObject = (String)paramHashMap.get("url");
    if ((localContext != null) && (localObject != null))
    {
      MMSDK.Log.d("Opening: %s", new Object[] { localObject });
      localObject = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject));
      if ((((Intent)localObject).getScheme().startsWith("http")) || (((Intent)localObject).getScheme().startsWith("https"))) {
        MMSDK.Event.intentStarted(localContext, "browser", getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
      }
      Utils.IntentUtils.startActivity(localContext, (Intent)localObject);
      return MMJSResponse.responseWithSuccess("Overlay opened");
    }
    return MMJSResponse.responseWithError("URL could not be opened");
  }
  
  public MMJSResponse setMMDID(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (String)paramHashMap.get("mmdid");
    Context localContext = (Context)contextRef.get();
    if (localContext != null)
    {
      HandShake.sharedHandShake(localContext).setMMdid(localContext, paramHashMap);
      return MMJSResponse.responseWithSuccess("MMDID is set");
    }
    return null;
  }
  
  public MMJSResponse showMap(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    String str = (String)paramHashMap.get("location");
    if ((localContext != null) && (str != null))
    {
      MMSDK.Log.d("Launching Google Maps: %s", new Object[] { str });
      Utils.IntentUtils.startActivity(localContext, new Intent("android.intent.action.VIEW", Uri.parse("geo:" + str)));
      MMSDK.Event.intentStarted(localContext, "geo", getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
      return MMJSResponse.responseWithSuccess("Map successfully opened");
    }
    return null;
  }
  
  public MMJSResponse tweet(HashMap<String, String> paramHashMap)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMDevice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */