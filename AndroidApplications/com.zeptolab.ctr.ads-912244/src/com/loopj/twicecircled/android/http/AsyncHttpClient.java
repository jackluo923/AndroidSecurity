package com.loopj.twicecircled.android.http;

import android.content.Context;
import com.brightcove.player.media.MediaService;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
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
    private static final int DEFAULT_MAX_CONNECTIONS = 10;
    private static final int DEFAULT_MAX_RETRIES = 5;
    private static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    private static final int DEFAULT_SOCKET_TIMEOUT = 10000;
    private static final String ENCODING_GZIP = "gzip";
    private static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    private static final String VERSION = "1.4.1";
    private static int maxConnections;
    private static int socketTimeout;
    private final Map clientHeaderMap;
    private final DefaultHttpClient httpClient;
    private final HttpContext httpContext;
    private final Map requestMap;
    private ThreadPoolExecutor threadPool;

    private static class InflatingEntity extends HttpEntityWrapper {
        public InflatingEntity(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public InputStream getContent() {
            return new GZIPInputStream(this.wrappedEntity.getContent());
        }

        public long getContentLength() {
            return -1;
        }
    }

    static {
        maxConnections = 10;
        socketTimeout = 10000;
    }

    public AsyncHttpClient() {
        HttpParams basicHttpParams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basicHttpParams, (long) socketTimeout);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(maxConnections));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, DEFAULT_MAX_CONNECTIONS);
        HttpConnectionParams.setSoTimeout(basicHttpParams, socketTimeout);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, socketTimeout);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, DEFAULT_SOCKET_BUFFER_SIZE);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setUserAgent(basicHttpParams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[]{VERSION}));
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(MediaService.DEFAULT_MEDIA_DELIVERY, PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        ClientConnectionManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
        this.httpContext = new SyncBasicHttpContext(new BasicHttpContext());
        this.httpClient = new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        this.httpClient.addRequestInterceptor(new HttpRequestInterceptor() {
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                if (!httpRequest.containsHeader(HEADER_ACCEPT_ENCODING)) {
                    httpRequest.addHeader(HEADER_ACCEPT_ENCODING, ENCODING_GZIP);
                }
                Iterator it = AsyncHttpClient.this.clientHeaderMap.keySet().iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    httpRequest.addHeader(str, (String) AsyncHttpClient.this.clientHeaderMap.get(str));
                }
            }
        });
        this.httpClient.addResponseInterceptor(new HttpResponseInterceptor() {
            public void process(HttpResponse httpResponse, HttpContext httpContext) {
                HttpEntity entity = httpResponse.getEntity();
                if (entity != null) {
                    Header contentEncoding = entity.getContentEncoding();
                    if (contentEncoding != null) {
                        HeaderElement[] elements = contentEncoding.getElements();
                        int length = elements.length;
                        int i = 0;
                        while (i < length) {
                            if (elements[i].getName().equalsIgnoreCase(ENCODING_GZIP)) {
                                httpResponse.setEntity(new InflatingEntity(httpResponse.getEntity()));
                                return;
                            } else {
                                i++;
                            }
                        }
                    }
                }
            }
        });
        this.httpClient.setHttpRequestRetryHandler(new RetryHandler(5));
        this.threadPool = (ThreadPoolExecutor) Executors.newCachedThreadPool();
        this.requestMap = new WeakHashMap();
        this.clientHeaderMap = new HashMap();
    }

    private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, HttpEntity httpEntity) {
        if (httpEntity != null) {
            httpEntityEnclosingRequestBase.setEntity(httpEntity);
        }
        return httpEntityEnclosingRequestBase;
    }

    public static String getUrlWithQueryString(String str, RequestParams requestParams) {
        if (requestParams == null) {
            return str;
        }
        String paramString = requestParams.getParamString();
        return str.indexOf("?") == -1 ? new StringBuilder(String.valueOf(str)).append("?").append(paramString).toString() : new StringBuilder(String.valueOf(str)).append("&").append(paramString).toString();
    }

    private HttpEntity paramsToEntity(RequestParams requestParams) {
        return requestParams != null ? requestParams.getEntity() : null;
    }

    public void addHeader(String str, String str2) {
        this.clientHeaderMap.put(str, str2);
    }

    public void cancelRequests(Context context, boolean z) {
        List list = (List) this.requestMap.get(context);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Future future = (Future) ((WeakReference) it.next()).get();
                if (future != null) {
                    future.cancel(z);
                }
            }
        }
        this.requestMap.remove(context);
    }

    public void delete(Context context, String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        sendRequest(this.httpClient, this.httpContext, new HttpDelete(str), null, asyncHttpResponseHandler, context);
    }

    public void delete(Context context, String str, Header[] headerArr, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        HttpUriRequest httpDelete = new HttpDelete(str);
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        sendRequest(this.httpClient, this.httpContext, httpDelete, null, asyncHttpResponseHandler, context);
    }

    public void delete(String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        delete(null, str, asyncHttpResponseHandler);
    }

    public void get(Context context, String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        get(context, str, null, asyncHttpResponseHandler);
    }

    public void get(Context context, String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        sendRequest(this.httpClient, this.httpContext, new HttpGet(getUrlWithQueryString(str, requestParams)), null, asyncHttpResponseHandler, context);
    }

    public void get(Context context, String str, Header[] headerArr, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        HttpUriRequest httpGet = new HttpGet(getUrlWithQueryString(str, requestParams));
        if (headerArr != null) {
            httpGet.setHeaders(headerArr);
        }
        sendRequest(this.httpClient, this.httpContext, httpGet, null, asyncHttpResponseHandler, context);
    }

    public void get(String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        get(null, str, null, asyncHttpResponseHandler);
    }

    public void get(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        get(null, str, requestParams, asyncHttpResponseHandler);
    }

    public HttpClient getHttpClient() {
        return this.httpClient;
    }

    public HttpContext getHttpContext() {
        return this.httpContext;
    }

    public void post(Context context, String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        post(context, str, paramsToEntity(requestParams), null, asyncHttpResponseHandler);
    }

    public void post(Context context, String str, HttpEntity httpEntity, String str2, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPost(str), httpEntity), str2, asyncHttpResponseHandler, context);
    }

    public void post(Context context, String str, HttpEntity httpEntity, String str2, Header[] headerArr, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        HttpUriRequest addEntityToRequestBase = addEntityToRequestBase(new HttpPost(str), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, asyncHttpResponseHandler, context);
    }

    public void post(Context context, String str, Header[] headerArr, RequestParams requestParams, String str2, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        HttpUriRequest httpPost = new HttpPost(str);
        if (requestParams != null) {
            httpPost.setEntity(paramsToEntity(requestParams));
        }
        if (headerArr != null) {
            httpPost.setHeaders(headerArr);
        }
        sendRequest(this.httpClient, this.httpContext, httpPost, str2, asyncHttpResponseHandler, context);
    }

    public void post(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        HttpUriRequest addEntityToRequestBase = addEntityToRequestBase(new HttpPost(str), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, asyncHttpResponseHandler, context);
    }

    public void post(String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        post(null, str, null, asyncHttpResponseHandler);
    }

    public void post(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        post(null, str, requestParams, asyncHttpResponseHandler);
    }

    public void put(Context context, String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        put(context, str, paramsToEntity(requestParams), null, asyncHttpResponseHandler);
    }

    public void put(Context context, String str, HttpEntity httpEntity, String str2, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPut(str), httpEntity), str2, asyncHttpResponseHandler, context);
    }

    public void put(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        HttpUriRequest addEntityToRequestBase = addEntityToRequestBase(new HttpPut(str), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, asyncHttpResponseHandler, context);
    }

    public void put(String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        put(null, str, null, asyncHttpResponseHandler);
    }

    public void put(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        put(null, str, requestParams, asyncHttpResponseHandler);
    }

    protected void sendRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, AsyncHttpResponseHandler asyncHttpResponseHandler, Context context) {
        if (str != null) {
            httpUriRequest.addHeader("Content-Type", str);
        }
        Future submit = this.threadPool.submit(new AsyncHttpRequest(defaultHttpClient, httpContext, httpUriRequest, asyncHttpResponseHandler));
        if (context != null) {
            List list = (List) this.requestMap.get(context);
            if (list == null) {
                list = new LinkedList();
                this.requestMap.put(context, list);
            }
            list.add(new WeakReference(submit));
        }
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

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", sSLSocketFactory, 443));
    }

    public void setThreadPool(ThreadPoolExecutor threadPoolExecutor) {
        this.threadPool = threadPoolExecutor;
    }

    public void setTimeout(int i) {
        HttpParams params = this.httpClient.getParams();
        ConnManagerParams.setTimeout(params, (long) i);
        HttpConnectionParams.setSoTimeout(params, i);
        HttpConnectionParams.setConnectionTimeout(params, i);
    }

    public void setUserAgent(String str) {
        HttpProtocolParams.setUserAgent(this.httpClient.getParams(), str);
    }
}