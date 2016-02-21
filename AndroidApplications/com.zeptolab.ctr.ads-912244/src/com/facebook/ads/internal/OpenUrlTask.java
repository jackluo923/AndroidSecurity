package com.facebook.ads.internal;

import android.os.AsyncTask;
import android.util.Log;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class OpenUrlTask extends AsyncTask {
    private static final String INVALID_ADDRESS = "#";
    private static final String TAG;
    private Map extraData;

    static {
        TAG = OpenUrlTask.class.getSimpleName();
    }

    public OpenUrlTask() {
        this.extraData = null;
    }

    public OpenUrlTask(Map map) {
        this.extraData = map;
    }

    private String addAnalogInfo(String str) {
        try {
            return addData(str, "analog", AdUtilities.jsonEncode(AdAnalogData.getAnalogInfo()));
        } catch (Exception e) {
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(e));
            return str;
        }
    }

    private String addData(String str, String str2, String str3) {
        if (StringUtils.isNullOrEmpty(str) || StringUtils.isNullOrEmpty(str2) || StringUtils.isNullOrEmpty(str3)) {
            return str;
        }
        return str + (str.contains("?") ? "&" : "?") + str2 + "=" + URLEncoder.encode(str3);
    }

    protected Void doInBackground(String... strArr) {
        String str = strArr[0];
        if (!(StringUtils.isNullOrEmpty(str) || str.equals(INVALID_ADDRESS))) {
            String str2;
            str = addAnalogInfo(str);
            if (this.extraData != null) {
                Iterator it = this.extraData.keySet().iterator();
                str2 = str;
                while (it.hasNext()) {
                    str = (String) it.next();
                    str2 = addData(str2, str, (String) this.extraData.get(str));
                }
            } else {
                str2 = str;
            }
            try {
                new DefaultHttpClient().execute(new HttpGet(str2));
            } catch (Exception e) {
                Throwable th = e;
                Log.e(TAG, "Error opening url: " + str2, th);
                AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(th));
            }
        }
        return null;
    }
}