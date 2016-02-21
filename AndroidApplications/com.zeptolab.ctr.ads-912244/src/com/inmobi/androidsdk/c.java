package com.inmobi.androidsdk;

import android.os.Message;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.NetworkEventType;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.Response;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import org.json.JSONException;
import org.json.JSONObject;

class c implements HttpRequestCallback {
    final /* synthetic */ BannerView a;

    c(BannerView bannerView) {
        this.a = bannerView;
    }

    public void notifyResult(int i, Object obj) {
        Log.debug(ConfigConstants.LOGGING_TAG, ">>> Got HTTP REQUEST callback. Status: " + i);
        if (i == 0) {
            BannerView.a(this.a, ((Response) obj).getAdResponse());
            BannerView.c(this.a, ((Response) obj).getImpressionId());
            BannerView.p(this.a).sendEmptyMessage(109);
        } else if (i == 1) {
            long currentTimeMillis = System.currentTimeMillis() - BannerView.b(this.a);
            Message obtainMessage = BannerView.p(this.a).obtainMessage(110);
            JSONObject jSONObject;
            ErrorCode errorCode;
            if (obj instanceof AdException) {
                AdException adException = (AdException) obj;
                ErrorCode errorCode2 = adException.getErrorCode();
                if (BannerView.c(this.a)) {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put(AdDatabaseHelper.TABLE_AD, adException.getImpressionId());
                        jSONObject.put("t", currentTimeMillis);
                        jSONObject.put("m", adException.getHttpCode());
                    } catch (JSONException e) {
                        Log.internal(ConfigConstants.LOGGING_TAG, "Error creating metric logs for error at " + System.currentTimeMillis());
                    }
                    Initializer.getLogger().logEvent(new EventLog(NetworkEventType.RESPONSE_ERROR, jSONObject));
                }
                errorCode = errorCode2;
            } else {
                errorCode = (ErrorCode) obj;
                int errorCode3 = errorCode.getErrorCode();
                if (BannerView.c(this.a)) {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put("t", currentTimeMillis);
                        jSONObject.put("m", errorCode3);
                    } catch (JSONException e2) {
                        Log.internal(ConfigConstants.LOGGING_TAG, "Error creating metric logs for error at " + System.currentTimeMillis());
                    }
                    Initializer.getLogger().logEvent(new EventLog(NetworkEventType.CONNECT_ERROR, jSONObject));
                }
            }
            obtainMessage.obj = obj;
            obtainMessage.sendToTarget();
        }
    }
}