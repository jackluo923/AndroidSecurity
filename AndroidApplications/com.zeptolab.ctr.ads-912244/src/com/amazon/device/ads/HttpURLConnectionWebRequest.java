package com.amazon.device.ads;

import com.amazon.device.ads.WebRequest.HttpMethod;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.amazon.device.ads.WebRequest.WebRequestStatus;
import com.amazon.device.ads.WebRequest.WebResponse;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map.Entry;

class HttpURLConnectionWebRequest extends WebRequest {
    private static final String m;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[HttpMethod.values().length];
            try {
                a[HttpMethod.GET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[HttpMethod.POST.ordinal()] = 2;
        }
    }

    static {
        m = HttpURLConnectionWebRequest.class.getSimpleName();
    }

    HttpURLConnectionWebRequest() {
    }

    private void c(HttpURLConnection httpURLConnection) {
        OutputStreamWriter outputStreamWriter;
        Throwable th;
        StringBuilder stringBuilder = new StringBuilder();
        if (this.a != null) {
            stringBuilder.append(this.a);
        } else if (!(this.g == null || this.g.isEmpty())) {
            Iterator it = this.g.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                stringBuilder.append((String) entry.getKey()).append("=").append(Utils.getURLEncodedString((String) entry.getValue())).append("&");
            }
            stringBuilder.deleteCharAt(stringBuilder.lastIndexOf("&"));
        }
        if (this.h && getRequestBody() != null) {
            Log.d(c(), "Request Body: %s", new Object[]{getRequestBody()});
        }
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), HTMLEncoder.ENCODE_NAME_DEFAULT);
            try {
                outputStreamWriter.write(stringBuilder.toString());
                if (outputStreamWriter != null) {
                    try {
                        outputStreamWriter.close();
                    } catch (IOException e) {
                        th = e;
                        Log.e(c(), "Problem while closing output stream writer for request body: %s", new Object[]{th.getMessage()});
                        throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", th);
                    }
                }
            } catch (IOException e2) {
                th = e2;
                Log.e(c(), "Problem while creating output steam for request body: %s", new Object[]{th.getMessage()});
                throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "Problem while creating output steam for request body", th);
            }
        } catch (IOException e3) {
            th = e3;
            outputStreamWriter = outputStreamWriter2;
            try {
                Log.e(c(), "Problem while creating output steam for request body: %s", new Object[]{th.getMessage()});
                throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "Problem while creating output steam for request body", th);
            } catch (Throwable th2) {
                th = th2;
                if (outputStreamWriter != null) {
                    outputStreamWriter.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStreamWriter = outputStreamWriter2;
            if (outputStreamWriter != null) {
                try {
                    outputStreamWriter.close();
                } catch (IOException e4) {
                    th = e4;
                    Log.e(c(), "Problem while closing output stream writer for request body: %s", new Object[]{th.getMessage()});
                    throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", th);
                }
            }
            throw th;
        }
    }

    protected WebResponse a(URL url) {
        int i = 1;
        int i2 = 0;
        try {
            HttpURLConnection b = b(url);
            a(b);
            try {
                b.connect();
                return b(b);
            } catch (SocketTimeoutException e) {
                th = e;
                c = c();
                str = "Socket timed out while connecting to URL: %s";
                objArr = new Object[i];
                objArr[i2] = th.getMessage();
                Log.e(c, str, objArr);
                throw new WebRequestException(this, WebRequestStatus.NETWORK_TIMEOUT, "Socket timed out while connecting to URL", th);
            } catch (IOException e2) {
                th = e2;
                c = c();
                str = "Problem while connecting to URL: %s";
                objArr = new Object[i];
                objArr[i2] = th.getMessage();
                Log.e(c, str, objArr);
                throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "Problem while connecting to URL", th);
            }
        } catch (IOException e3) {
            Throwable th2 = e3;
            String c2 = c();
            String str2 = "Problem while opening the URL connection: %s";
            Object[] objArr2 = new Object[i];
            objArr2[i2] = th2.getMessage();
            Log.e(c2, str2, objArr2);
            throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "Problem while opening the URL connection", th2);
        }
    }

    protected void a(HttpURLConnection httpURLConnection) {
        boolean z = true;
        boolean z2 = false;
        try {
            httpURLConnection.setRequestMethod(getHttpMethod().name());
            Iterator it = this.e.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (!(entry.getValue() == null || ((String) entry.getValue()).equals(AdTrackerConstants.BLANK))) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            httpURLConnection.setConnectTimeout(getTimeout());
            httpURLConnection.setReadTimeout(getTimeout());
            a(httpURLConnection.getURL().toString());
            switch (AnonymousClass_1.a[getHttpMethod().ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    httpURLConnection.setDoOutput(z2);
                case GoogleScorer.CLIENT_PLUS:
                    httpURLConnection.setDoOutput(z);
                    c(httpURLConnection);
                default:
                    break;
            }
        } catch (ProtocolException e) {
            Throwable th = e;
            String c = c();
            String str = "Invalid client protocol: %s";
            Object[] objArr = new Object[z];
            objArr[z2] = th.getMessage();
            Log.e(c, str, objArr);
            throw new WebRequestException(this, WebRequestStatus.INVALID_CLIENT_PROTOCOL, "Invalid client protocol", th);
        }
    }

    protected WebResponse b(HttpURLConnection httpURLConnection) {
        int i = 1;
        int i2 = 0;
        WebResponse webResponse = new WebResponse(this);
        webResponse.b(c());
        webResponse.a(this.i);
        try {
            webResponse.a(httpURLConnection.getResponseCode());
            webResponse.c(httpURLConnection.getResponseMessage());
            if (webResponse.getHttpStatusCode() == 200) {
                try {
                    webResponse.a(httpURLConnection.getInputStream());
                } catch (IOException e) {
                    th = e;
                    c = c();
                    str = "IOException while reading the input stream from response: %s";
                    objArr = new Object[i];
                    objArr[i2] = th.getMessage();
                    Log.e(c, str, objArr);
                    throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "IOException while reading the input stream from response", th);
                }
            }
            return webResponse;
        } catch (SocketTimeoutException e2) {
            Throwable th2 = e2;
            String c2 = c();
            String str2 = "Socket Timeout while getting the response status code: %s";
            Object[] objArr2 = new Object[i];
            objArr2[i2] = th2.getMessage();
            Log.e(c2, str2, objArr2);
            throw new WebRequestException(this, WebRequestStatus.NETWORK_TIMEOUT, "Socket Timeout while getting the response status code", th2);
        } catch (IOException e3) {
            th2 = e3;
            c2 = c();
            str2 = "IOException while getting the response status code: %s";
            objArr2 = new Object[i];
            objArr2[i2] = th2.getMessage();
            Log.e(c2, str2, objArr2);
            throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "IOException while getting the response status code", th2);
        }
    }

    protected String b() {
        return m;
    }

    protected HttpURLConnection b(URL url) {
        return (HttpURLConnection) url.openConnection();
    }
}