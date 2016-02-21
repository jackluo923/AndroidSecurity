package com.inmobi.commons.thinICE.wifi;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class WifiUtil {
    private static final String[] a;
    private static final String[] b;
    private static final String[] c;

    static {
        a = new String[]{"android.permission.ACCESS_WIFI_STATE"};
        b = new String[]{"android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE"};
        c = new String[]{"android.permission.WAKE_LOCK"};
    }

    private static long a(byte b) {
        return ((long) b) & 255;
    }

    private static long a(byte[] bArr) {
        return (bArr == null || bArr.length != 6) ? 0 : ((((a(bArr[5]) | (a(bArr[4]) << 8)) | (a(bArr[3]) << 16)) | (a(bArr[2]) << 24)) | (a(bArr[1]) << 32)) | (a(bArr[0]) << 40);
    }

    private static boolean a(boolean z, String str) {
        return z && str != null && str.endsWith("_nomap");
    }

    public static WifiInfo getConnectedWifiInfo(Context context) {
        int wifiFlags = IceDataCollector.getConfig().getWifiFlags();
        return getConnectedWifiInfo(context, !ThinICEConfigSettings.bitTest(wifiFlags, GoogleScorer.CLIENT_PLUS), ThinICEConfigSettings.bitTest(wifiFlags, 1));
    }

    public static WifiInfo getConnectedWifiInfo(Context context, boolean z, boolean z2) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo == null) {
            return null;
        }
        WifiInfo wifiInfo = new WifiInfo();
        String bssid = connectionInfo.getBSSID();
        String ssid = connectionInfo.getSSID();
        if (bssid == null || a(z, ssid)) {
            return null;
        }
        wifiInfo.bssid = macToLong(bssid);
        if (z2) {
            ssid = null;
        }
        wifiInfo.ssid = ssid;
        wifiInfo.rssi = connectionInfo.getRssi();
        wifiInfo.ip = connectionInfo.getIpAddress();
        return wifiInfo;
    }

    public static boolean hasGetConnectedWifiInfoPermission(Context context) {
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

    public static boolean hasWifiScanPermission(Context context, boolean z) {
        String[] strArr = b;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (context.checkCallingOrSelfPermission(strArr[i]) != 0) {
                return false;
            }
            i++;
        }
        if (z) {
            strArr = c;
            length = strArr.length;
            i = 0;
            while (i < length) {
                if (context.checkCallingOrSelfPermission(strArr[i]) != 0) {
                    return false;
                }
                i++;
            }
        }
        return true;
    }

    public static long macToLong(String str) {
        String[] split = str.split("\\:");
        byte[] bArr = new byte[6];
        int i = 0;
        while (i < 6) {
            bArr[i] = (byte) Integer.parseInt(split[i], MMException.REQUEST_NOT_PERMITTED);
            i++;
        }
        return a(bArr);
    }

    public static WifiInfo scanResultToWifiInfo(ScanResult scanResult, boolean z) {
        String str = null;
        if (scanResult == null) {
            return null;
        }
        WifiInfo wifiInfo = new WifiInfo();
        wifiInfo.bssid = macToLong(scanResult.BSSID);
        if (!z) {
            str = scanResult.SSID;
        }
        wifiInfo.ssid = str;
        wifiInfo.rssi = scanResult.level;
        return wifiInfo;
    }

    public static List scanResultsToWifiInfos(List list, boolean z, boolean z2) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ScanResult scanResult = (ScanResult) it.next();
            if (!a(z, scanResult.SSID)) {
                arrayList.add(scanResultToWifiInfo(scanResult, z2));
            }
        }
        return arrayList;
    }
}