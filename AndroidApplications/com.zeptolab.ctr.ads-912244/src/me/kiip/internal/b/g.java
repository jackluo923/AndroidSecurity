package me.kiip.internal.b;

import com.vungle.publisher.VungleService;
import com.vungle.sdk.VunglePub.Gender;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import me.kiip.internal.a.l;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class g implements f {
    private final a a;
    private final SSLSocketFactory b;

    public static interface a {
        String a_(String str);
    }

    public g() {
        this(null);
    }

    public g(a aVar) {
        this(aVar, null);
    }

    public g(a aVar, SSLSocketFactory sSLSocketFactory) {
        this.a = aVar;
        this.b = sSLSocketFactory;
    }

    private HttpURLConnection a(URL url, l lVar) {
        HttpURLConnection a = a(url);
        int r = lVar.r();
        a.setConnectTimeout(r);
        a.setReadTimeout(r);
        if (lVar.p()) {
            a.setUseCaches(false);
        }
        a.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.b != null) {
            ((HttpsURLConnection) a).setSSLSocketFactory(this.b);
        }
        return a;
    }

    private static HttpEntity a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        HttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(inputStream);
        basicHttpEntity.setContentLength((long) httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    static void a(HttpURLConnection httpURLConnection, l lVar) {
        switch (lVar.a()) {
            case Gender.UNKNOWN:
                byte[] k = lVar.k();
                if (k != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", lVar.j());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(k);
                    dataOutputStream.close();
                }
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                httpURLConnection.setRequestMethod("GET");
            case GoogleScorer.CLIENT_GAMES:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, lVar);
            case GoogleScorer.CLIENT_PLUS:
                httpURLConnection.setRequestMethod("PUT");
                b(httpURLConnection, lVar);
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                httpURLConnection.setRequestMethod("DELETE");
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static void b(HttpURLConnection httpURLConnection, l lVar) {
        byte[] o = lVar.o();
        if (o != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", lVar.n());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(o);
            dataOutputStream.close();
        }
    }

    protected HttpURLConnection a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    public HttpResponse a(l lVar, Map map) {
        String a;
        String c = lVar.c();
        HashMap hashMap = new HashMap();
        hashMap.putAll(lVar.g());
        hashMap.putAll(map);
        if (this.a != null) {
            a = this.a.a(c);
            if (a == null) {
                throw new IOException("URL blocked by rewriter: " + c);
            }
        } else {
            a = c;
        }
        HttpURLConnection a2 = a(new URL(a), lVar);
        Iterator it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            a = (String) it.next();
            a2.addRequestProperty(a, (String) hashMap.get(a));
        }
        a(a2, lVar);
        ProtocolVersion protocolVersion = new ProtocolVersion(VungleService.EXTERNAL_REQUEST_ACTION_SHORT_NAME, 1, 1);
        if (a2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        HttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, a2.getResponseCode(), a2.getResponseMessage()));
        basicHttpResponse.setEntity(a(a2));
        Iterator it2 = a2.getHeaderFields().entrySet().iterator();
        while (it2.hasNext()) {
            Entry entry = (Entry) it2.next();
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader((String) entry.getKey(), (String) ((List) entry.getValue()).get(0)));
            }
        }
        return basicHttpResponse;
    }
}