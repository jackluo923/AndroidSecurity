package com.inmobi.commons.cache;

import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.CacheController.Committer;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.cache.RetryMechanism.RetryRunnable;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class ProductCacheConfig extends ProductConfig {
    public static final int DEFAULT_EXPIRY = 432000;
    public static final int DEFAULT_INTERVAL = 60;
    public static final int DEFAULT_MAX_RETRY = 3;
    private static Timer a;
    private AtomicBoolean b;
    private Map c;
    private Validator d;
    private RetryMechanism e;
    private Committer f;
    private long g;

    class a implements RetryRunnable {
        a() {
        }

        public void completed() {
            ProductCacheConfig.this.b.set(false);
        }

        public void run() {
            try {
                if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                    ProductCacheConfig.this.a();
                } else {
                    throw new IOException("Network unavailable");
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    private class b {
        private String b;
        private long c;

        private b() {
        }
    }

    static {
        a = new Timer();
    }

    public ProductCacheConfig(JSONObject jSONObject) {
        this.b = new AtomicBoolean(false);
        this.c = new HashMap();
        this.d = null;
        this.e = new RetryMechanism(3, 60000, a);
        try {
            loadFromJSON(jSONObject);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "JSON retrieved is invalid.");
        }
    }

    public ProductCacheConfig(JSONObject jSONObject, Committer committer) {
        this(jSONObject);
        this.f = committer;
    }

    private void a() {
        try {
            b c = c();
            String a = c.b;
            if (a != null) {
                if (this.d == null) {
                    setData(a);
                } else if (this.d.validate(a(a))) {
                    setData(a);
                } else {
                    throw new IOException("Invalid config.");
                }
                setTimestamp((int) (System.currentTimeMillis() / 1000));
                this.g = c.c;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Product with url " + getUrl() + " accepted data " + getRawData());
                this.f.onCommit();
            } else {
                setTimestamp((int) (System.currentTimeMillis() / 1000));
                this.g = c.c;
                this.f.onCommit();
            }
        } catch (Exception e) {
            Throwable th = e;
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Error connecting to url, or " + getUrl() + " did not return 200. Purge cache update.", th);
            throw th;
        }
    }

    private void b() {
        if (this.b.compareAndSet(false, true)) {
            this.e.rescheduleTimer(new a());
        }
    }

    private b c() {
        String str = AdTrackerConstants.BLANK;
        String bindToGetParam = UIDUtil.bindToGetParam(this.c);
        if (bindToGetParam == null || AdTrackerConstants.BLANK.equals(bindToGetParam)) {
            bindToGetParam = getUrl();
        } else if (getUrl().endsWith("?")) {
            bindToGetParam = getUrl() + bindToGetParam;
        } else if (getUrl().contains("?")) {
            bindToGetParam = getUrl() + "&" + bindToGetParam;
        } else {
            bindToGetParam = getUrl() + "?" + bindToGetParam;
        }
        URL url = new URL(bindToGetParam);
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Sending request to " + bindToGetParam + " to retreive cache..");
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        InternalSDKUtil.addCommonPropertiesToConnection(httpURLConnection);
        httpURLConnection.setIfModifiedSince(this.g);
        httpURLConnection.setRequestMethod("GET");
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 304) {
            b bVar = new b(null);
            bVar.b = null;
            bVar.c = httpURLConnection.getLastModified();
            return bVar;
        } else if (responseCode != 200) {
            throw new IOException("Server did not return 200. ");
        } else {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    str = str + readLine;
                } else {
                    bufferedReader.close();
                    b bVar2 = new b(null);
                    bVar2.b = str;
                    bVar2.c = httpURLConnection.getLastModified();
                    return bVar2;
                }
            }
        }
    }

    public ProductConfig getConfig() {
        return this;
    }

    public String getData(Validator validator) {
        if (validator != null) {
            this.d = validator;
        }
        setRetryNumber(0);
        if (getTimestamp() + getExpiry() - ((int) (System.currentTimeMillis() / 1000)) <= 0) {
            b();
        }
        return getRawData();
    }

    public String getData(Map map, Validator validator) {
        if (map != null) {
            this.c = map;
        }
        return getData(validator);
    }

    public Map getMap() {
        return this.c;
    }

    public Validator getValidator() {
        return this.d;
    }

    public final void loadFromJSON(JSONObject jSONObject) {
        setExpiry(InternalSDKUtil.getIntFromJSON(jSONObject, "expiry", DEFAULT_EXPIRY));
        setMaxRetry(InternalSDKUtil.getIntFromJSON(jSONObject, "maxRetry", DEFAULT_MAX_RETRY));
        setRetryInterval(InternalSDKUtil.getIntFromJSON(jSONObject, "retryInterval", DEFAULT_INTERVAL));
        this.g = InternalSDKUtil.getLongFromJSON(jSONObject, "lastModified", 0);
        setUrl(InternalSDKUtil.getStringFromJSON(jSONObject, PlusShare.KEY_CALL_TO_ACTION_URL, AdTrackerConstants.BLANK));
        setProtocol(InternalSDKUtil.getStringFromJSON(jSONObject, "protocol", "json"));
        this.e = new RetryMechanism(getMaxRetry(), getRetryInterval() * 1000, a);
        setTimestamp(InternalSDKUtil.getIntFromJSON(jSONObject, AdDatabaseHelper.COLUMN_TIMESTAMP, 0));
        setData(InternalSDKUtil.getStringFromJSON(jSONObject, i.a, null));
    }

    protected void reset() {
        setExpiry(0);
        setRetryInterval(0);
        setMaxRetry(0);
        setTimestamp(0);
        setUrl(null);
        setProtocol(null);
        setData(null);
    }

    public void setMap(Map map) {
        this.c = map;
    }

    public void setValidator(Validator validator) {
        this.d = validator;
    }

    public JSONObject toJSON() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject("{expiry:" + getExpiry() + "," + "maxRetry:" + getMaxRetry() + "," + "retryInterval:" + getRetryInterval() + "," + "protocol:" + getProtocol() + ",timestamp:" + getTimestamp() + "}");
            try {
                jSONObject.put(PlusShare.KEY_CALL_TO_ACTION_URL, getUrl());
                jSONObject.put(i.a, getRawData());
                jSONObject.put("lastModified", this.g);
            } catch (JSONException e) {
                th = e;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Ill formed JSON product(" + getUrl() + ") toString", th);
                return jSONObject;
            }
        } catch (JSONException e2) {
            jSONObject = new JSONObject();
            Throwable th2 = e2;
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Ill formed JSON product(" + getUrl() + ") toString", th2);
            return jSONObject;
        }
        return jSONObject;
    }

    public String toString() {
        return toJSON().toString();
    }
}