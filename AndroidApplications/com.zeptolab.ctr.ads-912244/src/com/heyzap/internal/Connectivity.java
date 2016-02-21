package com.heyzap.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class Connectivity {
    public static final int NETWORK_TYPE_EHRPD = 14;
    public static final int NETWORK_TYPE_EVDO_B = 12;
    public static final int NETWORK_TYPE_HSPAP = 15;
    public static final int NETWORK_TYPE_IDEN = 11;
    public static final int NETWORK_TYPE_LTE = 13;

    public static String connectionType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        int type = activeNetworkInfo.getType();
        int subtype = activeNetworkInfo.getSubtype();
        if (type == 1) {
            return "wifi";
        }
        if (type != 0) {
            return null;
        }
        switch (subtype) {
            case GoogleScorer.CLIENT_GAMES:
                return "gprs";
            case GoogleScorer.CLIENT_PLUS:
                return "edge";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "umts";
            case GoogleScorer.CLIENT_APPSTATE:
                return "cdma";
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return "evdo";
            case GoogleScorer.CLIENT_ALL:
                return "rtt";
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return "hsdpa";
            case ZBuildConfig.$minsdk:
                return "hsupa";
            case R.styleable.MapAttrs_uiZoomControls:
                return "hspa";
            case NETWORK_TYPE_IDEN:
                return "iden";
            case NETWORK_TYPE_EVDO_B:
                return "evdo_b";
            case NETWORK_TYPE_LTE:
                return "lte";
            case NETWORK_TYPE_EHRPD:
                return "ehrpd";
            case NETWORK_TYPE_HSPAP:
                return "hspap";
            default:
                return null;
        }
    }

    public static boolean isConnected(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isConnectedFast(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected() && isConnectionFast(activeNetworkInfo.getType(), activeNetworkInfo.getSubtype());
    }

    public static boolean isConnectionFast(int i, int i2) {
        if (i == 1) {
            return true;
        }
        if (i != 0) {
            return false;
        }
        switch (i2) {
            case GoogleScorer.CLIENT_GAMES:
                return false;
            case GoogleScorer.CLIENT_PLUS:
                return false;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
            case ZBuildConfig.$minsdk:
            case R.styleable.MapAttrs_uiZoomControls:
            case NETWORK_TYPE_EVDO_B:
            case NETWORK_TYPE_LTE:
            case NETWORK_TYPE_EHRPD:
                return true;
            case GoogleScorer.CLIENT_APPSTATE:
                return false;
            case GoogleScorer.CLIENT_ALL:
                return false;
            case NETWORK_TYPE_IDEN:
                return false;
            case NETWORK_TYPE_HSPAP:
                return false;
            default:
                return false;
        }
    }
}