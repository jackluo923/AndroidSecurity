package com.heyzap.http;

import android.util.Log;
import com.zeptolab.utils.HTMLEncoder;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public class JsonHttpResponseHandler extends TextHttpResponseHandler {
    private static final String LOG_TAG = "JsonHttpResponseHandler";

    public JsonHttpResponseHandler() {
        super(HTMLEncoder.ENCODE_NAME_DEFAULT);
    }

    public JsonHttpResponseHandler(String str) {
        super(str);
    }

    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONArray jSONArray) {
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        if (bArr != null) {
            new Thread(new n(this, bArr, i, headerArr, th)).start();
        } else {
            Log.v(LOG_TAG, "response body is null, calling onFailure(Throwable, JSONObject)");
            onFailure(i, headerArr, th, (JSONObject) 0);
        }
    }

    public void onSuccess(int i, Header[] headerArr, String str) {
    }

    public void onSuccess(int i, Header[] headerArr, JSONArray jSONArray) {
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
    }

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        if (i != 204) {
            new Thread(new k(this, bArr, i, headerArr)).start();
        } else {
            onSuccess(i, headerArr, new JSONObject());
        }
    }

    protected Object parseResponse(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        String str;
        Object obj;
        String str2;
        String responseString = getResponseString(bArr, getCharset());
        if (responseString != null) {
            responseString = responseString.trim();
            if (responseString.startsWith("{") || responseString.startsWith("[")) {
                str = responseString;
                obj = new JSONTokener(responseString).nextValue();
                str2 = str;
                return obj == null ? obj : obj;
            }
        }
        str = responseString;
        boolean z = false;
        str2 = str;
        if (obj == null) {
        }
    }
}