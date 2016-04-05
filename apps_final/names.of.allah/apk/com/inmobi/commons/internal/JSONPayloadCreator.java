package com.inmobi.commons.internal;

import android.content.Context;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UIDUtil;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONPayloadCreator
  implements PayloadCreator
{
  private JSONObject a(ActivityRecognitionSampler.ActivitySample paramActivitySample)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("t", 3);
      localJSONObject.put("ts", paramActivitySample.getTimestamp());
      localJSONObject.put("a", paramActivitySample.getActivity());
      return localJSONObject;
    }
    catch (Exception paramActivitySample) {}
    return null;
  }
  
  private JSONObject a(CellTowerInfo paramCellTowerInfo)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", id);
      if (signalStrength != 0) {
        localJSONObject.put("ss", signalStrength);
      }
      return localJSONObject;
    }
    catch (Exception paramCellTowerInfo) {}
    return null;
  }
  
  private JSONObject a(Sample paramSample, ThinICEConfig paramThinICEConfig)
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("t", 1);
      if (paramThinICEConfig.isConnectedWifiEnabled()) {
        localJSONObject1.put("c-ap", a(connectedWifiAp));
      }
      if (paramThinICEConfig.isCellEnabled()) {
        localJSONObject1.put("c-sc", a(connectedCellTowerInfo));
      }
      if (paramThinICEConfig.isVisibleWifiEnabled())
      {
        paramThinICEConfig = new JSONArray();
        if (visibleWifiAp != null)
        {
          Iterator localIterator = visibleWifiAp.iterator();
          while (localIterator.hasNext())
          {
            JSONObject localJSONObject2 = a((WifiInfo)localIterator.next());
            if (localJSONObject2 != null) {
              paramThinICEConfig.put(localJSONObject2);
            }
          }
        }
        if (paramThinICEConfig.length() > 0) {
          localJSONObject1.put("v-ap", paramThinICEConfig);
        }
      }
      if (localJSONObject1.length() > 1)
      {
        localJSONObject1.put("ts", utc);
        return localJSONObject1;
      }
      return null;
    }
    catch (JSONException paramSample) {}
    return null;
  }
  
  private JSONObject a(WifiInfo paramWifiInfo)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("bssid", bssid);
      localJSONObject.put("essid", ssid);
      return localJSONObject;
    }
    catch (Exception paramWifiInfo) {}
    return null;
  }
  
  public static String currentLocationStr()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (LocationInfo.isValidGeoInfo())
    {
      localStringBuilder.append(LocationInfo.getLat());
      localStringBuilder.append(",");
      localStringBuilder.append(LocationInfo.getLon());
      localStringBuilder.append(",");
      localStringBuilder.append((int)LocationInfo.getLocAccuracy());
      return localStringBuilder.toString();
    }
    return "";
  }
  
  public String toPayloadString(List<Sample> paramList, List<ActivityRecognitionSampler.ActivitySample> paramList1, Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    ThinICEConfig localThinICEConfig = AnalyticsInitializer.getConfigParams().getThinIceConfig();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (Sample)paramList.next();
      if (localObject != null)
      {
        localObject = a((Sample)localObject, localThinICEConfig);
        if (localObject != null) {
          localJSONArray.put(localObject);
        }
      }
    }
    paramList = paramList1.iterator();
    while (paramList.hasNext())
    {
      paramList1 = (ActivityRecognitionSampler.ActivitySample)paramList.next();
      if (paramList1 != null)
      {
        paramList1 = a(paramList1);
        if (paramList1 != null) {
          localJSONArray.put(paramList1);
        }
      }
    }
    try
    {
      if (localJSONArray.length() > 0) {
        localJSONObject.put("payload", localJSONArray);
      }
      paramList = CellUtil.getCellNetworkInfo(paramContext);
      if (localThinICEConfig.isOperatorEnabled())
      {
        if ((!ThinICEConfigSettings.bitTest(localThinICEConfig.getCellOpsFlag(), 1)) && ((simMcc != -1) || (simMnc != -1))) {
          localJSONObject.put("s-ho", simMcc + "_" + simMnc);
        }
        if ((!ThinICEConfigSettings.bitTest(localThinICEConfig.getCellOpsFlag(), 2)) && ((currentMcc != -1) || (currentMnc != -1))) {
          localJSONObject.put("s-co", currentMcc + "_" + currentMnc);
        }
      }
      paramList = Calendar.getInstance();
      System.currentTimeMillis();
      localJSONObject.put("tz", paramList.get(15) + paramList.get(16));
      localJSONObject.put("ts", paramList.getTimeInMillis());
      localJSONObject.put("mk-version", "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion("4.4.1") + "-20140613");
      paramList = currentLocationStr();
      if ((paramList != null) && (!"".equals(paramList))) {
        localJSONObject.put("u-latlong-accu", paramList);
      }
      paramList = UIDUtil.getMap(paramContext, null);
      paramList.remove("ua");
      paramList.remove("s-ver");
      UIDUtil.bindToEncodedJSON(paramList, localJSONObject);
      return localJSONObject.toString();
    }
    catch (JSONException paramList)
    {
      Log.internal("[InMobi]-4.4.1", "Unable to create payload for sending ThinICE params");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.JSONPayloadCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */