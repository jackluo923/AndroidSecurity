package org.apache.cordova;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import java.util.List;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CompassListener
  extends CordovaPlugin
  implements SensorEventListener
{
  public static int ERROR_FAILED_TO_START = 3;
  public static int RUNNING;
  public static int STARTING;
  public static int STOPPED = 0;
  public long TIMEOUT = 30000L;
  int accuracy;
  private CallbackContext callbackContext;
  float heading = 0.0F;
  long lastAccessTime;
  Sensor mSensor;
  private SensorManager sensorManager;
  int status;
  long timeStamp = 0L;
  
  static
  {
    STARTING = 1;
    RUNNING = 2;
  }
  
  public CompassListener()
  {
    setStatus(STOPPED);
  }
  
  private JSONObject getCompassHeading()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("magneticHeading", getHeading());
    localJSONObject.put("trueHeading", getHeading());
    localJSONObject.put("headingAccuracy", 0);
    localJSONObject.put("timestamp", timeStamp);
    return localJSONObject;
  }
  
  private void setStatus(int paramInt)
  {
    status = paramInt;
  }
  
  private void timeout()
  {
    if (status == STARTING)
    {
      setStatus(ERROR_FAILED_TO_START);
      if (callbackContext != null) {
        callbackContext.error("Compass listener failed to start.");
      }
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equals("start"))
    {
      start();
      return true;
    }
    if (paramString.equals("stop"))
    {
      stop();
      return true;
    }
    if (paramString.equals("getStatus"))
    {
      int i = getStatus();
      paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, i));
      return true;
    }
    if (paramString.equals("getHeading"))
    {
      if (status != RUNNING)
      {
        if (start() == ERROR_FAILED_TO_START)
        {
          paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, ERROR_FAILED_TO_START));
          return true;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
        {
          public void run()
          {
            CompassListener.this.timeout();
          }
        }, 2000L);
      }
      paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, getCompassHeading()));
      return true;
    }
    if (paramString.equals("setTimeout"))
    {
      setTimeout(paramJSONArray.getLong(0));
      return true;
    }
    if (paramString.equals("getTimeout"))
    {
      long l = getTimeout();
      paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, (float)l));
      return true;
    }
    return false;
  }
  
  public float getHeading()
  {
    lastAccessTime = System.currentTimeMillis();
    return heading;
  }
  
  public int getStatus()
  {
    return status;
  }
  
  public long getTimeout()
  {
    return TIMEOUT;
  }
  
  public void initialize(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super.initialize(paramCordovaInterface, paramCordovaWebView);
    sensorManager = ((SensorManager)paramCordovaInterface.getActivity().getSystemService("sensor"));
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onDestroy()
  {
    stop();
  }
  
  public void onReset()
  {
    stop();
  }
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    float f = values[0];
    timeStamp = System.currentTimeMillis();
    heading = f;
    setStatus(RUNNING);
    if (timeStamp - lastAccessTime > TIMEOUT) {
      stop();
    }
  }
  
  public void setTimeout(long paramLong)
  {
    TIMEOUT = paramLong;
  }
  
  public int start()
  {
    if ((status == RUNNING) || (status == STARTING)) {
      return status;
    }
    List localList = sensorManager.getSensorList(3);
    if ((localList != null) && (localList.size() > 0))
    {
      mSensor = ((Sensor)localList.get(0));
      sensorManager.registerListener(this, mSensor, 3);
      lastAccessTime = System.currentTimeMillis();
      setStatus(STARTING);
    }
    for (;;)
    {
      return status;
      setStatus(ERROR_FAILED_TO_START);
    }
  }
  
  public void stop()
  {
    if (status != STOPPED) {
      sensorManager.unregisterListener(this);
    }
    setStatus(STOPPED);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CompassListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */