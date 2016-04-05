package org.apache.cordova;

import android.location.LocationManager;

public class NetworkListener
  extends CordovaLocationListener
{
  public NetworkListener(LocationManager paramLocationManager, GeoBroker paramGeoBroker)
  {
    super(paramLocationManager, paramGeoBroker, "[Cordova NetworkListener]");
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.NetworkListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */