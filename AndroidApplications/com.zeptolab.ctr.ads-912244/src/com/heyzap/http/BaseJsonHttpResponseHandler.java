package com.heyzap.http;

import com.zeptolab.utils.HTMLEncoder;
import org.apache.http.Header;

public abstract class BaseJsonHttpResponseHandler extends TextHttpResponseHandler {
    private static final String LOG_TAG = "BaseJsonHttpResponseHandler";

    public BaseJsonHttpResponseHandler() {
        this(HTMLEncoder.ENCODE_NAME_DEFAULT);
    }

    public BaseJsonHttpResponseHandler(String str) {
        super(str);
    }

    public final void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        if (str != null) {
            new Thread(new h(this, str, i, headerArr, th)).start();
        } else {
            onFailure(i, headerArr, th, null, null);
        }
    }

    public abstract void onFailure(int i, Header[] headerArr, Throwable th, String str, Object obj);

    public final void onSuccess(int i, Header[] headerArr, String str) {
        if (i != 204) {
            new Thread(new e(this, str, i, headerArr)).start();
        } else {
            onSuccess(i, headerArr, null, null);
        }
    }

    public abstract void onSuccess(int i, Header[] headerArr, String str, Object obj);

    protected abstract Object parseResponse(String str, boolean z);
}