package com.amazon.device.ads;

import android.os.AsyncTask;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.amazon.device.ads.WebRequest.WebRequestStatus;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

class AdMetricsSubmitAaxTask extends AsyncTask {
    private static final String a = "AdMetricsSubmitTask";

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[WebRequestStatus.values().length];
            try {
                a[WebRequestStatus.INVALID_CLIENT_PROTOCOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[WebRequestStatus.NETWORK_FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[WebRequestStatus.MALFORMED_URL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[WebRequestStatus.UNSUPPORTED_ENCODING.ordinal()] = 4;
        }
    }

    AdMetricsSubmitAaxTask() {
    }

    public Void doInBackground(WebRequest... webRequestArr) {
        int length = webRequestArr.length;
        int i = 0;
        while (i < length) {
            try {
                webRequestArr[i].makeCall();
            } catch (WebRequestException e) {
                switch (AnonymousClass_1.a[e.getStatus().ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        Log.e(a, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s", new Object[]{webRequestException.getMessage()});
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        Log.e(a, "Unable to submit metrics for ad due to Network Failure, msg: %s", new Object[]{webRequestException.getMessage()});
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        Log.e(a, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s", new Object[]{webRequestException.getMessage()});
                        Log.e(a, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s", new Object[]{webRequestException.getMessage()});
                        break;
                    case GoogleScorer.CLIENT_APPSTATE:
                        Log.e(a, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s", new Object[]{webRequestException.getMessage()});
                        break;
                    default:
                        break;
                }
            }
            i++;
        }
        return null;
    }
}