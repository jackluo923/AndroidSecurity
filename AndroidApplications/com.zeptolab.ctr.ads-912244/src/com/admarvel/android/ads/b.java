package com.admarvel.android.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

public class b extends BroadcastReceiver {
    private static String a;
    private static WeakReference b;

    static {
        a = null;
    }

    public static void a(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
        b = new WeakReference(adMarvelInternalWebView);
        if (str != null) {
            a = str;
        }
    }

    public void onReceive(Context context, Intent intent) {
        try {
            String deviceConnectivitiy = Utils.getDeviceConnectivitiy(context);
            Object valueOf = (deviceConnectivitiy.equals("mobile") || deviceConnectivitiy.equals("wifi")) ? Boolean.valueOf(true) : Boolean.valueOf(false);
            if (b != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) b.get();
                if (adMarvelInternalWebView != null && a != null) {
                    adMarvelInternalWebView.loadUrl("javascript:" + a + "(" + "'" + valueOf + "'" + "," + "'" + deviceConnectivitiy + "'" + ")");
                }
            }
        } catch (Exception e) {
            Logging.log(e.getMessage() + " Exception in AdMarvelConnectivityChangeReceiver ");
        }
    }
}