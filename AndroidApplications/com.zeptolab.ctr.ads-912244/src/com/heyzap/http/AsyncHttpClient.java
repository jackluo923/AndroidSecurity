package com.heyzap.http;

import android.content.Context;
import com.brightcove.player.media.MediaService;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public class AsyncHttpClient {
    public static final int DEFAULT_MAX_CONNECTIONS = 10;
    public static final int DEFAULT_MAX_RETRIES = 5;
    public static final int DEFAULT_RETRY_SLEEP_TIME_MILLIS = 1500;
    public static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    public static final int DEFAULT_SOCKET_TIMEOUT = 10000;
    public static final String ENCODING_GZIP = "gzip";
    public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String LOG_TAG = "AsyncHttpClient";
    public static final String VERSION = "1.4.5";
    private final Map clientHeaderMap;
    private final DefaultHttpClient httpClient;
    private final HttpContext httpContext;
    private boolean isUrlEncodingEnabled;
    private int maxConnections;
    private final Map requestMap;
    private ExecutorService threadPool;
    private int timeout;

    private static class a extends HttpEntityWrapper {
        public a(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public InputStream getContent() {
            return new GZIPInputStream(this.wrappedEntity.getContent());
        }

        public long getContentLength() {
            return -1;
        }
    }

    public AsyncHttpClient() {
        this(false, 80, 443);
    }

    public AsyncHttpClient(int i) {
        this(false, i, 443);
    }

    public AsyncHttpClient(int i, int i2) {
        this(false, i, i2);
    }

    public AsyncHttpClient(SchemeRegistry schemeRegistry) {
        this.maxConnections = 10;
        this.timeout = 10000;
        this.isUrlEncodingEnabled = true;
        HttpParams basicHttpParams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basicHttpParams, (long) this.timeout);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(this.maxConnections));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, DEFAULT_MAX_CONNECTIONS);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.timeout);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.timeout);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, DEFAULT_SOCKET_BUFFER_SIZE);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setUserAgent(basicHttpParams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[]{VERSION}));
        ClientConnectionManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
        this.threadPool = Executors.newCachedThreadPool();
        this.requestMap = new WeakHashMap();
        this.clientHeaderMap = new HashMap();
        this.httpContext = new SyncBasicHttpContext(new BasicHttpContext());
        this.httpClient = new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        this.httpClient.addRequestInterceptor(new a(this));
        this.httpClient.addResponseInterceptor(new b(this));
        this.httpClient.setHttpRequestRetryHandler(new t(5, 1500));
    }

    public AsyncHttpClient(boolean z, int i, int i2) {
        this(getDefaultSchemeRegistry(z, i, i2));
    }

    private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, HttpEntity httpEntity) {
        if (httpEntity != null) {
            httpEntityEnclosingRequestBase.setEntity(httpEntity);
        }
        return httpEntityEnclosingRequestBase;
    }

    public static void allowRetryExceptionClass(Class cls) {
        if (cls != null) {
            t.a(cls);
        }
    }

    public static void blockRetryExceptionClass(Class cls) {
        if (cls != null) {
            t.b(cls);
        }
    }

    private static SchemeRegistry getDefaultSchemeRegistry(boolean z, int i, int i2) {
        SocketFactory socketFactory;
        SchemeRegistry schemeRegistry;
        if (z) {
            if (i < 1) {
                i = 80;
            }
            if (i2 < 1) {
                i2 = 443;
            }
            socketFactory = z ? SSLSocketFactory.getSocketFactory() : MySSLSocketFactory.getFixedSocketFactory();
            schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(MediaService.DEFAULT_MEDIA_DELIVERY, PlainSocketFactory.getSocketFactory(), i));
            schemeRegistry.register(new Scheme("https", socketFactory, i2));
            return schemeRegistry;
        } else {
            if (i < 1) {
                i = 80;
            }
            if (i2 < 1) {
                i2 = 443;
            }
            if (z) {
            }
            schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(MediaService.DEFAULT_MEDIA_DELIVERY, PlainSocketFactory.getSocketFactory(), i));
            schemeRegistry.register(new Scheme("https", socketFactory, i2));
            return schemeRegistry;
        }
    }

    public static String getUrlWithQueryString(boolean z, String str, RequestParams requestParams) {
        String replace = z ? str.replace(" ", "%20") : str;
        if (requestParams == null) {
            return replace;
        }
        String paramString = requestParams.getParamString();
        return replace.contains("?") ? replace + "&" + paramString : replace + "?" + paramString;
    }

    private HttpEntity paramsToEntity(RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        if (requestParams == null) {
            return null;
        }
        try {
            return requestParams.getEntity(responseHandlerInterface);
        } catch (Throwable th) {
            Throwable th2 = th;
            if (responseHandlerInterface != null) {
                responseHandlerInterface.sendFailureMessage(0, null, null, th2);
                return null;
            } else {
                th2.printStackTrace();
                return null;
            }
        }
    }

    public void addHeader(String str, String str2) {
        this.clientHeaderMap.put(str, str2);
    }

    public void cancelRequests(Context context, boolean z) {
        List list = (List) this.requestMap.get(context);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((RequestHandle) it.next()).cancel(z);
            }
            this.requestMap.remove(context);
        }
    }

    public void clearBasicAuth() {
        this.httpClient.getCredentialsProvider().clear();
    }

    public RequestHandle delete(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpDelete(str), null, responseHandlerInterface, context);
    }

    public RequestHandle delete(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest httpDelete = new HttpDelete(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpDelete, null, responseHandlerInterface, context);
    }

    public RequestHandle delete(Context context, String str, Header[] headerArr, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest httpDelete = new HttpDelete(str);
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpDelete, null, responseHandlerInterface, context);
    }

    public RequestHandle delete(String str, ResponseHandlerInterface responseHandlerInterface) {
        return delete(null, str, responseHandlerInterface);
    }

    public RequestHandle get(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, responseHandlerInterface, context);
    }

    public RequestHandle get(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return get(context, str, null, responseHandlerInterface);
    }

    public RequestHandle get(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest httpGet = new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpGet.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpGet, null, responseHandlerInterface, context);
    }

    public RequestHandle get(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return get(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle get(String str, ResponseHandlerInterface responseHandlerInterface) {
        return get(null, str, null, responseHandlerInterface);
    }

    public HttpClient getHttpClient() {
        return this.httpClient;
    }

    public HttpContext getHttpContext() {
        return this.httpContext;
    }

    public int getMaxConnections() {
        return this.maxConnections;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public RequestHandle head(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, responseHandlerInterface, context);
    }

    public RequestHandle head(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return head(context, str, null, responseHandlerInterface);
    }

    public RequestHandle head(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest httpHead = new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpHead.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpHead, null, responseHandlerInterface, context);
    }

    public RequestHandle head(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return head(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle head(String str, ResponseHandlerInterface responseHandlerInterface) {
        return head(null, str, null, responseHandlerInterface);
    }

    public boolean isUrlEncodingEnabled() {
        return this.isUrlEncodingEnabled;
    }

    public RequestHandle post(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return post(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle post(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPost(str), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, Header[] headerArr, RequestParams requestParams, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest httpPost = new HttpPost(str);
        if (requestParams != null) {
            httpPost.setEntity(paramsToEntity(requestParams, responseHandlerInterface));
        }
        if (headerArr != null) {
            httpPost.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpPost, str2, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest addEntityToRequestBase = addEntityToRequestBase(new HttpPost(str), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle post(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return post(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle post(String str, ResponseHandlerInterface responseHandlerInterface) {
        return post(null, str, null, responseHandlerInterface);
    }

    public RequestHandle put(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return put(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle put(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPut(str), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle put(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpUriRequest addEntityToRequestBase = addEntityToRequestBase(new HttpPut(str), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle put(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return put(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle put(String str, ResponseHandlerInterface responseHandlerInterface) {
        return put(null, str, null, responseHandlerInterface);
    }

    public void removeHeader(String str) {
        this.clientHeaderMap.remove(str);
    }

    protected RequestHandle sendRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, ResponseHandlerInterface responseHandlerInterface, Context context) {
        if (str != null) {
            httpUriRequest.setHeader("Content-Type", str);
        }
        responseHandlerInterface.setRequestHeaders(httpUriRequest.getAllHeaders());
        responseHandlerInterface.setRequestURI(httpUriRequest.getURI());
        Object dVar = new d(defaultHttpClient, httpContext, httpUriRequest, responseHandlerInterface);
        this.threadPool.submit(dVar);
        RequestHandle requestHandle = new RequestHandle(dVar);
        if (context != null) {
            List list = (List) this.requestMap.get(context);
            if (list == null) {
                list = new LinkedList();
                this.requestMap.put(context, list);
            }
            list.add(requestHandle);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((RequestHandle) it.next()).shouldBeGarbageCollected()) {
                    it.remove();
                }
            }
        }
        return requestHandle;
    }

    public void setBasicAuth(String str, String str2) {
        setBasicAuth(str, str2, AuthScope.ANY);
    }

    public void setBasicAuth(String str, String str2, AuthScope authScope) {
        this.httpClient.getCredentialsProvider().setCredentials(authScope, new UsernamePasswordCredentials(str, str2));
    }

    public void setCookieStore(CookieStore cookieStore) {
        this.httpContext.setAttribute("http.cookie-store", cookieStore);
    }

    public void setEnableRedirects(boolean z) {
        this.httpClient.setRedirectHandler(new c(this, z));
    }

    public void setMaxConnections(int i) {
        if (i < 1) {
            i = DEFAULT_MAX_CONNECTIONS;
        }
        this.maxConnections = i;
        ConnManagerParams.setMaxConnectionsPerRoute(this.httpClient.getParams(), new ConnPerRouteBean(this.maxConnections));
    }

    public void setMaxRetriesAndTimeout(int i, int i2) {
        this.httpClient.setHttpRequestRetryHandler(new t(i, i2));
    }

    public void setProxy(String str, int i) {
        this.httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(str, i));
    }

    public void setProxy(String str, int i, String str2, String str3) {
        this.httpClient.getCredentialsProvider().setCredentials(new AuthScope(str, i), new UsernamePasswordCredentials(str2, str3));
        this.httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(str, i));
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", sSLSocketFactory, 443));
    }

    public void setThreadPool(ExecutorService executorService) {
        this.threadPool = executorService;
    }

    public void setTimeout(int i) {
        if (i < 1000) {
            i = DEFAULT_SOCKET_TIMEOUT;
        }
        this.timeout = i;
        HttpParams params = this.httpClient.getParams();
        ConnManagerParams.setTimeout(params, (long) this.timeout);
        HttpConnectionParams.setSoTimeout(params, this.timeout);
        HttpConnectionParams.setConnectionTimeout(params, this.timeout);
    }

    public void setURLEncodingEnabled(boolean z) {
        this.isUrlEncodingEnabled = z;
    }

    public void setUserAgent(String str) {
        HttpProtocolParams.setUserAgent(this.httpClient.getParams(), str);
    }
}