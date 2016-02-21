package com.chartboost.sdk.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBUtility;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class l {
    private static boolean a;

    static {
        a = false;
    }

    public static boolean a() {
        boolean z = true;
        try {
            Context context = Chartboost.sharedChartboost().getContext();
            if (a && CBUtility.a(context)) {
                return false;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                    return z;
                }
            }
            return false;
        } catch (Exception e) {
            return z;
        }
    }

    public static int b() {
        int i = -1;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) Chartboost.sharedChartboost().getContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                return i;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                return 0;
            }
            return activeNetworkInfo.getType() == 1 ? 1 : GoogleScorer.CLIENT_PLUS;
        } catch (Exception e) {
            return i;
        }
    }
}