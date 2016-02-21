package com.heyzap.http;

import android.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

class d implements Runnable {
    private final AbstractHttpClient a;
    private final HttpContext b;
    private final HttpUriRequest c;
    private final ResponseHandlerInterface d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;

    public d(AbstractHttpClient abstractHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, ResponseHandlerInterface responseHandlerInterface) {
        this.f = false;
        this.g = false;
        this.h = false;
        this.a = abstractHttpClient;
        this.b = httpContext;
        this.c = httpUriRequest;
        this.d = responseHandlerInterface;
    }

    private void c() {
        if (!a()) {
            if (this.c.getURI().getScheme() == null) {
                throw new MalformedURLException("No valid URI scheme was provided");
            }
            HttpResponse execute = this.a.execute(this.c, this.b);
            if (!a() && this.d != null) {
                this.d.sendResponseMessage(execute);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d_() {
        throw new UnsupportedOperationException("Method not decompiled: com.heyzap.http.d.d():void");
        /*
        r7 = this;
        r1 = 1;
        r0 = 0;
        r2 = r7.a;
        r3 = r2.getHttpRequestRetryHandler();
        r2 = r1;
    L_0x0009:
        if (r2 == 0) goto L_0x0075;
    L_0x000b:
        r7.c();	 Catch:{ UnknownHostException -> 0x000f, NullPointerException -> 0x0078, IOException -> 0x00a2 }
    L_0x000e:
        return;
    L_0x000f:
        r0 = move-exception;
        r2 = new java.io.IOException;	 Catch:{ Exception -> 0x0050 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0050 }
        r4.<init>();	 Catch:{ Exception -> 0x0050 }
        r5 = "UnknownHostException exception: ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0050 }
        r0 = r0.getMessage();	 Catch:{ Exception -> 0x0050 }
        r0 = r4.append(r0);	 Catch:{ Exception -> 0x0050 }
        r0 = r0.toString();	 Catch:{ Exception -> 0x0050 }
        r2.<init>(r0);	 Catch:{ Exception -> 0x0050 }
        r0 = r7.e;	 Catch:{ Exception -> 0x0050 }
        if (r0 <= 0) goto L_0x0076;
    L_0x0030:
        r0 = r7.e;	 Catch:{ Exception -> 0x0050 }
        r0 = r0 + 1;
        r7.e = r0;	 Catch:{ Exception -> 0x0050 }
        r4 = r7.b;	 Catch:{ Exception -> 0x0050 }
        r0 = r3.retryRequest(r2, r0, r4);	 Catch:{ Exception -> 0x0050 }
        if (r0 == 0) goto L_0x0076;
    L_0x003e:
        r0 = r1;
    L_0x003f:
        r6 = r2;
        r2 = r0;
        r0 = r6;
    L_0x0042:
        if (r2 == 0) goto L_0x0009;
    L_0x0044:
        r4 = r7.d;	 Catch:{ Exception -> 0x0050 }
        if (r4 == 0) goto L_0x0009;
    L_0x0048:
        r4 = r7.d;	 Catch:{ Exception -> 0x0050 }
        r5 = r7.e;	 Catch:{ Exception -> 0x0050 }
        r4.sendRetryMessage(r5);	 Catch:{ Exception -> 0x0050 }
        goto L_0x0009;
    L_0x0050:
        r0 = move-exception;
        r1 = r0;
        r0 = "AsyncHttpRequest";
        r2 = "Unhandled exception origin cause";
        android.util.Log.e(r0, r2, r1);
        r0 = new java.io.IOException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Unhandled exception: ";
        r2 = r2.append(r3);
        r1 = r1.getMessage();
        r1 = r2.append(r1);
        r1 = r1.toString();
        r0.<init>(r1);
    L_0x0075:
        throw r0;
    L_0x0076:
        r0 = 0;
        goto L_0x003f;
    L_0x0078:
        r2 = move-exception;
        r0 = new java.io.IOException;	 Catch:{ Exception -> 0x0050 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0050 }
        r4.<init>();	 Catch:{ Exception -> 0x0050 }
        r5 = "NPE in HttpClient: ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0050 }
        r2 = r2.getMessage();	 Catch:{ Exception -> 0x0050 }
        r2 = r4.append(r2);	 Catch:{ Exception -> 0x0050 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0050 }
        r0.<init>(r2);	 Catch:{ Exception -> 0x0050 }
        r2 = r7.e;	 Catch:{ Exception -> 0x0050 }
        r2 = r2 + 1;
        r7.e = r2;	 Catch:{ Exception -> 0x0050 }
        r4 = r7.b;	 Catch:{ Exception -> 0x0050 }
        r2 = r3.retryRequest(r0, r2, r4);	 Catch:{ Exception -> 0x0050 }
        goto L_0x0042;
    L_0x00a2:
        r0 = move-exception;
        r2 = r7.a();	 Catch:{ Exception -> 0x0050 }
        if (r2 != 0) goto L_0x000e;
    L_0x00a9:
        r2 = r7.e;	 Catch:{ Exception -> 0x0050 }
        r2 = r2 + 1;
        r7.e = r2;	 Catch:{ Exception -> 0x0050 }
        r4 = r7.b;	 Catch:{ Exception -> 0x0050 }
        r2 = r3.retryRequest(r0, r2, r4);	 Catch:{ Exception -> 0x0050 }
        goto L_0x0042;
        */
    }

    private synchronized void e() {
        if (!(this.h || !this.f || this.g)) {
            this.g = true;
            if (this.d != null) {
                this.d.sendCancelMessage();
            }
        }
    }

    public boolean a() {
        if (this.f) {
            e();
        }
        return this.f;
    }

    public boolean a(boolean z) {
        this.f = true;
        if (!(!z || this.c == null || this.c.isAborted())) {
            this.c.abort();
        }
        return a();
    }

    public boolean b() {
        return a() || this.h;
    }

    public void run() {
        if (!a()) {
            if (this.d != null) {
                this.d.sendStartMessage();
            }
            if (!a()) {
                try {
                    d();
                } catch (IOException e) {
                    Throwable th = e;
                    if (a() || this.d == null) {
                        Log.e("AsyncHttpRequest", "makeRequestWithRetries returned error, but handler is null", th);
                    } else {
                        this.d.sendFailureMessage(0, null, null, th);
                    }
                }
                if (!a()) {
                    if (this.d != null) {
                        this.d.sendFinishMessage();
                    }
                    this.h = true;
                }
            }
        }
    }
}