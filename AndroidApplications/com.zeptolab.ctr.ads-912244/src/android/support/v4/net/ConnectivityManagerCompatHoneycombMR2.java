package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

class ConnectivityManagerCompatHoneycombMR2 {
    ConnectivityManagerCompatHoneycombMR2() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return true;
        }
        switch (activeNetworkInfo.getType()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return true;
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_ALL:
            case ZBuildConfig.$minsdk:
                return false;
            default:
                return true;
        }
    }
}