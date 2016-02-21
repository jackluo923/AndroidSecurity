package com.loopj.android.http;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class RetryHandler implements HttpRequestRetryHandler {
    private static final int RETRY_SLEEP_TIME_MILLIS = 1500;
    private static HashSet exceptionBlacklist;
    private static HashSet exceptionWhitelist;
    private final int maxRetries;

    static {
        exceptionWhitelist = new HashSet();
        exceptionBlacklist = new HashSet();
        exceptionWhitelist.add(NoHttpResponseException.class);
        exceptionWhitelist.add(UnknownHostException.class);
        exceptionWhitelist.add(SocketException.class);
        exceptionBlacklist.add(InterruptedIOException.class);
        exceptionBlacklist.add(SSLHandshakeException.class);
    }

    public RetryHandler(int i) {
        this.maxRetries = i;
    }

    protected boolean isInList(HashSet hashSet, Throwable th) {
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((Class) it.next()).isInstance(th)) {
                return true;
            }
        }
        return false;
    }

    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        boolean z;
        boolean z2 = true;
        Boolean bool = (Boolean) httpContext.getAttribute("http.request_sent");
        int i2 = bool != null && bool.booleanValue();
        if (i > this.maxRetries) {
            z = false;
        } else if (isInList(exceptionBlacklist, iOException)) {
            z = false;
        } else if (isInList(exceptionWhitelist, iOException)) {
            z = true;
        } else if (i2 == 0) {
            z = true;
        } else {
            z = true;
        }
        if (!z) {
            z2 = z;
        } else if (((HttpUriRequest) httpContext.getAttribute("http.request")).getMethod().equals("POST")) {
            z2 = false;
        }
        if (z2) {
            SystemClock.sleep(1500);
        } else {
            iOException.printStackTrace();
        }
        return z2;
    }
}