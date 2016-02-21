package com.facebook.ads.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import com.brightcove.player.media.ErrorFields;
import com.brightcove.player.util.ErrorUtil;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;
import org.json.JSONTokener;

public class AdRequest {
    private static final String ADS_ENDPOINT = "network_ads";
    private static final int AD_REQUEST_TIMEOUT_MS = 30000;
    private static final String AD_TYPE_PARAM = "ad_type";
    private static final String APP_BUILD_PARAM = "app_build";
    private static final String APP_VERSION_PARAM = "app_version";
    private static final String ATTRIBUTION_ID_PARAM = "attribution_id";
    private static final String CHILD_DIRECTED_PARAM = "child_directed";
    private static final String CLIENT_EVENTS_PARAM = "events";
    private static final String DEFAULT_ENCODING = "utf-8";
    private static final String DEVICE_ID_PARAM = "device_id";
    private static final String DEVICE_ID_TRACKING_ENABLED_PARAM = "tracking_enabled";
    private static final String GRAPH_URL_BASE = "https://graph.facebook.com";
    private static final String GRAPH_URL_BASE_PREFIX_FORMAT = "http://graph.%s.facebook.com";
    private static final String HEIGHT_PARAM = "height";
    private static final String LOCALE_PARAM = "locale";
    private static final String NATIVE_ADS_ENDPOINT = "network_ads_native";
    private static final String OS = "Android";
    private static final String OS_PARAM = "os";
    private static final String OS_VERSION_PARAM = "os_version";
    private static final String PACKAGE_NAME_PARAM = "package_name";
    private static final String PLACEMENT_ID_PARAM = "placement_id";
    private static final String SCREEN_HEIGHT_PARAM = "screen_height";
    private static final String SCREEN_WIDTH_PARAM = "screen_width";
    private static final String SDK_CAPABILITIES_PARAM = "sdk_capabilities";
    private static final String SDK_VERSION = "sdk_version";
    private static final String TAG;
    private static final String TEST_MODE_PARAM = "test_mode";
    private static final String WIDTH_PARAM = "width";
    private final AdSize adSize;
    private final AdType adType;
    private final Callback callback;
    private final Context context;
    private final String placementId;
    private final boolean testMode;
    private final String userAgentString;

    public static interface Callback {
        void onCompleted(AdResponse adResponse);

        void onError(AdError adError);
    }

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$ads$internal$AdType;

        static {
            $SwitchMap$com$facebook$ads$internal$AdType = new int[AdType.values().length];
            try {
                $SwitchMap$com$facebook$ads$internal$AdType[AdType.NATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $SwitchMap$com$facebook$ads$internal$AdType[AdType.HTML.ordinal()] = 2;
        }
    }

    private static class AdRequestResponse {
        JSONObject body;
        AdError error;

        private AdRequestResponse() {
            this.body = null;
            this.error = null;
        }
    }

    static {
        TAG = AdRequest.class.getSimpleName();
    }

    public AdRequest(Context context, String str, AdSize adSize, AdType adType, boolean z, Callback callback) {
        if (str == null || str.length() < 1) {
            throw new IllegalArgumentException("placementId");
        } else if (adSize == null) {
            throw new IllegalArgumentException("adSize");
        } else if (callback == null) {
            throw new IllegalArgumentException("callback");
        } else {
            this.context = context;
            this.placementId = str;
            this.adSize = adSize;
            this.userAgentString = AdWebViewUtils.getUserAgentString(context);
            this.adType = adType;
            this.testMode = z;
            this.callback = callback;
        }
    }

    private void addAdvertisingInfoParams(Map map) {
        boolean z = true;
        AdvertisingIdInfo advertisingIdInfo = AdvertisingIdInfo.getAdvertisingIdInfo(this.context);
        if (advertisingIdInfo == null) {
            map.put(DEVICE_ID_TRACKING_ENABLED_PARAM, Boolean.valueOf(true));
        } else {
            String str = DEVICE_ID_TRACKING_ENABLED_PARAM;
            if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                z = false;
            }
            map.put(str, Boolean.valueOf(z));
            if (!advertisingIdInfo.isLimitAdTrackingEnabled()) {
                map.put(DEVICE_ID_PARAM, advertisingIdInfo.getId());
            }
        }
    }

    private void addAppInfoParams(Map map) {
        map.put(PACKAGE_NAME_PARAM, this.context.getPackageName());
    }

    private void addDeviceInfoParams(Map map) {
        int i = 0;
        map.put(OS_PARAM, OS);
        map.put(OS_VERSION_PARAM, VERSION.RELEASE);
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        int i2 = (int) (((float) displayMetrics.widthPixels) / displayMetrics.density);
        int i3 = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        map.put(SCREEN_WIDTH_PARAM, Integer.valueOf(i2));
        map.put(SCREEN_HEIGHT_PARAM, Integer.valueOf(i3));
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            map.put(APP_BUILD_PARAM, Integer.valueOf(packageInfo.versionCode));
            map.put(APP_VERSION_PARAM, packageInfo.versionName);
        } catch (NameNotFoundException e) {
            map.put(APP_VERSION_PARAM, Integer.valueOf(i));
        }
        Locale locale = this.context.getResources().getConfiguration().locale;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        map.put(LOCALE_PARAM, locale.toString());
    }

    private AdRequestResponse createResponsesFromStream(InputStream inputStream) {
        int i = -1;
        AdRequestResponse adRequestResponse = new AdRequestResponse();
        try {
            Object nextValue = new JSONTokener(AdUtilities.readStreamToString(inputStream)).nextValue();
            if (nextValue instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) nextValue;
                if (jSONObject.has(ErrorUtil.ERROR)) {
                    jSONObject = (JSONObject) AdUtilities.getStringPropertyAsJSON(jSONObject, ErrorUtil.ERROR);
                    adRequestResponse.error = new AdError(jSONObject.optInt("code", -1), jSONObject.optString(ErrorFields.MESSAGE, null));
                } else {
                    adRequestResponse.body = jSONObject;
                    adRequestResponse.error = null;
                }
            }
        } catch (Exception e) {
            adRequestResponse.error = new AdError(i, e.getMessage());
        }
        return (adRequestResponse.body == null && adRequestResponse.error == null) ? null : adRequestResponse;
    }

    private String getAdsEndpoint() {
        switch (AnonymousClass_2.$SwitchMap$com$facebook$ads$internal$AdType[this.adType.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return NATIVE_ADS_ENDPOINT;
            default:
                return ADS_ENDPOINT;
        }
    }

    private String getQueryString(Map map) {
        StringBuilder stringBuilder = new StringBuilder(512);
        Iterator it = map.entrySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            boolean z;
            Entry entry = (Entry) it.next();
            if (i != 0) {
                z = 0;
            } else {
                stringBuilder.append("&");
                int i2 = i;
            }
            stringBuilder.append(URLEncoder.encode((String) entry.getKey(), DEFAULT_ENCODING)).append("=").append(URLEncoder.encode(String.valueOf(entry.getValue()), DEFAULT_ENCODING));
            boolean z2 = z;
        }
        return stringBuilder.toString();
    }

    private Map getRequestParameters() {
        Map hashMap = new HashMap();
        hashMap.put(AD_TYPE_PARAM, Integer.valueOf(this.adType.getValue()));
        hashMap.put(SDK_CAPABILITIES_PARAM, AdSdkCapability.getSupportedCapabilitiesAsJSONString());
        hashMap.put(SDK_VERSION, AdSdkVersion.BUILD);
        hashMap.put(PLACEMENT_ID_PARAM, this.placementId);
        hashMap.put(ATTRIBUTION_ID_PARAM, AdUtilities.getAttributionId(this.context.getContentResolver()));
        hashMap.put(WIDTH_PARAM, Integer.valueOf(this.adSize.getWidth()));
        hashMap.put(HEIGHT_PARAM, Integer.valueOf(this.adSize.getHeight()));
        hashMap.put(TEST_MODE_PARAM, Boolean.valueOf(this.testMode));
        hashMap.put(CHILD_DIRECTED_PARAM, Boolean.valueOf(AdSettings.isChildDirected()));
        hashMap.put(CLIENT_EVENTS_PARAM, AdClientEventManager.dumpClientEventToJson());
        addDeviceInfoParams(hashMap);
        addAppInfoParams(hashMap);
        addAdvertisingInfoParams(hashMap);
        return hashMap;
    }

    private URL getUrlForRequest() {
        String str;
        if (StringUtils.isNullOrEmpty(AdSettings.getUrlPrefix())) {
            str = GRAPH_URL_BASE;
        } else {
            str = String.format(GRAPH_URL_BASE_PREFIX_FORMAT, new Object[]{str});
        }
        return new URL(String.format("%s/%s", new Object[]{str, getAdsEndpoint()}));
    }

    private HttpURLConnection makeRequest() {
        HttpURLConnection httpURLConnection = (HttpURLConnection) getUrlForRequest().openConnection();
        httpURLConnection.setRequestProperty("User-Agent", this.userAgentString);
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(AD_REQUEST_TIMEOUT_MS);
        httpURLConnection.setReadTimeout(AD_REQUEST_TIMEOUT_MS);
        String queryString = getQueryString(getRequestParameters());
        OutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(bufferedOutputStream, DEFAULT_ENCODING));
        bufferedWriter.write(queryString);
        bufferedWriter.flush();
        bufferedWriter.close();
        bufferedOutputStream.close();
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public AsyncTask executeAsync() {
        AdAnalogData.startUpdate(this.context);
        return new AsyncTask() {
            protected AdRequestResponse doInBackground(Void... voidArr) {
                return AdRequest.this.executeConnectionAndWait();
            }

            protected void onPostExecute(AdRequestResponse adRequestResponse) {
                if (adRequestResponse == null) {
                    AdRequest.this.callback.onError(AdError.INTERNAL_ERROR);
                } else if (adRequestResponse.error != null) {
                    AdRequest.this.callback.onError(adRequestResponse.error);
                } else {
                    AdRequest.this.callback.onCompleted(AdResponse.parseResponse(AdRequest.this.context, adRequestResponse.body));
                }
            }
        }.execute(new Void[0]);
    }

    public AdRequestResponse executeConnectionAndWait() {
        AdRequestResponse createResponsesFromStream;
        Closeable closeable;
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection makeRequest = makeRequest();
            try {
                httpURLConnection = makeRequest.getResponseCode() >= 400 ? makeRequest.getErrorStream() : makeRequest.getInputStream();
                try {
                    createResponsesFromStream = createResponsesFromStream(httpURLConnection);
                    AdUtilities.closeQuietly(httpURLConnection);
                    if (makeRequest != null) {
                        makeRequest.disconnect();
                    }
                } catch (SocketTimeoutException e) {
                    httpURLConnection = httpURLConnection;
                    httpURLConnection = makeRequest;
                    socketTimeoutException = e;
                    createResponsesFromStream = new AdRequestResponse();
                    createResponsesFromStream.error = new AdError(-1, socketTimeoutException.getMessage());
                    AdUtilities.closeQuietly(closeable);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return createResponsesFromStream;
                } catch (IOException e2) {
                    httpURLConnection = httpURLConnection;
                    httpURLConnection = makeRequest;
                    iOException = e2;
                    createResponsesFromStream = new AdRequestResponse();
                    createResponsesFromStream.error = new AdError(-1, iOException.getMessage());
                    AdUtilities.closeQuietly(closeable);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return createResponsesFromStream;
                } catch (Exception e3) {
                    th = e3;
                    Log.e(TAG, "Unexpected error", th);
                    createResponsesFromStream = new AdRequestResponse();
                    createResponsesFromStream.error = AdError.INTERNAL_ERROR;
                    AdUtilities.closeQuietly(closeable);
                    if (makeRequest != null) {
                        makeRequest.disconnect();
                    }
                    return createResponsesFromStream;
                }
            } catch (SocketTimeoutException e4) {
                httpURLConnection = httpURLConnection;
                httpURLConnection = makeRequest;
                socketTimeoutException = e4;
                createResponsesFromStream = new AdRequestResponse();
                createResponsesFromStream.error = new AdError(-1, socketTimeoutException.getMessage());
                AdUtilities.closeQuietly(closeable);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return createResponsesFromStream;
            } catch (IOException e5) {
                httpURLConnection = httpURLConnection;
                httpURLConnection = makeRequest;
                iOException = e5;
                createResponsesFromStream = new AdRequestResponse();
                createResponsesFromStream.error = new AdError(-1, iOException.getMessage());
                AdUtilities.closeQuietly(closeable);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return createResponsesFromStream;
            } catch (Exception e32) {
                th = e32;
                Log.e(TAG, "Unexpected error", th);
                createResponsesFromStream = new AdRequestResponse();
                createResponsesFromStream.error = AdError.INTERNAL_ERROR;
                AdUtilities.closeQuietly(closeable);
                if (makeRequest != null) {
                    makeRequest.disconnect();
                }
                return createResponsesFromStream;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnection;
                httpURLConnection = makeRequest;
                AdUtilities.closeQuietly(closeable);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
            return createResponsesFromStream;
        } catch (Throwable th3) {
            th = th3;
            AdUtilities.closeQuietly(closeable);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }
}