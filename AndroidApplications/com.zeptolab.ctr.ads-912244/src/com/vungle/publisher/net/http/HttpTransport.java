package com.vungle.publisher.net.http;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.heyzap.http.AsyncHttpClient;
import com.vungle.log.Logger;
import com.vungle.publisher.bn;
import com.vungle.publisher.cc;
import com.vungle.publisher.net.http.HttpRequest.a;
import java.io.IOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Iterator;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class HttpTransport {
    static {
        if (VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }

    @Inject
    HttpTransport() {
    }

    public static bn a(HttpRequest httpRequest) {
        try {
            String str;
            String str2 = httpRequest.b;
            a a = httpRequest.a();
            Logger.d(Logger.NETWORK_TAG, a + " " + str2);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(httpRequest.b).openConnection();
            httpURLConnection.setConnectTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
            httpURLConnection.setReadTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
            httpURLConnection.setUseCaches(false);
            if (a != null) {
                httpURLConnection.setRequestMethod(a.toString());
            }
            Bundle bundle = httpRequest.c;
            if (bundle != null) {
                Iterator it = bundle.keySet().iterator();
                while (it.hasNext()) {
                    str = (String) it.next();
                    String string = bundle.getString(str);
                    if (string == null) {
                        String[] stringArray = bundle.getStringArray(str);
                        int length = stringArray.length;
                        int i = 0;
                        while (i < length) {
                            String str3 = stringArray[i];
                            Logger.v(Logger.NETWORK_TAG, new StringBuilder("request header: ").append(str).append(": ").append(str3).toString());
                            httpURLConnection.addRequestProperty(str, str3);
                            i++;
                        }
                    } else {
                        Logger.v(Logger.NETWORK_TAG, new StringBuilder("request header: ").append(str).append(": ").append(string).toString());
                        httpURLConnection.addRequestProperty(str, string);
                    }
                }
            }
            str = httpRequest.d;
            if (!TextUtils.isEmpty(str)) {
                Logger.d(Logger.NETWORK_TAG, new StringBuilder("request body: ").append(str).toString());
                httpURLConnection.setDoOutput(true);
                httpURLConnection.getOutputStream().write(str.getBytes());
            }
            int responseCode = httpURLConnection.getResponseCode();
            Logger.d(Logger.NETWORK_TAG, new StringBuilder("HTTP response code: ").append(responseCode).append(", content-type: ").append(httpURLConnection.getContentType()).append(" for ").append(a).append(" ").append(str2).toString());
            return bn.a(responseCode, httpURLConnection);
        } catch (MalformedURLException e) {
            Logger.d(Logger.NETWORK_TAG, cc.a(e));
            return bn.a(601);
        } catch (ConnectException e2) {
            Logger.d(Logger.NETWORK_TAG, cc.a(e2));
            return bn.a(602);
        } catch (SocketTimeoutException e3) {
            Logger.d(Logger.NETWORK_TAG, cc.a(e3));
            return bn.a(603);
        } catch (IOException e4) {
            Logger.w(Logger.NETWORK_TAG, cc.a(e4));
            return bn.a(600);
        }
    }
}