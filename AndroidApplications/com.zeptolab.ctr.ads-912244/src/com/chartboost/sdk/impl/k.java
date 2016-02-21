package com.chartboost.sdk.impl;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import com.brightcove.player.media.MediaService;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public final class k {
    private static ExecutorService a;
    private static ThreadFactory b;
    private static HttpClient c;

    final class AnonymousClass_2 extends DefaultHttpClient {
        final /* synthetic */ CBPreferences a;
        final /* synthetic */ Application b;

        AnonymousClass_2(CBPreferences cBPreferences, Application application) {
            this.a = cBPreferences;
            this.b = application;
        }

        protected SocketFactory a() {
            try {
                Object newInstance = Class.forName("android.net.SSLSessionCache").getConstructor(new Class[]{Context.class}).newInstance(new Object[]{this.b});
                return (SocketFactory) Class.forName("android.net.SSLCertificateSocketFactory").getMethod("getHttpSocketFactory", new Class[]{Integer.TYPE, cls}).invoke(null, new Object[]{Integer.valueOf(this.a.getTimeout()), newInstance});
            } catch (Exception e) {
                CBLogging.a("CBAsync:HttpClientProvider", "Unable to use android.net.SSLCertificateSocketFactory to get a SSL session caching socket factory, falling back to a non-caching socket factory", e);
                return SSLSocketFactory.getSocketFactory();
            }
        }

        protected ClientConnectionManager createClientConnectionManager() {
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(MediaService.DEFAULT_MEDIA_DELIVERY, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", a(), 443));
            HttpParams params = getParams();
            HttpConnectionParams.setConnectionTimeout(params, this.a.getTimeout());
            HttpConnectionParams.setSoTimeout(params, this.a.getTimeout());
            HttpProtocolParams.setUserAgent(params, k.b(this.b, HttpProtocolParams.getUserAgent(params)));
            return new ThreadSafeClientConnManager(params, schemeRegistry);
        }
    }

    static {
        a = null;
        b = null;
        c = null;
    }

    public static ExecutorService a() {
        if (b == null) {
            b = new ThreadFactory() {
                private final AtomicInteger a;

                {
                    this.a = new AtomicInteger(1);
                }

                public Thread newThread(Runnable runnable) {
                    return new Thread(runnable, "Chartboost Thread #" + this.a.getAndIncrement());
                }
            };
        }
        if (a == null) {
            a = Executors.newFixedThreadPool(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, b);
        }
        return a;
    }

    private static String b(Application application, String str) {
        try {
            String str2 = application.getPackageManager().getPackageInfo(application.getPackageName(), 0).versionName;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(application.getPackageName());
            stringBuilder.append("/");
            stringBuilder.append(str2);
            stringBuilder.append(" (");
            stringBuilder.append("Linux; U; Android ");
            stringBuilder.append(VERSION.RELEASE);
            stringBuilder.append("; ");
            stringBuilder.append(Locale.getDefault());
            stringBuilder.append("; ");
            stringBuilder.append(Build.PRODUCT);
            stringBuilder.append(")");
            if (str != null) {
                stringBuilder.append(" ");
                stringBuilder.append(str);
            }
            return stringBuilder.toString();
        } catch (NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    protected static HttpClient b() {
        Throwable th;
        if (c != null) {
            return c;
        }
        try {
            c = new AnonymousClass_2(CBPreferences.getInstance(), (Application) Chartboost.sharedChartboost().getContext().getApplicationContext());
            return c;
        } catch (Exception e) {
            th = e;
            CBLogging.a("CBAsync", "Exception raised getting a Chartboost HTTPClient on which to run any network request", th);
            try {
                HttpClient defaultHttpClient = new DefaultHttpClient();
                ClientConnectionManager connectionManager = defaultHttpClient.getConnectionManager();
                HttpParams params = defaultHttpClient.getParams();
                c = new DefaultHttpClient(new ThreadSafeClientConnManager(params, connectionManager.getSchemeRegistry()), params);
                return c;
            } catch (Exception e2) {
                CBLogging.a("CBAsync", "Exception raised creating a simple HTTP client", th);
                c = new DefaultHttpClient();
                return c;
            }
        }
    }
}