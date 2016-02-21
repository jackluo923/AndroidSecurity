package me.kiip.internal.k;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b {
    public static String a(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        switch (activeNetworkInfo.getType()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return activeNetworkInfo.getSubtypeName();
            case GoogleScorer.CLIENT_GAMES:
                return activeNetworkInfo.getTypeName();
            default:
                return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }
}