package com.millennialmedia.android;

import android.content.Context;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

class AdProperties
{
  WeakReference<Context> contextRef;
  
  AdProperties(Context paramContext)
  {
    contextRef = new WeakReference(paramContext);
  }
  
  private JSONObject getAd()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("height", getAdDpiIndependentHeight());
    localJSONObject.put("width", getAdDpiIndependentWidth());
    return localJSONObject;
  }
  
  private JSONObject getPermissions()
  {
    JSONObject localJSONObject = new JSONObject();
    if (getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localJSONObject.put("android.permission.ACCESS_FINE_LOCATION", bool);
      return localJSONObject;
    }
  }
  
  private JSONObject getScreen()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("height", getScreenDpiIndependentHeight());
    localJSONObject.put("width", getScreenDpiIndependentWidth());
    return localJSONObject;
  }
  
  private JSONObject getSupports()
  {
    JSONObject localJSONObject = new JSONObject();
    Context localContext = getContext();
    localJSONObject.put("sms", MMSDK.getSupportsSms(localContext));
    localJSONObject.put("tel", MMSDK.getSupportsTel(localContext));
    localJSONObject.put("calendar", "false");
    localJSONObject.put("storePicture", "false");
    localJSONObject.put("inlineVideo", "true");
    return localJSONObject;
  }
  
  String getAdDpiIndependentHeight()
  {
    return getScreenDpiIndependentHeight();
  }
  
  String getAdDpiIndependentWidth()
  {
    return getScreenDpiIndependentWidth();
  }
  
  public JSONObject getAdProperties()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("screen", getScreen());
      localJSONObject.put("ad", getAd());
      localJSONObject.put("do", MMSDK.getOrientation(getContext()));
      localJSONObject.put("supports", getSupports());
      localJSONObject.put("device", BridgeMMDevice.getDeviceInfo(getContext()));
      localJSONObject.put("permissions", getPermissions());
      localJSONObject.put("maxSize", getScreen());
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  Context getContext()
  {
    return (Context)contextRef.get();
  }
  
  String getScreenDpiIndependentHeight()
  {
    DisplayMetrics localDisplayMetrics = MMSDK.getMetrics(getContext());
    return String.valueOf((int)(heightPixels / density));
  }
  
  String getScreenDpiIndependentWidth()
  {
    DisplayMetrics localDisplayMetrics = MMSDK.getMetrics(getContext());
    return String.valueOf((int)(widthPixels / density));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */