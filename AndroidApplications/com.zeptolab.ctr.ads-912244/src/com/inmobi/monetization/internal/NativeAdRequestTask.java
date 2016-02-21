package com.inmobi.monetization.internal;

import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.internal.abstraction.INativeAdController;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class NativeAdRequestTask implements Runnable {
    byte[] a;
    String b;
    String c;
    String d;
    private NativeAdRequest e;
    private INativeAdController f;
    private HttpURLConnection g;
    private final int h;
    private final int i;
    private byte[] j;
    private byte[] k;

    NativeAdRequestTask(NativeAdRequest nativeAdRequest, INativeAdController iNativeAdController) {
        this.h = 8;
        this.i = 16;
        this.b = AdTrackerConstants.BLANK;
        this.c = AdTrackerConstants.BLANK;
        this.d = AdTrackerConstants.BLANK;
        this.e = nativeAdRequest;
        this.f = iNativeAdController;
    }

    private String a(String str, INativeAdController iNativeAdController) {
        a();
        this.j = InternalSDKUtil.keag();
        this.b = PkInitilaizer.getConfigParams().getExponent();
        this.c = PkInitilaizer.getConfigParams().getModulus();
        this.d = PkInitilaizer.getConfigParams().getVersion();
        if (this.b.equals(AdTrackerConstants.BLANK) || this.c.equals(AdTrackerConstants.BLANK) || this.d.equals(AdTrackerConstants.BLANK)) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Exception retreiving Ad due to key problem");
            return null;
        } else {
            String SeMeGe = InternalSDKUtil.SeMeGe(str, this.j, this.k, this.a, this.c, this.b);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("sm=");
            stringBuilder.append(SeMeGe);
            stringBuilder.append("&sn=");
            stringBuilder.append(this.d);
            SeMeGe = stringBuilder.toString();
            Log.debug(ConfigConstants.LOGGING_TAG, SeMeGe);
            return SeMeGe;
        }
    }

    private HttpURLConnection a(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(httpURLConnection);
        return httpURLConnection;
    }

    private void a() {
        try {
            this.a = new byte[8];
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextBytes(this.a);
            this.k = new byte[16];
            secureRandom.nextBytes(this.k);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception closing resource: " + closeable, e);
            }
        }
    }

    private static void a(HttpURLConnection httpURLConnection) {
        int fetchTimeOut = Initializer.getConfigParams().getFetchTimeOut();
        httpURLConnection.setConnectTimeout(fetchTimeOut);
        httpURLConnection.setReadTimeout(fetchTimeOut);
        httpURLConnection.setRequestProperty("user-agent", DeviceInfo.getPhoneDefaultUserAgent());
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
    }

    private void b() {
        int i = 0;
        try {
            Log.debug(ConfigConstants.LOGGING_TAG, "Http Status Code: " + this.g.getResponseCode());
            int responseCode = this.g.getResponseCode();
            Log.debug(ConfigConstants.LOGGING_TAG, "Im Id: " + this.g.getHeaderField(ConfigConstants.IMP_ID_KEY));
            String headerField = this.g.getHeaderField(ConfigConstants.SANDBOX_ERR_KEY);
            if (headerField != null) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Sandbox error Id: " + headerField);
            }
            if (responseCode == 200) {
                String str;
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.g.getInputStream(), HTMLEncoder.ENCODE_NAME_DEFAULT));
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuilder.append(readLine);
                }
                headerField = stringBuilder.toString();
                try {
                    str = new String(InternalSDKUtil.DeAe(Base64.decode(headerField.getBytes(), 0), this.j, this.k));
                } catch (Exception e) {
                    e.printStackTrace();
                    str = null;
                }
                if (str == null && this.f == null) {
                    str = headerField;
                } else {
                    this.f.onAdRequestFailed(this.e, IMErrorCode.INTERNAL_ERROR);
                    this.g.disconnect();
                    a(null);
                    return;
                }
                JSONArray jSONArray = new JSONObject(str).getJSONArray(NativeAdResponse.KEY_ADS);
                if (jSONArray != null) {
                    if (jSONArray.length() == 0) {
                        Log.debug(ConfigConstants.LOGGING_TAG, "Server returned No Fill ");
                        if (this.f != null) {
                            this.f.onAdRequestFailed(this.e, IMErrorCode.NO_FILL);
                        }
                    } else {
                        List arrayList = new ArrayList();
                        int length = jSONArray.length();
                        responseCode = Initializer.getConfigParams().getNativeSdkConfigParams().getmFetchLimit();
                        if (length <= responseCode) {
                            responseCode = length;
                        }
                        while (i < responseCode) {
                            try {
                                JSONObject jSONObject = jSONArray.getJSONObject(i);
                                String optString = jSONObject.optString(NativeAdResponse.KEY_PUBCONTENT);
                                String optString2 = jSONObject.optString(NativeAdResponse.KEY_CONTEXTCODE);
                                String optString3 = jSONObject.optString(NativeAdResponse.KEY_NAMESPACE);
                                if (!(optString == null || AdTrackerConstants.BLANK.equals(optString.trim()) || optString2 == null || AdTrackerConstants.BLANK.equals(optString2.trim()) || optString3 == null || AdTrackerConstants.BLANK.equals(optString3.trim()))) {
                                    arrayList.add(jSONObject.toString());
                                }
                            } catch (Exception e2) {
                                Log.internal(Constants.LOG_TAG, "JSON Exception", e2);
                            }
                            i++;
                        }
                        if (this.f != null) {
                            if (arrayList.size() > 0) {
                                this.f.onAdRequestSucceded(this.e, new NativeAdResponse(arrayList));
                            } else {
                                Log.debug(ConfigConstants.LOGGING_TAG, "Server Error");
                                this.f.onAdRequestFailed(this.e, IMErrorCode.INTERNAL_ERROR);
                            }
                        }
                    }
                }
            } else if (responseCode == 400) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Invalid App Id.Please check the app Id in the adrequest is valid and in active state");
                if (this.f != null) {
                    this.f.onAdRequestFailed(this.e, IMErrorCode.INVALID_REQUEST);
                }
            } else {
                Log.debug(ConfigConstants.LOGGING_TAG, "Server Error");
                if (this.f != null) {
                    this.f.onAdRequestFailed(this.e, IMErrorCode.INTERNAL_ERROR);
                }
            }
            this.g.disconnect();
            a(null);
        } catch (Exception e3) {
            Log.internal(Constants.LOG_TAG, "Failed to retrieve native ad", e3);
            if (this.f != null) {
                this.f.onAdRequestFailed(this.e, IMErrorCode.INTERNAL_ERROR);
            }
        } catch (OutOfMemoryError e4) {
            Log.internal(Constants.LOG_TAG, "Out of memory error received while retieving ad", e4);
            if (this.f != null) {
                this.f.onAdRequestFailed(this.e, IMErrorCode.INTERNAL_ERROR);
            }
        }
    }

    private void b(String str) {
        this.g.setRequestProperty("Content-Length", Integer.toString(str.length()));
        try {
            Closeable bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.g.getOutputStream()));
            try {
                bufferedWriter.write(str);
                a(bufferedWriter);
            } catch (Throwable th) {
                th = th;
                a(bufferedWriter);
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            bufferedWriter = null;
            a(bufferedWriter);
            throw th3;
        }
    }

    public void run() {
        try {
            Log.internal(ConfigConstants.LOGGING_TAG, "Ad Serving URL: http://i.w.inmobi.com/showad.asm");
            String buildPostBody = this.e.buildPostBody();
            Log.internal(ConfigConstants.LOGGING_TAG, "Native Unencrypted Postbody" + buildPostBody);
            buildPostBody = a(buildPostBody, this.f);
            this.g = a("http://i.w.inmobi.com/showad.asm");
            if (buildPostBody != null) {
                b(buildPostBody);
                b();
            } else if (this.f != null) {
                this.f.onAdRequestFailed(this.e, IMErrorCode.INTERNAL_ERROR);
            }
        } catch (Exception e) {
            Throwable th = e;
            if (this.f != null) {
                this.f.onAdRequestFailed(this.e, IMErrorCode.NETWORK_ERROR);
            }
            Log.debug(Constants.LOG_TAG, "Failed to get native ads", th);
        }
    }
}