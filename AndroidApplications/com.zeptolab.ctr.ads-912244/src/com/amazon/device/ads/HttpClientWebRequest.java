package com.amazon.device.ads;

import com.amazon.device.ads.WebRequest.HttpMethod;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.amazon.device.ads.WebRequest.WebRequestStatus;
import com.amazon.device.ads.WebRequest.WebResponse;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

class HttpClientWebRequest extends WebRequest {
    private static final String m;
    private static final int n = 8192;

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
        m = HttpClientWebRequest.class.getSimpleName();
    }

    HttpClientWebRequest() {
    }

    private void a(HttpPost httpPost) {
        String str = this.d;
        if (str == null) {
            str = HTMLEncoder.ENCODE_NAME_DEFAULT;
        }
        String str2 = this.c;
        if (str2 == null) {
            str2 = WebRequest.CONTENT_TYPE_PLAIN_TEXT;
        }
        if (this.a != null) {
            a(httpPost, str2, str);
        } else {
            a(httpPost, str);
        }
    }

    private void a(HttpPost httpPost, String str) {
        List arrayList = new ArrayList();
        Iterator it = this.g.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
        }
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, HTMLEncoder.ENCODE_NAME_DEFAULT));
        } catch (UnsupportedEncodingException e) {
            Throwable th = e;
            Log.e(c(), "Unsupported character encoding used while creating the request: %s", new Object[]{th.getMessage()});
            throw new WebRequestException(this, WebRequestStatus.UNSUPPORTED_ENCODING, "Unsupported character encoding used while creating the request", th);
        }
    }

    private void a(HttpPost httpPost, String str, String str2) {
        try {
            HttpEntity stringEntity = new StringEntity(this.a, str2);
            stringEntity.setContentType(str);
            httpPost.setEntity(stringEntity);
        } catch (UnsupportedEncodingException e) {
            Throwable th = e;
            Log.e(c(), "Unsupported character encoding used while creating the request. ", new Object[]{th.getMessage()});
            throw new WebRequestException(this, WebRequestStatus.UNSUPPORTED_ENCODING, "Unsupported character encoding used while creating the request.", th);
        }
    }

    protected WebResponse a(URL url) {
        int i = 1;
        int i2 = 0;
        try {
            return a(new DefaultHttpClient(a()).execute(b(url)));
        } catch (ClientProtocolException e) {
            Throwable th = e;
            String c = c();
            String str = "Invalid client protocol: %s";
            Object[] objArr = new Object[i];
            objArr[i2] = th.getMessage();
            Log.e(c, str, objArr);
            throw new WebRequestException(this, WebRequestStatus.INVALID_CLIENT_PROTOCOL, "Invalid client protocol", th);
        } catch (IOException e2) {
            th = e2;
            c = c();
            str = "IOException during client execution: %s";
            objArr = new Object[i];
            objArr[i2] = th.getMessage();
            Log.e(c, str, objArr);
            throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "IOException during client execution", th);
        }
    }

    protected WebResponse a(HttpResponse httpResponse) {
        WebResponse webResponse = new WebResponse(this);
        webResponse.b(c());
        webResponse.a(this.i);
        webResponse.a(httpResponse.getStatusLine().getStatusCode());
        webResponse.c(httpResponse.getStatusLine().getReasonPhrase());
        if (webResponse.getHttpStatusCode() == 200) {
            HttpEntity entity = httpResponse.getEntity();
            if (!(entity == null || entity.getContentLength() == 0)) {
                try {
                    webResponse.a(entity.getContent());
                } catch (IOException e) {
                    Throwable th = e;
                    Log.e(c(), "IOException while reading the input stream from response: %s", new Object[]{th.getMessage()});
                    throw new WebRequestException(this, WebRequestStatus.NETWORK_FAILURE, "IOException while reading the input stream from response", th);
                }
            }
        }
        return webResponse;
    }

    protected HttpParams a() {
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, getTimeout());
        HttpConnectionParams.setSoTimeout(basicHttpParams, getTimeout());
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, n);
        return basicHttpParams;
    }

    protected String b() {
        return m;
    }

    protected HttpRequestBase b(URL url) {
        int i = 1;
        int i2 = 0;
        try {
            HttpRequestBase httpRequestBase;
            URI c = c(url);
            switch (AnonymousClass_1.a[getHttpMethod().ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    httpRequestBase = new HttpGet(c);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    HttpRequestBase httpPost = new HttpPost(c);
                    a((HttpPost) httpPost);
                    httpRequestBase = httpPost;
                    break;
                default:
                    httpRequestBase = null;
                    break;
            }
            Iterator it = this.e.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (!(entry.getValue() == null || ((String) entry.getValue()).equals(AdTrackerConstants.BLANK))) {
                    httpRequestBase.addHeader((String) entry.getKey(), (String) entry.getValue());
                }
            }
            a(c.toString());
            if (this.h && getRequestBody() != null) {
                String c2 = c();
                str = "Request Body: %s";
                objArr = new Object[i];
                objArr[i2] = getRequestBody();
                Log.d(c2, str, objArr);
            }
            return httpRequestBase;
        } catch (URISyntaxException e) {
            String str2;
            Object[] objArr2;
            Throwable th = e;
            str2 = c();
            String str3 = "Problem with URI syntax: %s";
            objArr2 = new Object[i];
            objArr2[i2] = th.getMessage();
            Log.e(str2, str3, objArr2);
            throw new WebRequestException(this, WebRequestStatus.MALFORMED_URL, "Problem with URI syntax", th);
        }
    }
}