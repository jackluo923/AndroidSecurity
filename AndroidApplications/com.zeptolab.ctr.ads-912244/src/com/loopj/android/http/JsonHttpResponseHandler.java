package com.loopj.android.http;

import android.os.Message;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class JsonHttpResponseHandler extends AsyncHttpResponseHandler {
    protected static final int SUCCESS_JSON_MESSAGE = 100;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void handleFailureMessage(java.lang.Throwable r3, java.lang.String r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.loopj.android.http.JsonHttpResponseHandler.handleFailureMessage(java.lang.Throwable, java.lang.String):void");
        /*
        r2 = this;
        if (r4 == 0) goto L_0x0023;
    L_0x0002:
        r0 = r2.parseResponse(r4);	 Catch:{ JSONException -> 0x001a }
        r1 = r0 instanceof org.json.JSONObject;	 Catch:{ JSONException -> 0x001a }
        if (r1 == 0) goto L_0x0010;
    L_0x000a:
        r0 = (org.json.JSONObject) r0;	 Catch:{ JSONException -> 0x001a }
        r2.onFailure(r3, r0);	 Catch:{ JSONException -> 0x001a }
    L_0x000f:
        return;
    L_0x0010:
        r1 = r0 instanceof org.json.JSONArray;	 Catch:{ JSONException -> 0x001a }
        if (r1 == 0) goto L_0x001f;
    L_0x0014:
        r0 = (org.json.JSONArray) r0;	 Catch:{ JSONException -> 0x001a }
        r2.onFailure(r3, r0);	 Catch:{ JSONException -> 0x001a }
        goto L_0x000f;
    L_0x001a:
        r0 = move-exception;
        r2.onFailure(r3, r4);
        goto L_0x000f;
    L_0x001f:
        r2.onFailure(r3, r4);	 Catch:{ JSONException -> 0x001a }
        goto L_0x000f;
    L_0x0023:
        r0 = "";
        r2.onFailure(r3, r0);	 Catch:{ JSONException -> 0x001a }
        goto L_0x000f;
        */
    }

    protected void handleMessage(Message message) {
        switch (message.what) {
            case SUCCESS_JSON_MESSAGE:
                Object[] objArr = (Object[]) message.obj;
                handleSuccessJsonMessage(((Integer) objArr[0]).intValue(), objArr[1]);
            default:
                super.handleMessage(message);
        }
    }

    protected void handleSuccessJsonMessage(int i, Object obj) {
        if (obj instanceof JSONObject) {
            onSuccess(i, (JSONObject) obj);
        } else if (obj instanceof JSONArray) {
            onSuccess(i, (JSONArray) obj);
        } else {
            onFailure(new JSONException("Unexpected type " + obj.getClass().getName()), (JSONObject) 0);
        }
    }

    public void onFailure(Throwable th, JSONArray jSONArray) {
    }

    public void onFailure(Throwable th, JSONObject jSONObject) {
    }

    public void onSuccess(int i, JSONArray jSONArray) {
        onSuccess(jSONArray);
    }

    public void onSuccess(int i, JSONObject jSONObject) {
        onSuccess(jSONObject);
    }

    public void onSuccess(JSONArray jSONArray) {
    }

    public void onSuccess(JSONObject jSONObject) {
    }

    protected Object parseResponse(String str) {
        Object obj = null;
        String trim = str.trim();
        if (trim.startsWith("{") || trim.startsWith("[")) {
            obj = new JSONTokener(trim).nextValue();
        }
        return obj == null ? trim : obj;
    }

    protected void sendSuccessMessage(int i, String str) {
        if (i != 204) {
            try {
                Object parseResponse = parseResponse(str);
                sendMessage(obtainMessage(SUCCESS_JSON_MESSAGE, new Object{Integer.valueOf(i), parseResponse}));
            } catch (JSONException e) {
                sendFailureMessage(e, str);
            }
        } else {
            sendMessage(obtainMessage(SUCCESS_JSON_MESSAGE, new Object{Integer.valueOf(i), new JSONObject()}));
        }
    }
}