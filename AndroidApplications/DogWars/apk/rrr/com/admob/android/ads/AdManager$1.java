package com.admob.android.ads;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import java.util.Date;

final class AdManager$1
  implements LocationListener
{
  final LocationManager val$mgr;
  
  AdManager$1(LocationManager paramLocationManager) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    AdManager.access$002(paramLocation);
    long l1 = System.currentTimeMillis();
    AdManager.access$102(l1);
    Object localObject1 = val$mgr;
    ((LocationManager)localObject1).removeUpdates(this);
    localObject1 = "AdMob SDK";
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    Object localObject3 = "Aquired location ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    localObject3 = AdManager.access$000();
    double d1 = ((Location)localObject3).getLatitude();
    localObject2 = ((StringBuilder)localObject2).append(d1);
    Object localObject4 = ",";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
    localObject4 = AdManager.access$000();
    double d2 = ((Location)localObject4).getLongitude();
    localObject2 = ((StringBuilder)localObject2).append(d2);
    Object localObject5 = " at ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
    localObject5 = new java/util/Date;
    long l2 = AdManager.access$100();
    ((Date)localObject5).<init>(l2);
    localObject5 = ((Date)localObject5).toString();
    localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
    localObject5 = ".";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
    localObject2 = ((StringBuilder)localObject2).toString();
    Log.i((String)localObject1, (String)localObject2);
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdManager.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */