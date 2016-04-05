package com.inmobi.commons.thinICE.cellular;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;

public final class CellUtil
{
  private static final String[] a = { "android.permission.ACCESS_COARSE_LOCATION" };
  
  private static int[] a(String paramString)
  {
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = -1;
    arrayOfInt[1] = -1;
    if ((paramString == null) || (paramString.equals(""))) {
      return arrayOfInt;
    }
    try
    {
      int i = Integer.parseInt(paramString.substring(0, 3));
      int j = Integer.parseInt(paramString.substring(3));
      arrayOfInt[0] = i;
      arrayOfInt[1] = j;
      return arrayOfInt;
    }
    catch (IndexOutOfBoundsException paramString)
    {
      return arrayOfInt;
    }
    catch (NumberFormatException paramString) {}
    return arrayOfInt;
  }
  
  public static CellOperatorInfo getCellNetworkInfo(Context paramContext)
  {
    CellOperatorInfo localCellOperatorInfo = new CellOperatorInfo();
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    int[] arrayOfInt = a(paramContext.getNetworkOperator());
    currentMcc = arrayOfInt[0];
    currentMnc = arrayOfInt[1];
    paramContext = a(paramContext.getSimOperator());
    simMcc = paramContext[0];
    simMnc = paramContext[1];
    return localCellOperatorInfo;
  }
  
  public static CellTowerInfo getCurrentCellTower(Context paramContext)
  {
    Object localObject1 = (TelephonyManager)paramContext.getSystemService("phone");
    Object localObject2 = a(((TelephonyManager)localObject1).getNetworkOperator());
    Object localObject3 = ((TelephonyManager)localObject1).getCellLocation();
    if ((localObject3 == null) || (localObject2[0] == -1)) {
      return null;
    }
    localObject1 = new CellTowerInfo();
    String str1 = String.valueOf(localObject2[0]);
    localObject2 = String.valueOf(localObject2[1]);
    int i;
    int j;
    String str2;
    if ((localObject3 instanceof CdmaCellLocation))
    {
      localObject3 = (CdmaCellLocation)localObject3;
      i = ((CdmaCellLocation)localObject3).getNetworkId();
      j = ((CdmaCellLocation)localObject3).getBaseStationId();
      int k = ((CdmaCellLocation)localObject3).getSystemId();
      signalStrength = CellUtil.a.b(paramContext);
      if ((i != -1) && (j != -1) && (k != -1))
      {
        paramContext = Integer.toHexString(i);
        localObject3 = Integer.toHexString(j);
        str2 = Integer.toHexString(k);
      }
    }
    for (id = (str1 + "-" + (String)localObject2 + "-" + paramContext + "-" + (String)localObject3 + "-" + str2);; id = (str1 + "-" + (String)localObject2 + "-" + paramContext + "-" + (String)localObject3))
    {
      do
      {
        return (CellTowerInfo)localObject1;
        localObject3 = (GsmCellLocation)localObject3;
        i = ((GsmCellLocation)localObject3).getCid();
        j = ((GsmCellLocation)localObject3).getLac();
        signalStrength = CellUtil.a.a(paramContext);
      } while ((i == -1) || (j == -1));
      paramContext = Integer.toHexString(j);
      localObject3 = Integer.toHexString(i);
    }
  }
  
  public static boolean hasGetCurrentServingCellPermission(Context paramContext)
  {
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      if (paramContext.checkCallingOrSelfPermission(arrayOfString[i]) != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.cellular.CellUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */