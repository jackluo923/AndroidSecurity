package org.acra.e;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.io.File;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import org.acra.ACRA;

public final class j {
    public static long a() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    public static String a(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (RuntimeException e) {
            Log.w(ACRA.LOG_TAG, new StringBuilder("Couldn't retrieve DeviceId for : ").append(context.getPackageName()).toString(), e);
            return null;
        }
    }

    public static long b() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
    }

    public static String b(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir.getAbsolutePath();
        }
        Log.w(ACRA.LOG_TAG, new StringBuilder("Couldn't retrieve ApplicationFilePath for : ").append(context.getPackageName()).toString());
        return "Couldn't retrieve ApplicationFilePath";
    }

    public static String c() {
        StringBuilder stringBuilder = new StringBuilder();
        boolean z = 1;
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        if (i == 0) {
                            stringBuilder.append('\n');
                        }
                        stringBuilder.append(inetAddress.getHostAddress().toString());
                        int i2 = 0;
                    }
                }
            }
        } catch (SocketException e) {
            ACRA.log.b(ACRA.LOG_TAG, e.toString());
        }
        return stringBuilder.toString();
    }
}