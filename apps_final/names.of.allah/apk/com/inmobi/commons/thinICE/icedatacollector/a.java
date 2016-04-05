package com.inmobi.commons.thinICE.icedatacollector;

import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.location.LocationUtil;
import com.inmobi.commons.thinICE.wifi.WifiScanner;
import com.inmobi.commons.thinICE.wifi.WifiUtil;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class a
  implements Runnable
{
  public final void run()
  {
    boolean bool1 = false;
    if (BuildSettings.DEBUG) {
      Log.d("IceDataCollector", "** sample runnable");
    }
    if (IceDataCollector.c() == null)
    {
      if (BuildSettings.DEBUG) {
        Log.w("IceDataCollector", "sampling when looper is null, exiting");
      }
      return;
    }
    if ((Build.VERSION.SDK_INT < 14) && (!IceDataCollector.d().hasWindowFocus()))
    {
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "activity no longer has focus, terminating");
      }
      IceDataCollector.b();
      localObject1 = IceDataCollector.e();
      IceDataCollector.flush();
      IceDataCollector.a(null);
      IceDataCollector.a(null);
      if (IceDataCollector.f() != null) {
        IceDataCollector.f().onSamplingTerminated((List)localObject1);
      }
      IceDataCollector.a(null);
      return;
    }
    IceDataCollector.i().postDelayed(IceDataCollector.g(), IceDataCollector.h().getSampleInterval());
    if (BuildSettings.DEBUG) {
      Log.d("IceDataCollector", "next sample in " + IceDataCollector.h().getSampleInterval() + " ms");
    }
    Object localObject1 = new Sample();
    int i = IceDataCollector.h().getWifiFlags();
    if (!ThinICEConfigSettings.bitTest(i, 2)) {
      bool1 = true;
    }
    boolean bool2 = ThinICEConfigSettings.bitTest(i, 1);
    i = IceDataCollector.h().getCellOpFlags();
    boolean bool3 = ThinICEConfigSettings.bitTest(i, 1);
    boolean bool4 = ThinICEConfigSettings.bitTest(i, 2);
    if (IceDataCollector.h().isSampleCellOperatorEnabled()) {}
    try
    {
      localObject3 = CellUtil.getCellNetworkInfo(IceDataCollector.j());
      if (bool3)
      {
        simMcc = -1;
        simMnc = -1;
      }
      if (bool4)
      {
        currentMcc = -1;
        currentMnc = -1;
      }
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "-- cell operator: " + localObject3);
      }
      cellOperator = ((CellOperatorInfo)localObject3);
    }
    catch (Exception localException3)
    {
      try
      {
        Object localObject3;
        if (!CellUtil.hasGetCurrentServingCellPermission(IceDataCollector.j())) {
          break label599;
        }
        connectedCellTowerInfo = CellUtil.getCurrentCellTower(IceDataCollector.j());
        if (!BuildSettings.DEBUG) {
          break label365;
        }
        Log.d("IceDataCollector", "-- current serving cell: " + connectedCellTowerInfo.id);
        label365:
        connectedWifiAp = IceDataCollector.getConnectedWifiInfo(IceDataCollector.j());
        if (!IceDataCollector.h().isSampleLocationEnabled()) {
          break label486;
        }
        try
        {
          if (!LocationUtil.hasLocationPermission(IceDataCollector.j())) {
            break label645;
          }
          localObject3 = LocationUtil.getLastKnownLocations(IceDataCollector.j());
          if (!BuildSettings.DEBUG) {
            break label637;
          }
          Log.d("IceDataCollector", "-- locations:");
          Iterator localIterator = ((HashMap)localObject3).values().iterator();
          while (localIterator.hasNext())
          {
            LocationInfo localLocationInfo = (LocationInfo)localIterator.next();
            Log.d("IceDataCollector", "   + " + localLocationInfo);
          }
          if (!IceDataCollector.h().isSampleVisibleWifiEnabled()) {
            break label524;
          }
        }
        catch (Exception localException1)
        {
          if (!BuildSettings.DEBUG) {
            break label486;
          }
          Log.e("IceDataCollector", "Error getting location data", localException1);
        }
      }
      catch (Exception localException3)
      {
        label486:
        label524:
        label599:
        label637:
        label645:
        label663:
        label701:
        try
        {
          if (!WifiUtil.hasWifiScanPermission(IceDataCollector.j(), false)) {
            break label663;
          }
          WifiScanner.requestScan(IceDataCollector.j(), new a.a(this, bool1, bool2));
          for (;;)
          {
            synchronized (IceDataCollector.k())
            {
              IceDataCollector.a((Sample)localObject1);
              if (IceDataCollector.e() == null) {
                break label701;
              }
              IceDataCollector.e().add(localObject1);
              if (IceDataCollector.e().size() <= IceDataCollector.h().getSampleHistorySize()) {
                break label701;
              }
              IceDataCollector.e().removeFirst();
            }
            localException2 = localException2;
            if (!BuildSettings.DEBUG) {
              break;
            }
            Log.e("IceDataCollector", "Error getting cell operator data", localException2);
            break;
            if (!BuildSettings.DEBUG) {
              break label365;
            }
            Log.w("IceDataCollector", "application does not have permission to access current serving cell");
            break label365;
            localException3 = localException3;
            if (!BuildSettings.DEBUG) {
              break label365;
            }
            Log.e("IceDataCollector", "Error getting cell data", localException3);
            break label365;
            lastKnownLocations = localException3;
            break label486;
            if (!BuildSettings.DEBUG) {
              break label486;
            }
            Log.w("IceDataCollector", "application does not have permission to access location");
            break label486;
            if (BuildSettings.DEBUG) {
              Log.w("IceDataCollector", "application does not have permission to scan for wifi access points");
            }
          }
        }
        catch (Exception localException4)
        {
          for (;;)
          {
            if (BuildSettings.DEBUG) {
              Log.e("IceDataCollector", "Error scanning for wifi", localException4);
            }
          }
        }
      }
    }
    if (IceDataCollector.h().isSampleCellEnabled()) {}
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.icedatacollector.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */