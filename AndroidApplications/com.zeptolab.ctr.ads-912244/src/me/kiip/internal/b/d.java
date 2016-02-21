package me.kiip.internal.b;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.sdk.VunglePub.Gender;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Iterator;
import java.util.Map;
import me.kiip.internal.a.l;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class d implements f {
    protected final HttpClient a;

    public d(HttpClient httpClient) {
        this.a = httpClient;
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, l lVar) {
        byte[] o = lVar.o();
        if (o != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(o));
        }
    }

    private static void a(HttpUriRequest httpUriRequest, Map map) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            httpUriRequest.setHeader(str, (String) map.get(str));
        }
    }

    static HttpUriRequest b(l lVar, Map map) {
        HttpEntityEnclosingRequestBase httpPost;
        switch (lVar.a()) {
            case Gender.UNKNOWN:
                byte[] k = lVar.k();
                if (k == null) {
                    return new HttpGet(lVar.c());
                }
                HttpUriRequest httpPost2 = new HttpPost(lVar.c());
                httpPost2.addHeader("Content-Type", lVar.j());
                httpPost2.setEntity(new ByteArrayEntity(k));
                return httpPost2;
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return new HttpGet(lVar.c());
            case GoogleScorer.CLIENT_GAMES:
                httpPost = new HttpPost(lVar.c());
                httpPost.addHeader("Content-Type", lVar.n());
                a(httpPost, lVar);
                return httpPost;
            case GoogleScorer.CLIENT_PLUS:
                httpPost = new HttpPut(lVar.c());
                httpPost.addHeader("Content-Type", lVar.n());
                a(httpPost, lVar);
                return httpPost;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return new HttpDelete(lVar.c());
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    public HttpResponse a(l lVar, Map map) {
        HttpUriRequest b = b(lVar, map);
        a(b, map);
        a(b, lVar.g());
        a(b);
        HttpParams params = b.getParams();
        int r = lVar.r();
        HttpConnectionParams.setConnectionTimeout(params, AdTrackerConstants.WEBVIEW_NOERROR);
        HttpConnectionParams.setSoTimeout(params, r);
        return this.a.execute(b);
    }

    protected void a(HttpUriRequest httpUriRequest) {
    }
}