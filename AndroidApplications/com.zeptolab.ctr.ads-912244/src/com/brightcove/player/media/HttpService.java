package com.brightcove.player.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class HttpService {
    public static final int DEFAULT_CONNECT_TIMEOUT = 10000;
    public static final int DEFAULT_READ_TIMEOUT = 10000;
    public static final String TAG;
    private int connectTimeout;
    private int readTimeout;

    private enum Method {
        GET,
        POST
    }

    static {
        TAG = HttpService.class.getSimpleName();
    }

    public HttpService() {
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
    }

    public HttpService(int i, int i2) {
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
        this.connectTimeout = i;
        this.readTimeout = i2;
    }

    public static URI buildURIWithQueryParameters(String str, Map map) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.BASE_URL_REQUIRED));
        }
        StringBuilder stringBuilder = new StringBuilder(str);
        if (map == null || map.size() == 0) {
            return new URI(stringBuilder.toString());
        }
        if (str.contains("?")) {
            stringBuilder.append("&");
        } else {
            stringBuilder.append("?");
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (!(entry == null || entry.getKey() == null || entry.getValue() == null)) {
                stringBuilder.append(URLEncoder.encode((String) entry.getKey(), HTMLEncoder.ENCODE_NAME_DEFAULT));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode(entry.getValue().toString(), HTMLEncoder.ENCODE_NAME_DEFAULT));
                if (it.hasNext()) {
                    stringBuilder.append("&");
                }
            }
        }
        return new URI(stringBuilder.toString());
    }

    private JSONObject doJSONRequest(Method method, URI uri, Map map) {
        String doRequest = doRequest(method, uri, map);
        if (doRequest == null || doRequest.trim().length() <= 0 || doRequest.equals("null")) {
            return null;
        }
        if (Log.isLoggable(TAG, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
            Log.d(TAG, "JSON response:\n" + doRequest);
        }
        return parseToJSONObject(doRequest);
    }

    private String doRequest(Method method, URI uri, Map map) {
        Throwable th;
        if (uri == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URI_REQUIRED));
        } else if (map == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.HEADERS_REQUIRED));
        } else {
            URL toURL = uri.toURL();
            HttpURLConnection httpURLConnection = null;
            Log.d(TAG, "issuing " + method + " request: " + toURL.toString());
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) toURL.openConnection();
                try {
                    if (method.equals(Method.POST)) {
                        httpURLConnection2.setRequestMethod("POST");
                    }
                    Iterator it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        if (!(StringUtil.isEmpty((String) entry.getKey()) || StringUtil.isEmpty((String) entry.getValue()))) {
                            httpURLConnection2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    String inputStreamToString = inputStreamToString(httpURLConnection2.getInputStream());
                    Log.d(TAG, "response: " + inputStreamToString);
                    Log.d(TAG, "code: " + httpURLConnection2.getResponseCode());
                    Log.d(TAG, "message: " + httpURLConnection2.getResponseMessage());
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return inputStreamToString;
                } catch (Throwable th2) {
                    httpURLConnection = httpURLConnection2;
                    th = th2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
    }

    public static String inputStreamToString(InputStream inputStream) {
        return readerToString(new InputStreamReader(inputStream));
    }

    public static JSONObject parseToJSONObject(String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.JSON_REQUIRED));
        }
        Object nextValue = new JSONTokener(str).nextValue();
        if (nextValue instanceof JSONObject) {
            return (JSONObject) nextValue;
        }
        if (nextValue instanceof JSONArray) {
            throw new JSONException(ErrorUtil.getMessage(ErrorUtil.JSON_ARRAY));
        }
        throw new JSONException(String.format(ErrorUtil.getMessage(ErrorUtil.UNEXPECTED_TYPE), new Object[]{nextValue.getClass().getName()}));
    }

    public static String readerToString(Reader reader) {
        StringBuilder stringBuilder = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                stringBuilder.append(readLine);
            } else {
                bufferedReader.close();
                return stringBuilder.toString();
            }
        }
    }

    public String doGetRequest(URI uri) {
        return doGetRequest(uri, new HashMap());
    }

    public String doGetRequest(URI uri, Map map) {
        return doRequest(Method.GET, uri, map);
    }

    public Bitmap doImageGetRequest(URI uri) {
        if (uri == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URI_REQUIRED));
        }
        URL toURL = uri.toURL();
        HttpURLConnection httpURLConnection = null;
        Log.d(TAG, "issuing GET request: " + toURL.toString());
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) toURL.openConnection();
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(httpURLConnection2.getInputStream());
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return decodeStream;
            } catch (Throwable th) {
                httpURLConnection = httpURLConnection2;
                th = th;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th3;
        }
    }

    public JSONObject doJSONGetRequest(URI uri) {
        return doJSONGetRequest(uri, new HashMap());
    }

    public JSONObject doJSONGetRequest(URI uri, Map map) {
        return doJSONRequest(Method.GET, uri, map);
    }

    public JSONObject doJSONPostRequest(URI uri) {
        return doJSONPostRequest(uri, new HashMap());
    }

    public JSONObject doJSONPostRequest(URI uri, Map map) {
        return doJSONRequest(Method.POST, uri, map);
    }

    public String doPostRequest(URI uri) {
        return doPostRequest(uri, new HashMap());
    }

    public String doPostRequest(URI uri, Map map) {
        return doRequest(Method.POST, uri, map);
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public int getReadTimeout() {
        return this.readTimeout;
    }
}