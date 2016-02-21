package com.inmobi.androidsdk.impl.net;

public interface HttpRequestCallback {
    public static final int HTTP_FAILURE = 1;
    public static final int HTTP_SUCCESS = 0;

    void notifyResult(int i, Object obj);
}