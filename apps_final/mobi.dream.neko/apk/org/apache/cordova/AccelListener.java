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

public class AccelListener
  extends CordovaPlugin
  implements SensorEventListener
{
  public static int ERROR_FAILED_TO_START = 3;
  public static int RUNNING;
  public static int STARTING;
  public static int STOPPED = 0;
  private int accuracy = 0;
  private CallbackContext callbackContext;
  private Sensor mSensor;
  private SensorManager sensorManager;
  private int status;
  private long timestamp = 0L;
  private float x = 0.0F;
  private float y = 0.0F;
  private float z = 0.0F;
  
  static
  {
    STARTING = 1;
    RUNNING = 2;
  }
  
  public AccelListener()
  {
    setStatus(STOPPED);
  }
  
  private void fail(int paramInt, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("code", paramInt);
      localJSONObject.put("message", paramString);
      paramString = new PluginResult(PluginResult.Status.ERROR, localJSONObject);
      paramString.setKeepCallback(true);
      callbackContext.sendPluginResult(paramString);
      return;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  private JSONObject getAccelerationJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("x", x);
      localJSONObject.put("y", y);
      localJSONObject.put("z", z);
      localJSONObject.put("timestamp", timestamp);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localJSONObject;
  }
  
  private void setStatus(int paramInt)
  {
    status = paramInt;
  }
  
  private int start()
  {
    if ((status == RUNNING) || (status == STARTING)) {
      return status;
    }
    setStatus(STARTING);
    List localList = sensorManager.getSensorList(1);
    if ((localList != null) && (localList.size() > 0))
    {
      mSensor = ((Sensor)localList.get(0));
      sensorManager.registerListener(this, mSensor, 2);
      setStatus(STARTING);
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public void run()
        {
          AccelListener.this.timeout();
        }
      }, 2000L);
      return status;
    }
    setStatus(ERROR_FAILED_TO_START);
    fail(ERROR_FAILED_TO_START, "No sensors found to register accelerometer listening to.");
    return status;
  }
  
  private void stop()
  {
    if (status != STOPPED) {
      sensorManager.unregisterListener(this);
    }
    setStatus(STOPPED);
    accuracy = 0;
  }
  
  private void timeout()
  {
    if (status == STARTING)
    {
      setStatus(ERROR_FAILED_TO_START);
      fail(ERROR_FAILED_TO_START, "Accelerometer could not be started.");
    }
  }
  
  private void win()
  {
    PluginResult localPluginResult = new PluginResult(PluginResult.Status.OK, getAccelerationJSON());
    localPluginResult.setKeepCallback(true);
    callbackContext.sendPluginResult(localPluginResult);
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
  {
    if (paramString.equals("start"))
    {
      callbackContext = paramCallbackContext;
      if (status != RUNNING) {
        start();
      }
    }
    for (;;)
    {
      paramString = new PluginResult(PluginResult.Status.NO_RESULT, "");
      paramString.setKeepCallback(true);
      paramCallbackContext.sendPluginResult(paramString);
      return true;
      if (!paramString.equals("stop")) {
        break;
      }
      if (status == RUNNING) {
        stop();
      }
    }
    return false;
  }
  
  public void initialize(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super.initialize(paramCordovaInterface, paramCordovaWebView);
    sensorManager = ((SensorManager)paramCordovaInterface.getActivity().getSystemService("sensor"));
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
    if (paramSensor.getType() != 1) {}
    while (status == STOPPED) {
      return;
    }
    accuracy = paramInt;
  }
  
  public void onDestroy()
  {
    stop();
  }
  
  public void onReset()
  {
    if (status == RUNNING) {
      stop();
    }
  }
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (sensor.getType() != 1) {}
    do
    {
      do
      {
        return;
      } while (status == STOPPED);
      setStatus(RUNNING);
    } while (accuracy < 2);
    timestamp = System.currentTimeMillis();
    x = values[0];
    y = values[1];
    z = values[2];
    win();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.AccelListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */