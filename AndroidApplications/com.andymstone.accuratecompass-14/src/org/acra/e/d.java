package org.acra.e;

import java.io.IOException;
import java.net.SocketTimeoutException;
import org.acra.ACRA;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

class d implements HttpRequestRetryHandler {
    private final HttpParams a;
    private final int b;

    private d(HttpParams httpParams, int i) {
        this.a = httpParams;
        this.b = i;
    }

    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        if (!iOException instanceof SocketTimeoutException || i > this.b) {
            ACRA.log.a(ACRA.LOG_TAG, new StringBuilder("SocketTimeOut but exceeded max number of retries : ").append(this.b).toString());
        } else {
            if (this.a != null) {
                int soTimeout = HttpConnectionParams.getSoTimeout(this.a) * 2;
                HttpConnectionParams.setSoTimeout(this.a, soTimeout);
                ACRA.log.a(ACRA.LOG_TAG, new StringBuilder("SocketTimeOut - increasing time out to ").append(soTimeout).append(" millis and trying again").toString());
            } else {
                ACRA.log.a(ACRA.LOG_TAG, "SocketTimeOut - no HttpParams, cannot increase time out. Trying again with current settings");
            }
            return true;
        }
        return false;
    }
}