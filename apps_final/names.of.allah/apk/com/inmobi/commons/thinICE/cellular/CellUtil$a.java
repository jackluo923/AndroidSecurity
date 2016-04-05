package com.inmobi.commons.thinICE.cellular;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
import java.lang.reflect.Method;
import java.util.ArrayList;

class CellUtil$a
{
  static int a(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      paramContext = (ArrayList)TelephonyManager.class.getMethod("getAllCellInfo", null).invoke(paramContext, null);
      if (paramContext != null)
      {
        paramContext = paramContext.get(0);
        paramContext = Class.forName("android.telephony.CellInfoGsm").getMethod("getCellSignalStrength", null).invoke(paramContext, null);
        int i = ((Integer)Class.forName("android.telephony.CellSignalStrengthGsm").getMethod("getDbm", null).invoke(paramContext, null)).intValue();
        return i;
      }
    }
    catch (Exception paramContext)
    {
      if (BuildSettings.DEBUG) {
        Log.e("IceDataCollector", "Error getting cell tower signal strength", paramContext);
      }
    }
    return 0;
  }
  
  static int b(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      paramContext = (ArrayList)TelephonyManager.class.getMethod("getAllCellInfo", null).invoke(paramContext, null);
      if (paramContext != null)
      {
        paramContext = paramContext.get(0);
        paramContext = Class.forName("android.telephony.CellInfoCdma").getMethod("getCellSignalStrength", null).invoke(paramContext, null);
        int i = ((Integer)Class.forName("android.telephony.CellSignalStrengthCdma").getMethod("getDbm", null).invoke(paramContext, null)).intValue();
        return i;
      }
    }
    catch (Exception paramContext)
    {
      if (BuildSettings.DEBUG) {
        Log.e("IceDataCollector", "Error getting cell tower signal strength", paramContext);
      }
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.cellular.CellUtil.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */