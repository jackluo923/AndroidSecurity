package com.inmobi.commons.thinICE.cellular;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.Log;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public final class CellUtil {
    private static final String[] a;

    static class a {
        a() {
        }

        static int a_(Context context) {
            try {
                ArrayList arrayList = (ArrayList) TelephonyManager.class.getMethod("getAllCellInfo", (Class[]) 0).invoke((TelephonyManager) context.getSystemService(ZBuildConfig.device), (Object[]) 0);
                if (arrayList != null) {
                    return ((Integer) Class.forName("android.telephony.CellSignalStrengthGsm").getMethod("getDbm", (Class[]) 0).invoke(Class.forName("android.telephony.CellInfoGsm").getMethod("getCellSignalStrength", (Class[]) 0).invoke(arrayList.get(0), (Object[]) 0), (Object[]) 0)).intValue();
                }
            } catch (Exception e) {
                th = e;
                if (BuildSettings.DEBUG) {
                    Throwable th2;
                    Log.e(IceDataCollector.TAG, "Error getting cell tower signal strength", th2);
                }
            }
            return 0;
        }

        static int b(Context context) {
            try {
                ArrayList arrayList = (ArrayList) TelephonyManager.class.getMethod("getAllCellInfo", (Class[]) 0).invoke((TelephonyManager) context.getSystemService(ZBuildConfig.device), (Object[]) 0);
                if (arrayList != null) {
                    return ((Integer) Class.forName("android.telephony.CellSignalStrengthCdma").getMethod("getDbm", (Class[]) 0).invoke(Class.forName("android.telephony.CellInfoCdma").getMethod("getCellSignalStrength", (Class[]) 0).invoke(arrayList.get(0), (Object[]) 0), (Object[]) 0)).intValue();
                }
            } catch (Exception e) {
                th = e;
                if (BuildSettings.DEBUG) {
                    Throwable th2;
                    Log.e(IceDataCollector.TAG, "Error getting cell tower signal strength", th2);
                }
            }
            return 0;
        }
    }

    static {
        a = new String[]{"android.permission.ACCESS_COARSE_LOCATION"};
    }

    private static int[] a(String str) {
        int[] iArr = new int[]{-1, -1};
        if (!(str == null || str.equals(AdTrackerConstants.BLANK))) {
            try {
                int parseInt = Integer.parseInt(str.substring(0, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                int parseInt2 = Integer.parseInt(str.substring(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                iArr[0] = parseInt;
                iArr[1] = parseInt2;
            } catch (IndexOutOfBoundsException e) {
            } catch (NumberFormatException e2) {
            }
        }
        return iArr;
    }

    public static CellOperatorInfo getCellNetworkInfo(Context context) {
        CellOperatorInfo cellOperatorInfo = new CellOperatorInfo();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ZBuildConfig.device);
        int[] a = a(telephonyManager.getNetworkOperator());
        cellOperatorInfo.currentMcc = a[0];
        cellOperatorInfo.currentMnc = a[1];
        int[] a2 = a(telephonyManager.getSimOperator());
        cellOperatorInfo.simMcc = a2[0];
        cellOperatorInfo.simMnc = a2[1];
        return cellOperatorInfo;
    }

    public static CellTowerInfo getCurrentCellTower(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ZBuildConfig.device);
        int[] a = a(telephonyManager.getNetworkOperator());
        CellLocation cellLocation = telephonyManager.getCellLocation();
        if (cellLocation == null || a[0] == -1) {
            return null;
        }
        CellTowerInfo cellTowerInfo = new CellTowerInfo();
        String valueOf = String.valueOf(a[0]);
        String valueOf2 = String.valueOf(a[1]);
        int networkId;
        int systemId;
        if (cellLocation instanceof CdmaCellLocation) {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
            networkId = cdmaCellLocation.getNetworkId();
            int baseStationId = cdmaCellLocation.getBaseStationId();
            systemId = cdmaCellLocation.getSystemId();
            cellTowerInfo.signalStrength = a.b(context);
            if (!(networkId == -1 || baseStationId == -1 || systemId == -1)) {
                String toHexString = Integer.toHexString(networkId);
                String toHexString2 = Integer.toHexString(baseStationId);
                cellTowerInfo.id = valueOf + "-" + valueOf2 + "-" + toHexString + "-" + toHexString2 + "-" + Integer.toHexString(systemId);
            }
        } else {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
            networkId = gsmCellLocation.getCid();
            systemId = gsmCellLocation.getLac();
            cellTowerInfo.signalStrength = a.a(context);
            if (!(networkId == -1 || systemId == -1)) {
                String toHexString3 = Integer.toHexString(systemId);
                cellTowerInfo.id = valueOf + "-" + valueOf2 + "-" + toHexString3 + "-" + Integer.toHexString(networkId);
            }
        }
        return cellTowerInfo;
    }

    public static boolean hasGetCurrentServingCellPermission(Context context) {
        String[] strArr = a;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (context.checkCallingOrSelfPermission(strArr[i]) != 0) {
                return false;
            }
            i++;
        }
        return true;
    }
}