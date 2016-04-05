package org.apache.cordova;

import android.app.Activity;
import android.location.Location;
import android.location.LocationManager;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GeoBroker
  extends CordovaPlugin
{
  private GPSListener gpsListener;
  private LocationManager locationManager;
  private NetworkListener networkListener;
  
  private void addWatch(String paramString, CallbackContext paramCallbackContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      gpsListener.addWatch(paramString, paramCallbackContext);
      return;
    }
    networkListener.addWatch(paramString, paramCallbackContext);
  }
  
  private void clearWatch(String paramString)
  {
    gpsListener.clearWatch(paramString);
    networkListener.clearWatch(paramString);
  }
  
  private void getCurrentLocation(CallbackContext paramCallbackContext, boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
    {
      gpsListener.addCallback(paramCallbackContext, paramInt);
      return;
    }
    networkListener.addCallback(paramCallbackContext, paramInt);
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (locationManager == null) {
      locationManager = ((LocationManager)cordova.getActivity().getSystemService("location"));
    }
    boolean bool;
    if ((locationManager.isProviderEnabled("gps")) || (locationManager.isProviderEnabled("network")))
    {
      if (networkListener == null) {
        networkListener = new NetworkListener(locationManager, this);
      }
      if (gpsListener == null) {
        gpsListener = new GPSListener(locationManager, this);
      }
      if (paramString.equals("getLocation"))
      {
        bool = paramJSONArray.getBoolean(0);
        int i = paramJSONArray.getInt(1);
        LocationManager localLocationManager = locationManager;
        if (bool)
        {
          paramString = "gps";
          paramString = localLocationManager.getLastKnownLocation(paramString);
          if ((paramString == null) || (System.currentTimeMillis() - paramString.getTime() > i)) {
            break label188;
          }
          paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, returnLocationJSON(paramString)));
        }
      }
    }
    for (;;)
    {
      return true;
      paramString = "network";
      break;
      label188:
      getCurrentLocation(paramCallbackContext, bool, paramJSONArray.optInt(2, 60000));
      continue;
      if (paramString.equals("addWatch"))
      {
        addWatch(paramJSONArray.getString(0), paramCallbackContext, paramJSONArray.getBoolean(1));
      }
      else if (paramString.equals("clearWatch"))
      {
        clearWatch(paramJSONArray.getString(0));
      }
      else
      {
        return false;
        paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.NO_RESULT, "Location API is not available for this device."));
      }
    }
  }
  
  public void fail(int paramInt, String paramString, CallbackContext paramCallbackContext, boolean paramBoolean)
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject2 = null;
    try
    {
      localJSONObject.put("code", paramInt);
      localJSONObject.put("message", paramString);
      paramString = (String)localObject2;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Object localObject1 = null;
        paramString = "{'code':" + paramInt + ",'message':'" + paramString.replaceAll("'", "'") + "'}";
        continue;
        paramString = new PluginResult(PluginResult.Status.ERROR, paramString);
      }
    }
    if (localJSONObject != null)
    {
      paramString = new PluginResult(PluginResult.Status.ERROR, localJSONObject);
      paramString.setKeepCallback(paramBoolean);
      paramCallbackContext.sendPluginResult(paramString);
      return;
    }
  }
  
  public boolean isGlobalListener(CordovaLocationListener paramCordovaLocationListener)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (gpsListener != null)
    {
      bool1 = bool2;
      if (networkListener != null) {
        if (!gpsListener.equals(paramCordovaLocationListener))
        {
          bool1 = bool2;
          if (!networkListener.equals(paramCordovaLocationListener)) {}
        }
        else
        {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public void onDestroy()
  {
    if (networkListener != null)
    {
      networkListener.destroy();
      networkListener = null;
    }
    if (gpsListener != null)
    {
      gpsListener.destroy();
      gpsListener = null;
    }
  }
  
  public void onReset()
  {
    onDestroy();
  }
  
  public JSONObject returnLocationJSON(Location paramLocation)
  {
    Object localObject2 = null;
    localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("latitude", paramLocation.getLatitude());
      localJSONObject.put("longitude", paramLocation.getLongitude());
      if (paramLocation.hasAltitude()) {}
      for (Object localObject1 = Double.valueOf(paramLocation.getAltitude());; localObject1 = null)
      {
        localJSONObject.put("altitude", localObject1);
        localJSONObject.put("accuracy", paramLocation.getAccuracy());
        localObject1 = localObject2;
        if (paramLocation.hasBearing())
        {
          localObject1 = localObject2;
          if (paramLocation.hasSpeed()) {
            localObject1 = Float.valueOf(paramLocation.getBearing());
          }
        }
        localJSONObject.put("heading", localObject1);
        localJSONObject.put("velocity", paramLocation.getSpeed());
        localJSONObject.put("timestamp", paramLocation.getTime());
        return localJSONObject;
      }
      return localJSONObject;
    }
    catch (JSONException paramLocation)
    {
      paramLocation.printStackTrace();
    }
  }
  
  public void win(Location paramLocation, CallbackContext paramCallbackContext, boolean paramBoolean)
  {
    paramLocation = new PluginResult(PluginResult.Status.OK, returnLocationJSON(paramLocation));
    paramLocation.setKeepCallback(paramBoolean);
    paramCallbackContext.sendPluginResult(paramLocation);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.GeoBroker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */