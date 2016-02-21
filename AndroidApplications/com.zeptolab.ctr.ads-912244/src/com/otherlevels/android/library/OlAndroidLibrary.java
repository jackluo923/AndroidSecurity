package com.otherlevels.android.library;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.support.v4.app.NotificationCompat.Builder;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.admarvel.android.ads.Constants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.JsonHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.millennialmedia.android.MMException;
import com.otherlevels.android.json.ConstructJson;
import com.otherlevels.android.timer.TimerSessionEnd;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Timer;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class OlAndroidLibrary {
    private static final String TAG = "OLAL-Lib";
    private static int counter;
    private static OlAndroidLibrary instance;
    private static boolean sessionInProgress;
    private static boolean timerInProgress;
    private static Long timerInProgressTimestamp;
    private final String RUN_MODE;
    private final String VERSION_INFO;
    private final String VERSION_NUMBER;
    private AlarmManager am;
    private String appEventURL;
    private String appKey;
    private String appName;
    private String appVersion;
    private AlarmManagerHandler br;
    private String developerKey;
    private String deviceUUID;
    private Date endSessionDate;
    private String feedAPIURL;
    private Long lastActivityTimestamp;
    private String lastpHash;
    private String linkTrackingIdURL;
    private boolean openedFromPush;
    private String pHash;
    private PendingIntent pi;
    private String pushABTesting;
    private String pushServerAuthKey;
    private String pushServerChannel;
    private String pushServerDeviceCategory;
    private String pushServerDeviceLanguage;
    private String pushServerDeviceModel;
    private String pushServerDeviceOsType;
    private String pushServerDeviceOsVersion;
    private String pushServerDeviceTimeZoneOffSet;
    private String pushServerDeviceToken;
    private String pushServerPUID;
    private String pushServerRegisterURL;
    private String pushServerTags;
    private String pushServerURLStart;
    private String pushServerUnRegisterURL;
    private String sessionEndURL;
    private String sessionStartURL;
    private Date startSessionDate;
    private String tagURL;
    private Timer timer;
    private Timer timer2;
    private Timer timer3;
    private String unLinkTrackingIdURL;
    private String urlStart;

    class AnonymousClass_3 extends JsonHttpResponseHandler {
        final /* synthetic */ OLAndroidAsyncResponseHandler val$responseHandler;

        AnonymousClass_3(OLAndroidAsyncResponseHandler oLAndroidAsyncResponseHandler) {
            this.val$responseHandler = oLAndroidAsyncResponseHandler;
        }

        public void onFailure(Throwable th, String str) {
            Log.i(TAG, "OlAndroidLibrary: SplitTestNotification Error Array " + th + ": " + str);
        }

        public void onFailure(Throwable th, JSONArray jSONArray) {
            Log.i(TAG, "OlAndroidLibrary: SplitTestNotification Error Array " + th + ": " + jSONArray);
        }

        public void onFailure(Throwable th, JSONObject jSONObject) {
            Log.i(TAG, "OlAndroidLibrary: SplitTestNotification Error " + th + ": " + jSONObject);
        }

        public void onSuccess(JSONArray jSONArray) {
            Log.i(TAG, "OlAndroidLibrary: SplitTestNotification Success Array: " + jSONArray.toString());
        }

        public void onSuccess(JSONObject jSONObject) {
            Log.i(TAG, "OlAndroidLibrary: SplitTestNotification Success: " + jSONObject.toString());
            try {
                this.val$responseHandler.onSuccess(new OLSplitTestReturnObject(jSONObject.getString("phash"), jSONObject.getString("messagetext"), jSONObject.getString("messagecontent")));
            } catch (JSONException e) {
                Logger.getLogger(OlAndroidLibrary.class.getName()).log(Level.SEVERE, null, e);
            }
        }
    }

    class AnonymousClass_4 extends AlarmManagerHandler {
        final /* synthetic */ String val$applicationName;
        final /* synthetic */ Context val$context;
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ int val$smallIconId;

        AnonymousClass_4(Context context, String str, int i, Intent intent) {
            this.val$context = context;
            this.val$applicationName = str;
            this.val$smallIconId = i;
            this.val$intent = intent;
        }

        public void onReceive(Context context, Intent intent) {
            int time = (int) new Date().getTime();
            Builder smallIcon = new Builder(this.val$context).setContentTitle(this.val$applicationName).setContentText(intent.getStringExtra("pushText")).setSmallIcon(this.val$smallIconId);
            smallIcon.setAutoCancel(true);
            smallIcon.setDefaults(GoogleScorer.CLIENT_ALL);
            Intent intent2 = this.val$intent;
            intent2.putExtra("p", intent.getStringExtra("phash"));
            smallIcon.setContentIntent(PendingIntent.getActivity(this.val$context, time, intent2, 134217728));
            ((NotificationManager) this.val$context.getSystemService("notification")).notify(time, smallIcon.build());
            this.val$context.unregisterReceiver(OlAndroidLibrary.this.br);
        }
    }

    class AnonymousClass_5 extends OLAndroidAsyncResponseHandler {
        final /* synthetic */ Context val$context;
        final /* synthetic */ long val$date;

        AnonymousClass_5(Context context, long j) {
            this.val$context = context;
            this.val$date = j;
        }

        public void onSuccess(OLSplitTestReturnObject oLSplitTestReturnObject) {
            String phash = oLSplitTestReturnObject.getPhash();
            String pushText = oLSplitTestReturnObject.getPushText();
            int time = (int) new Date().getTime();
            AlarmManager alarmManager = (AlarmManager) this.val$context.getSystemService("alarm");
            Intent intent = new Intent("com.otherlevels.android.alarm");
            intent.putExtra("pushText", pushText);
            intent.putExtra("phash", phash);
            this.val$context.registerReceiver(OlAndroidLibrary.this.br, new IntentFilter("com.otherlevels.android.alarm"));
            alarmManager.set(GoogleScorer.CLIENT_PLUS, SystemClock.elapsedRealtime() + this.val$date, PendingIntent.getBroadcast(this.val$context, time, intent, 134217728));
        }
    }

    class AnonymousClass_6 extends JsonHttpResponseHandler {
        final /* synthetic */ OLAndroidAsyncResponseHandler val$responseHandler;

        AnonymousClass_6(OLAndroidAsyncResponseHandler oLAndroidAsyncResponseHandler) {
            this.val$responseHandler = oLAndroidAsyncResponseHandler;
        }

        public void onFailure(Throwable th, String str) {
            Log.i(TAG, "OlAndroidLibrary: Get TagValue Error Array " + th + ": " + str);
        }

        public void onFailure(Throwable th, JSONArray jSONArray) {
            Log.i(TAG, "OlAndroidLibrary: Get TagValue Error Array " + th + ": " + jSONArray);
        }

        public void onFailure(Throwable th, JSONObject jSONObject) {
            Log.i(TAG, "OlAndroidLibrary: Get TagValue Error " + th + ": " + jSONObject);
        }

        public void onSuccess(JSONObject jSONObject) {
            Log.i(TAG, "OlAndroidLibrary: Get TagValue Success: " + jSONObject.toString());
            try {
                this.val$responseHandler.onSuccess(jSONObject.getString(Constants.NATIVE_AD_VALUE_ELEMENT));
            } catch (JSONException e) {
                Logger.getLogger(OlAndroidLibrary.class.getName()).log(Level.SEVERE, null, e);
            }
        }
    }

    static {
        instance = null;
        counter = 0;
        sessionInProgress = false;
        timerInProgress = false;
    }

    public OlAndroidLibrary() {
        this.RUN_MODE = "PROD";
        this.VERSION_NUMBER = "1.1.9";
        this.VERSION_INFO = "OLAL-1.1.9 (Release Date : 27-September-2013)";
        this.urlStart = AdTrackerConstants.BLANK;
        this.feedAPIURL = AdTrackerConstants.BLANK;
        this.sessionStartURL = AdTrackerConstants.BLANK;
        this.sessionEndURL = AdTrackerConstants.BLANK;
        this.appEventURL = AdTrackerConstants.BLANK;
        this.linkTrackingIdURL = AdTrackerConstants.BLANK;
        this.unLinkTrackingIdURL = AdTrackerConstants.BLANK;
        this.pushABTesting = AdTrackerConstants.BLANK;
        this.tagURL = AdTrackerConstants.BLANK;
        this.pushServerURLStart = AdTrackerConstants.BLANK;
        this.pushServerRegisterURL = AdTrackerConstants.BLANK;
        this.pushServerUnRegisterURL = AdTrackerConstants.BLANK;
        this.pHash = AdTrackerConstants.BLANK;
        this.lastpHash = AdTrackerConstants.BLANK;
        this.openedFromPush = false;
        Log.i(TAG, "OlAndroidLibrary (DefaultConstructor): OLAndroidLibrary Version: OLAL-1.1.9 (Release Date : 27-September-2013) | RunMode: PROD");
        if ("PROD".equalsIgnoreCase("PROD")) {
            this.urlStart = "https://api.otherlevels.com/0.8";
            this.pushServerURLStart = "https://push.otherlevels.com/0.8/push";
            this.pushABTesting = "https://mdn.otherlevels.com/message/analytics";
            this.feedAPIURL = "http://api.otherlevels.com/1.0/feed";
            this.tagURL = "http://an-retargeting.awsotherlevels.com/api";
        } else if ("PROD".equalsIgnoreCase("STAGE")) {
            this.urlStart = "http://ec2-54-252-4-145.ap-southeast-2.compute.amazonaws.com:8080/OL-Server/api/0.8";
            this.pushServerURLStart = "http://ec2-54-252-48-251.ap-southeast-2.compute.amazonaws.com:8080/OL-Push-Server/0.8/push";
            this.pushABTesting = "https://mdn.otherlevels.com/message/analytics";
            this.feedAPIURL = "http://ec2-54-253-33-207.ap-southeast-2.compute.amazonaws.com:8081/1.0/feed";
        } else {
            this.urlStart = "http://192.168.0.207:8080/OL-Server/api/0.8";
            this.pushServerURLStart = "http://192.168.0.207:8080/OL-Push-Server/0.8/push";
        }
        this.sessionStartURL = this.urlStart + "/session";
        this.sessionEndURL = this.urlStart + "/session/end";
        this.appEventURL = this.urlStart + "/register_app_event";
        this.linkTrackingIdURL = this.urlStart + "/tracking";
        this.unLinkTrackingIdURL = this.urlStart + "/tracking/unlink";
        this.pushServerRegisterURL = this.pushServerURLStart + "/register";
        this.pushServerUnRegisterURL = this.pushServerURLStart + "/unregister";
        this.timer = new Timer();
        this.pushServerDeviceLanguage = detectAndReturnDeviceLanguage();
        this.pushServerDeviceTimeZoneOffSet = getTimeZoneOffSetFromGMT();
    }

    private String addDeviceLanguageToTags(String str, String str2) {
        return (str == null || str.length() == 0 || str.equalsIgnoreCase("null")) ? "\"dv_lang\":\"" + str2 + "\"" : str + ",\"dv_lang\":\"" + str2 + "\"";
    }

    private String addDeviceTimeZoneOffSetToTags(String str, String str2) {
        return (str == null || str.length() == 0 || str.equalsIgnoreCase("null")) ? "\"dv_tz\":\"" + str2 + "\"" : str + ",\"dv_tz\":\"" + str2 + "\"";
    }

    private String buildDeviceId(String str, Context context) {
        String str2 = AdTrackerConstants.BLANK;
        try {
            str2 = getTMDeviceID((TelephonyManager) context.getSystemService(ZBuildConfig.device));
            return (str2.length() < 20 || str2.equalsIgnoreCase("000000000000000")) ? generateHashDeviceUUID(str, context) : stringToHex(str2);
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Broken Telephony Service - May be telephony permissions issue OR Device is not a phone");
            Log.i(TAG, "OlAndroidLibrary: Generating Device ID using alternative method");
            return generateHashDeviceUUID(str, context);
        }
    }

    private String detectAndReturnDeviceLanguage() {
        String language = Locale.getDefault().getLanguage();
        return (language == null || language.length() == 1) ? AdTrackerConstants.BLANK : language.substring(0, GoogleScorer.CLIENT_PLUS).toLowerCase();
    }

    private String generateDeviceUUIDUsingBuildClass() {
        String str = null;
        Log.i(TAG, "OlAndroidLibrary: Generating Device Id Using Build Class");
        try {
            String str2 = "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str2.getBytes(), 0, str2.length());
                byte[] digest = instance.digest();
                String str3 = new String();
                int i = 0;
                while (i < digest.length) {
                    int i2 = digest[i] & 255;
                    if (i2 <= 15) {
                        str3 = str3 + "0";
                    }
                    i++;
                    str3 = str3 + Integer.toHexString(i2);
                }
                str3 = str3.toUpperCase();
                Log.i(TAG, "OlAndroidLibrary: Device Id Generated: " + str3);
                return str3;
            } catch (NoSuchAlgorithmException e) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Hashing Device Id", e);
                return str;
            }
        } catch (Exception e2) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Generating Device Id: ", e2);
            return str;
        }
    }

    private String generateDeviceUUIDUsingSecureAndroidId(String str, Context context) {
        String str2 = AdTrackerConstants.BLANK;
        try {
            if (getOsVersion().substring(0, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE).equalsIgnoreCase("2.2")) {
                Log.i(TAG, "OlAndroidLibrary: OS Version is 2.2 - Cannot Use Secure Android Method to generate device Id:");
                return AdTrackerConstants.BLANK;
            } else {
                try {
                    Log.i(TAG, "OlAndroidLibrary: OS is not 2.2 using Secure Android Id Method to Generate Device Id");
                    str2 = Secure.getString(context.getContentResolver(), "android_id");
                    Log.i(TAG, "OlAndroidLibrary: Secure Android Id:" + str2);
                    if (str2.length() > 0) {
                        return returnMD5Hash(str + "-" + str2.toLowerCase());
                    }
                    Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Problem Generating Device Id Using Secure Android Id");
                    return AdTrackerConstants.BLANK;
                } catch (Exception e) {
                    Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Generating Device Id Using Secure Android Id", e);
                    return AdTrackerConstants.BLANK;
                }
            }
        } catch (Exception e2) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Problems Using Secure Android Id");
            return AdTrackerConstants.BLANK;
        }
    }

    private String generateHashDeviceUUID(String str, Context context) {
        String generateDeviceUUIDUsingSecureAndroidId = generateDeviceUUIDUsingSecureAndroidId(str, context);
        return generateDeviceUUIDUsingSecureAndroidId.length() < 32 ? generateDeviceUUIDUsingBuildClass() : generateDeviceUUIDUsingSecureAndroidId;
    }

    private String generateSessionToken() {
        return new BigInteger(130, new SecureRandom()).toString(ApiEventType.API_MRAID_PLAY_AUDIO);
    }

    private String getDeviceType() {
        try {
            return Build.MODEL;
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Getting Device Type: ", e);
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }

    private String getDeviceVersion() {
        try {
            return Build.PRODUCT;
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Getting Device Version: ", e);
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }

    public static OlAndroidLibrary getInstance() {
        if (instance == null) {
            Log.i(TAG, "OlAndroidLibrary: Creating instance of OlAndroidLibrary class.");
            instance = new OlAndroidLibrary();
        }
        return instance;
    }

    private String getLocalIpAddress() {
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        return inetAddress.getHostAddress();
                    }
                }
            }
        } catch (SocketException e) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Socket Exception generated while getting Local IP Address");
        }
        return null;
    }

    private String getManufacturer() {
        try {
            String str = Build.MANUFACTURER;
            if (str == null) {
                str = DeviceInfo.ORIENTATION_UNKNOWN;
            }
            if (str.length() == 0) {
                str = DeviceInfo.ORIENTATION_UNKNOWN;
            }
            return str.toLowerCase();
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Getting Device Manufacturer: ", e);
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }

    private String getOsVersion() {
        try {
            String str = VERSION.RELEASE;
            if (str == null) {
                str = DeviceInfo.ORIENTATION_UNKNOWN;
            }
            if (str.length() == 0) {
                str = DeviceInfo.ORIENTATION_UNKNOWN;
            }
            return str.toLowerCase().replace("_", ".");
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception Getting OS Version: ", e);
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }

    private int getSessionLength() {
        return (int) TimeUnit.SECONDS.convert(this.endSessionDate.getTime() - this.startSessionDate.getTime(), TimeUnit.MILLISECONDS);
    }

    private String getTMDeviceID(TelephonyManager telephonyManager) {
        Log.i(TAG, "OlAndroidLibrary: Generating Device Id using Telephony Manager");
        String deviceId = telephonyManager.getDeviceId();
        if (deviceId == null) {
            deviceId = AdTrackerConstants.BLANK;
        }
        Log.i(TAG, "OlAndroidLibrary: DeviceId Generated:" + deviceId);
        return deviceId;
    }

    private String getTimeZoneOffSetFromGMT() {
        String str;
        Calendar gregorianCalendar = new GregorianCalendar(TimeZone.getDefault(), Locale.getDefault());
        Integer valueOf = Integer.valueOf(gregorianCalendar.get(MMException.REQUEST_BAD_RESPONSE));
        Integer valueOf2 = Integer.valueOf(gregorianCalendar.get(MMException.REQUEST_NOT_PERMITTED));
        if (valueOf.intValue() > 0) {
            str = "+";
            valueOf = Integer.valueOf((valueOf.intValue() + valueOf2.intValue()) / 60000);
        } else {
            str = "-";
            valueOf = Integer.valueOf(Integer.valueOf((valueOf.intValue() + valueOf2.intValue()) / 60000).intValue() * -1);
        }
        return str + Integer.toString(valueOf.intValue());
    }

    private void linkUnLinkTrackingId(String str, String str2, String str3, Context context) {
        this.deviceUUID = generateHashDeviceUUID(str2, context);
        JSONObject constructTrackingLinkUnLinkPayloadObject = new ConstructJson().constructTrackingLinkUnLinkPayloadObject(str2, this.deviceUUID, str3, this.pHash);
        String str4 = AdTrackerConstants.BLANK;
        str4 = str.equalsIgnoreCase("link") ? this.linkTrackingIdURL : this.unLinkTrackingIdURL;
        Log.i(TAG, "OlAndroidLibrary: Making HTTP Call to OtherLevels: " + str4);
        Log.i(TAG, "OlAndroidLibrary: Payload: " + constructTrackingLinkUnLinkPayloadObject.toString());
        makeAsyncHttpCall(constructTrackingLinkUnLinkPayloadObject.toString(), str4);
    }

    private void logDeviceInfo() {
        Log.i(TAG, "OlAndroidLibrary: ----------- Device Info -------------");
        Log.i(TAG, "OlAndroidLibrary: Device Board:" + Build.BOARD);
        Log.i(TAG, "OlAndroidLibrary: Device Bootloader:" + Build.BOOTLOADER);
        Log.i(TAG, "OlAndroidLibrary: Device Brand:" + Build.BRAND);
        Log.i(TAG, "OlAndroidLibrary: Device CPU ABI:" + Build.CPU_ABI);
        Log.i(TAG, "OlAndroidLibrary: Device Name:" + Build.DEVICE);
        Log.i(TAG, "OlAndroidLibrary: Device Display:" + Build.DISPLAY);
        Log.i(TAG, "OlAndroidLibrary: Device Fingerprint:" + Build.FINGERPRINT);
        Log.i(TAG, "OlAndroidLibrary: Device Hardware:" + Build.HARDWARE);
        Log.i(TAG, "OlAndroidLibrary: Device HOST:" + Build.HOST);
        Log.i(TAG, "OlAndroidLibrary: Device Build ID:" + Build.ID);
        Log.i(TAG, "OlAndroidLibrary: Device Manufacturer:" + Build.MANUFACTURER);
        Log.i(TAG, "OlAndroidLibrary: Device Model:" + Build.MODEL);
        Log.i(TAG, "OlAndroidLibrary: Device Product:" + Build.PRODUCT);
        Log.i(TAG, "OlAndroidLibrary: Device Tags:" + Build.TAGS);
        Log.i(TAG, "OlAndroidLibrary: Device TYPE:" + Build.TYPE);
        Log.i(TAG, "OlAndroidLibrary: Device User:" + Build.USER);
        Log.i(TAG, "OlAndroidLibrary: Device Code Name:" + VERSION.CODENAME);
        Log.i(TAG, "OlAndroidLibrary: Device Release:" + VERSION.RELEASE);
    }

    private void makeAsyncHttpCall(String str, String str2) {
        Log.i(TAG, "OlAndroidLibrary: Making Async Http Post Call");
        Log.i(TAG, "OlAndroidLibrary: URL:" + str2 + " - Data:" + str);
        RequestParams requestParams = new RequestParams();
        requestParams.put("payload", str);
        try {
            new AsyncHttpClient().post(str2, requestParams, new AsyncHttpResponseHandler() {
                public void onFailure(Throwable th, String str) {
                    Log.i(TAG, "OlAndroidLibrary: Async Http Post Call Error: " + th + " : Content :" + str);
                }

                public void onSuccess(String str) {
                    Log.i(TAG, "OlAndroidLibrary: Async Http Post Call Response: " + str);
                }
            });
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Occurred During Async HTTP Call - ", e);
        }
    }

    private void makeJSONAsyncHttpCall(JSONObject jSONObject, String str) {
        Log.i(TAG, "OlAndroidLibrary: Making Async Http Post Call");
        Log.i(TAG, "OlAndroidLibrary: URL:" + str + " - BodyContent:" + jSONObject.toString());
        try {
            new AsyncHttpClient().post(null, str, new StringEntity(jSONObject.toString()), WebRequest.CONTENT_TYPE_JSON, new AsyncHttpResponseHandler() {
                public void onFailure(Throwable th, String str) {
                    Log.i(TAG, "OlAndroidLibrary: Async Http Post Call Error: " + th + " : Content :" + str);
                }

                public void onSuccess(String str) {
                    Log.i(TAG, "OlAndroidLibrary: Async Http Post Call Response: " + str);
                }
            });
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Occurred During Async HTTP Call - ", e);
        }
    }

    @Deprecated
    private void makeSyncHTTPCall(String str, String str2) {
        try {
            Log.i(TAG, "OlAndroidLibrary: Initiating SESSION START");
            URLConnection openConnection = new URL(str2).openConnection();
            openConnection.setDoOutput(true);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(openConnection.getOutputStream());
            outputStreamWriter.write(str);
            outputStreamWriter.flush();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openConnection.getInputStream()));
            do {
            } while (bufferedReader.readLine() != null);
            outputStreamWriter.close();
            bufferedReader.close();
            Log.i(TAG, "OlAndroidLibrary: SESSION START COMPLETED");
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Caught", e);
        }
    }

    private void registerEvent(String str) {
        int sessionLength;
        String str2;
        String str3;
        String str4;
        String str5;
        this.developerKey = AdTrackerConstants.BLANK;
        String str6 = "android";
        String manufacturer = getManufacturer();
        String osVersion = getOsVersion();
        String deviceVersion = getDeviceVersion();
        String deviceType = getDeviceType();
        ConstructJson constructJson = new ConstructJson();
        JSONObject constructDeviceJsonObject = constructJson.constructDeviceJsonObject(str6, manufacturer, deviceType, deviceVersion, osVersion);
        if (str.equalsIgnoreCase("onResume")) {
            this.pushServerDeviceTimeZoneOffSet = getTimeZoneOffSetFromGMT();
            if (!sessionInProgress || this.lastActivityTimestamp == null || timerInProgress || Long.valueOf(new Date().getTime()).longValue() - this.lastActivityTimestamp.longValue() <= 20000) {
                Log.i(TAG, "OlAndroidLibrary: Last Session still active. Not starting new session.");
                this.lastActivityTimestamp = Long.valueOf(new Date().getTime());
                this.pHash = this.lastpHash;
                return;
            } else {
                Log.i(TAG, "OlAndroidLibrary: Closing previous session (if any).");
                this.endSessionDate = new Date();
                sessionLength = getSessionLength();
                manufacturer = this.pHash;
                deviceType = this.appVersion;
                deviceVersion = this.deviceUUID;
                osVersion = this.appKey;
                str2 = this.developerKey;
                str3 = this.appName;
                str4 = this.pushServerDeviceTimeZoneOffSet;
                str5 = this.pushServerDeviceLanguage;
                getClass();
                sessionEnd(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, sessionLength, "1.1.9"));
                counter = 0;
                sessionInProgress = false;
                timerInProgress = false;
                this.timer.cancel();
                this.timer = new Timer();
                this.pHash = AdTrackerConstants.BLANK;
                if (sessionInProgress || timerInProgress) {
                    counter++;
                    sessionInProgress = true;
                    if (timerInProgressTimestamp != null) {
                        if (Long.valueOf(new Date().getTime()).longValue() - timerInProgressTimestamp.longValue() > 10000) {
                            if (this.openedFromPush) {
                                Log.i(TAG, "OlAndroidLibrary: STARTING SESSION (2) WITH NOTIFICATION");
                                this.lastActivityTimestamp = Long.valueOf(new Date().getTime());
                                manufacturer = this.pHash;
                                deviceType = this.appVersion;
                                deviceVersion = this.deviceUUID;
                                osVersion = this.appKey;
                                str2 = this.developerKey;
                                str3 = this.appName;
                                str4 = this.pushServerDeviceTimeZoneOffSet;
                                str5 = this.pushServerDeviceLanguage;
                                getClass();
                                sessionStart(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, 0, "1.1.9"));
                                this.lastpHash = this.pHash;
                            } else {
                                Log.i(TAG, "OlAndroidLibrary: STARTING SESSION (2)");
                                this.lastActivityTimestamp = Long.valueOf(new Date().getTime());
                                this.lastpHash = AdTrackerConstants.BLANK;
                                this.pHash = AdTrackerConstants.BLANK;
                                manufacturer = this.pHash;
                                deviceType = this.appVersion;
                                deviceVersion = this.deviceUUID;
                                osVersion = this.appKey;
                                str2 = this.developerKey;
                                str3 = this.appName;
                                str4 = this.pushServerDeviceTimeZoneOffSet;
                                str5 = this.pushServerDeviceLanguage;
                                getClass();
                                sessionStart(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, 0, "1.1.9"));
                            }
                        } else if (this.openedFromPush) {
                            Log.i(TAG, "OlAndroidLibrary: Closing previous session (if any).");
                            this.endSessionDate = new Date();
                            sessionLength = getSessionLength();
                            manufacturer = this.lastpHash;
                            deviceType = this.appVersion;
                            deviceVersion = this.deviceUUID;
                            osVersion = this.appKey;
                            str2 = this.developerKey;
                            str3 = this.appName;
                            str4 = this.pushServerDeviceTimeZoneOffSet;
                            str5 = this.pushServerDeviceLanguage;
                            getClass();
                            sessionEnd(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, sessionLength, "1.1.9"));
                            counter = 0;
                            timerInProgress = false;
                            this.timer.cancel();
                            this.timer = new Timer();
                            Log.i(TAG, "OlAndroidLibrary: STARTING NEW SESSION (2) WITH NOTIFICATION");
                            this.lastActivityTimestamp = Long.valueOf(new Date().getTime());
                            manufacturer = this.pHash;
                            deviceType = this.appVersion;
                            deviceVersion = this.deviceUUID;
                            osVersion = this.appKey;
                            str2 = this.developerKey;
                            str3 = this.appName;
                            str4 = this.pushServerDeviceTimeZoneOffSet;
                            str5 = this.pushServerDeviceLanguage;
                            getClass();
                            sessionStart(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, 0, "1.1.9"));
                            this.lastpHash = this.pHash;
                        } else {
                            Log.i(TAG, "OlAndroidLibrary: NO NEED TO START NEW SESSION");
                            this.pHash = this.lastpHash;
                        }
                    }
                    if (timerInProgress) {
                        Log.i(TAG, "OlAndroidLibrary: TIMER CANCELLED");
                        timerInProgress = false;
                        this.timer.cancel();
                        this.timer = new Timer();
                    }
                } else {
                    counter++;
                    Log.i(TAG, "OlAndroidLibrary: STARTING NEW SESSION");
                    this.lastActivityTimestamp = Long.valueOf(new Date().getTime());
                    manufacturer = this.pHash;
                    deviceType = this.appVersion;
                    deviceVersion = this.deviceUUID;
                    osVersion = this.appKey;
                    str2 = this.developerKey;
                    str3 = this.appName;
                    str4 = this.pushServerDeviceTimeZoneOffSet;
                    str5 = this.pushServerDeviceLanguage;
                    getClass();
                    sessionStart(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, 0, "1.1.9"));
                    sessionInProgress = true;
                    timerInProgress = false;
                    this.timer.cancel();
                    this.timer = new Timer();
                    this.lastpHash = AdTrackerConstants.BLANK;
                    this.pHash = AdTrackerConstants.BLANK;
                }
            }
        }
        if (str.equalsIgnoreCase("onPause")) {
            counter--;
            Log.i(TAG, "OlAndroidLibrary: SESSION STOP");
            this.lastActivityTimestamp = Long.valueOf(new Date().getTime());
            if (counter <= 0 && !timerInProgress) {
                Log.i(TAG, "OlAndroidLibrary: STARTING TIMER - Session will close if inactive for 10 secs.");
                this.pushServerDeviceTimeZoneOffSet = getTimeZoneOffSetFromGMT();
                this.endSessionDate = new Date();
                sessionLength = getSessionLength();
                manufacturer = this.pHash;
                deviceType = this.appVersion;
                deviceVersion = this.deviceUUID;
                osVersion = this.appKey;
                str2 = this.developerKey;
                str3 = this.appName;
                str4 = this.pushServerDeviceTimeZoneOffSet;
                str5 = this.pushServerDeviceLanguage;
                getClass();
                this.timer.schedule(new TimerSessionEnd(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, sessionLength, "1.1.9"), this.sessionEndURL), 10000);
                timerInProgress = true;
                sessionInProgress = false;
                timerInProgressTimestamp = Long.valueOf(new Date().getTime());
                this.openedFromPush = false;
                this.lastpHash = this.pHash;
            }
        }
    }

    private void registerEvent(String str, String str2, String str3, Context context) {
        Log.i(TAG, "OlAndroidLibrary: Registering Activity Event");
        String replaceAll = str2.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
        if (replaceAll.length() > 50) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - InValid Length of App Key - Discarding it - AppKey=" + replaceAll);
            replaceAll = AdTrackerConstants.BLANK;
        }
        this.appKey = replaceAll;
        Resources resources = context.getResources();
        try {
            CharSequence text = resources.getText(resources.getIdentifier("app_name", "string", context.getPackageName()));
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - app_name is not found in the Package - Looking for appName in the package");
            text = AdTrackerConstants.BLANK;
        }
        if (text.length() == 0) {
            try {
                text = resources.getText(resources.getIdentifier("appName", "string", context.getPackageName()));
            } catch (Exception e2) {
                text = "NOT_CONFIGURED";
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - appName is not Present - Setting appName as: " + text);
            }
        }
        if (text.length() > 0) {
            this.appName = text.toString().trim();
        } else {
            this.appName = "NOT_CONFIGURED";
        }
        this.appVersion = "1.0";
        try {
            this.appVersion = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e3) {
            this.appVersion = "1.0";
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Problems getting App Version Name");
        }
        Log.i(TAG, "OlAndroidLibrary: App Key:" + this.appKey + " | App Name:" + this.appName + " | App Version:" + this.appVersion);
        if (str3 == null || str3.length() == 0) {
            this.deviceUUID = generateHashDeviceUUID(replaceAll, context);
            Log.i(TAG, "OlAndroidLibrary: Device Id as generated by Otherlevels Library - " + this.deviceUUID);
        } else {
            this.deviceUUID = str3;
            Log.i(TAG, "OlAndroidLibrary: Modified version of Client Device Id - " + this.deviceUUID);
        }
        registerEvent(str);
    }

    private String returnMD5Hash(String str) {
        try {
            String toString = new BigInteger(1, MessageDigest.getInstance("MD5").digest(str.getBytes())).toString(MMException.REQUEST_NOT_PERMITTED);
            while (toString.length() < 32) {
                toString = "0" + toString;
            }
            return toString;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private void sessionEnd(JSONObject jSONObject) {
        try {
            makeAsyncHttpCall(jSONObject.toString(), this.sessionEndURL);
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Caught", e);
        }
    }

    private void sessionStart(JSONObject jSONObject) {
        this.startSessionDate = new Date();
        try {
            makeAsyncHttpCall(jSONObject.toString(), this.sessionStartURL);
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Caught", e);
        }
    }

    private static String stringToHex(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            String toBinaryString = Integer.toBinaryString(str.charAt(i));
            int i2 = 0;
            int i3 = 0;
            while (i2 < toBinaryString.length()) {
                if (toBinaryString.charAt(i2) == '1') {
                    i3++;
                }
                i2++;
            }
            if (i3 % 2 > 0) {
                i2 = charAt + 128;
            } else {
                char c = charAt;
            }
            stringBuilder.append(Integer.toHexString(i2)).append(" ");
            i++;
        }
        return stringBuilder.toString().toUpperCase().replaceAll(" ", AdTrackerConstants.BLANK);
    }

    private boolean validateAppKeyLength(String str) {
        return str != null && str.length() >= 30 && str.length() <= 36;
    }

    public void appSessionEnd() {
        this.developerKey = AdTrackerConstants.BLANK;
        String str = "android";
        String manufacturer = getManufacturer();
        String osVersion = getOsVersion();
        String deviceVersion = getDeviceVersion();
        String deviceType = getDeviceType();
        this.pushServerDeviceTimeZoneOffSet = getTimeZoneOffSetFromGMT();
        ConstructJson constructJson = new ConstructJson();
        JSONObject constructDeviceJsonObject = constructJson.constructDeviceJsonObject(str, manufacturer, deviceType, deviceVersion, osVersion);
        this.endSessionDate = new Date();
        int sessionLength = getSessionLength();
        manufacturer = this.pHash;
        deviceType = this.appVersion;
        deviceVersion = this.deviceUUID;
        osVersion = this.appKey;
        String str2 = this.developerKey;
        String str3 = this.appName;
        String str4 = this.pushServerDeviceTimeZoneOffSet;
        String str5 = this.pushServerDeviceLanguage;
        getClass();
        sessionEnd(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, sessionLength, "1.1.9"));
    }

    public void appSessionStart(String str) {
        pushPhashForTracking(str);
        trackLastPhashOpen();
    }

    public void clearAllPendingNotification(Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancelAll();
    }

    public void geoLocationUpdate(Location location, String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: Geo-Location Update");
        this.appKey = this.appKey.trim();
        this.appKey = this.appKey.replaceAll(" ", AdTrackerConstants.BLANK);
        if (validateAppKeyLength(this.appKey)) {
            if (this.deviceUUID == null) {
                this.deviceUUID = generateHashDeviceUUID(this.appKey, context);
            }
            JSONObject constructGeoLocationUpdatePayloadObject = new ConstructJson().constructGeoLocationUpdatePayloadObject(location, str, this.appKey, this.pHash);
            Log.i(TAG, "OlAndroidLibrary: Full Payload is: " + constructGeoLocationUpdatePayloadObject.toString());
            try {
                makeJSONAsyncHttpCall(constructGeoLocationUpdatePayloadObject, this.feedAPIURL);
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception generated while making HTTP call to Otherlevels.");
            }
        } else {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - APP EVENT NOT REGISTERED");
        }
    }

    public void getTagValue(String str, String str2, String str3, OLAndroidAsyncResponseHandler oLAndroidAsyncResponseHandler) {
        Log.i(TAG, "OlAndroidLibrary: Get TagValue");
        this.appKey = this.appKey.trim();
        this.appKey = this.appKey.replaceAll(" ", AdTrackerConstants.BLANK);
        if (validateAppKeyLength(this.appKey)) {
            try {
                String str4 = this.tagURL + "/apps/" + this.appKey + "/tracking/" + str2 + "/tag/" + str3;
                Log.i(TAG, str4);
                new AsyncHttpClient().get(str4, new AnonymousClass_6(oLAndroidAsyncResponseHandler));
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: Exception generated while making Get TagValue call to Otherlevels.");
            }
        } else {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - APP EVENT NOT REGISTERED");
        }
    }

    public void linkTrackingId(String str, String str2, Context context) {
        Log.i(TAG, "OlAndroidLibrary: Link Tracking Id function called");
        linkUnLinkTrackingId("link", str, str2, context);
    }

    public void pushPhashForTracking(String str) {
        if (str.isEmpty()) {
            Log.i(TAG, "OlAndroidLibrary: pHash empty or nil Error: pHash must not be nil or empty ");
        } else {
            this.lastpHash = this.pHash;
            this.pHash = str;
        }
    }

    public void registerAppEvent(String str, String str2, String str3, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        String replaceAll = str.trim().replaceAll(" ", AdTrackerConstants.BLANK);
        if (validateAppKeyLength(replaceAll)) {
            this.deviceUUID = generateHashDeviceUUID(replaceAll, context);
            JSONObject constructAppEventPayloadObject = new ConstructJson().constructAppEventPayloadObject(str2, str3, this.deviceUUID, replaceAll, this.pHash);
            Log.i(TAG, "OlAndroidLibrary: Full Payload is: " + constructAppEventPayloadObject.toString());
            try {
                makeAsyncHttpCall(constructAppEventPayloadObject.toString(), this.appEventURL);
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception generated while making HTTP call to Otherlevels.");
            }
        } else {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - APP EVENT NOT REGISTERED");
        }
    }

    public void registerAppEvent(String str, String str2, String str3, Context context, String str4) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        String replaceAll = str.trim().replaceAll(" ", AdTrackerConstants.BLANK);
        if (validateAppKeyLength(replaceAll)) {
            this.deviceUUID = generateHashDeviceUUID(replaceAll, context);
            JSONObject constructAppEventPayloadObject = new ConstructJson().constructAppEventPayloadObject(str2, str3, this.deviceUUID, replaceAll, str4);
            Log.i(TAG, "OlAndroidLibrary: Full Payload is: " + constructAppEventPayloadObject.toString());
            try {
                makeAsyncHttpCall(constructAppEventPayloadObject.toString(), this.appEventURL);
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception generated while making HTTP call to Otherlevels.");
            }
        } else {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - APP EVENT NOT REGISTERED");
        }
    }

    public void registerAppEvent(String str, String str2, String str3, String str4, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        String replaceAll = str.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
        if (!validateAppKeyLength(replaceAll)) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - APP EVENT NOT REGISTERED");
        } else if (str2 == null) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR###: Device Id not passed with function call.");
        } else {
            this.deviceUUID = returnMD5Hash(replaceAll + "-" + str2.trim().toLowerCase());
            JSONObject constructAppEventPayloadObject = new ConstructJson().constructAppEventPayloadObject(str3, str4, this.deviceUUID, replaceAll, this.pHash);
            Log.i(TAG, "OlAndroidLibrary: Full Payload is: " + constructAppEventPayloadObject.toString());
            try {
                makeAsyncHttpCall(constructAppEventPayloadObject.toString(), this.appEventURL);
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: Exception generated while making HTTP call to Otherlevels.");
            }
        }
    }

    public void registerAppEvent(String str, String str2, String str3, String str4, Context context, String str5) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        String replaceAll = str.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
        if (!validateAppKeyLength(replaceAll)) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - APP EVENT NOT REGISTERED");
        } else if (str2 == null) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR###: Device Id not passed with function call.");
        } else {
            this.deviceUUID = returnMD5Hash(replaceAll + "-" + str2.trim().toLowerCase());
            JSONObject constructAppEventPayloadObject = new ConstructJson().constructAppEventPayloadObject(str3, str4, this.deviceUUID, replaceAll, str5);
            Log.i(TAG, "OlAndroidLibrary: Full Payload is: " + constructAppEventPayloadObject.toString());
            try {
                makeAsyncHttpCall(constructAppEventPayloadObject.toString(), this.appEventURL);
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: Exception generated while making HTTP call to Otherlevels.");
            }
        }
    }

    public void registerCreate(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY CREATE EVENT");
        logDeviceInfo();
    }

    public void registerDestroy(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY DESTROY EVENT");
    }

    public Intent registerIntent(Context context, Intent intent) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        if (!this.pHash.isEmpty()) {
            this.lastpHash = this.pHash;
        }
        try {
            Bundle extras = intent.getExtras();
            String str = AdTrackerConstants.BLANK;
            if (extras != null) {
                if (extras.get("p") != null) {
                    String str2 = (String) extras.get("p");
                    if (str2.length() < 6) {
                        Log.i(TAG, "OlAndroidLibrary: ###ERROR### - InValid PHash Length - Discarding it - PHash=" + str2);
                        str2 = AdTrackerConstants.BLANK;
                    } else {
                        Log.i(TAG, "OlAndroidLibrary: Phash Found in Push - Phash=" + str2);
                    }
                    this.pHash = str2;
                    this.openedFromPush = true;
                } else {
                    Log.i(TAG, "OlAndroidLibrary: NO PHASH FOUND IN THE PUSH");
                }
            }
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Caught - ", e);
        }
        return intent;
    }

    public void registerPause(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY PAUSE EVENT");
        if (str == null) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - APP KEY IS NULL");
        } else {
            String replaceAll = str.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
            if (validateAppKeyLength(replaceAll)) {
                registerEvent("onPause", replaceAll, AdTrackerConstants.BLANK, context);
            } else {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - SESSION NOT REGISTERED");
            }
        }
    }

    public void registerPause(String str, String str2, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY PAUSE EVENT [ WITH Client Device Id: " + str2 + " ] CALLED");
        if (str == null) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - APP KEY IS NULL");
        } else {
            String replaceAll = str.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
            if (str2 == null) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR###: Device Id not passed with function call.");
            } else {
                String returnMD5Hash = returnMD5Hash(replaceAll + "-" + str2.trim().toLowerCase());
                if (validateAppKeyLength(replaceAll)) {
                    registerEvent("onPause", replaceAll, returnMD5Hash, context);
                } else {
                    Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - SESSION NOT REGISTERED");
                }
            }
        }
    }

    public void registerRestart(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY RESTART EVENT");
    }

    public void registerResume(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY RESUME EVENT");
        if (str == null) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - APP KEY IS NULL");
        } else {
            String replaceAll = str.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
            if (validateAppKeyLength(replaceAll)) {
                registerEvent("onResume", replaceAll, AdTrackerConstants.BLANK, context);
            } else {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - SESSION NOT REGISTERED");
            }
        }
    }

    public void registerResume(String str, String str2, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY RESUME EVENT [ WITH Client Device Id: " + str2 + " ] CALLED");
        if (str == null) {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - APP KEY IS NULL");
        } else {
            String replaceAll = str.trim().toLowerCase().replaceAll(" ", AdTrackerConstants.BLANK);
            if (str2 == null) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR###: Device Id not passed with function call.");
            } else {
                String returnMD5Hash = returnMD5Hash(replaceAll + "-" + str2.trim().toLowerCase());
                if (validateAppKeyLength(replaceAll)) {
                    registerEvent("onResume", replaceAll, returnMD5Hash, context);
                } else {
                    Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - SESSION NOT REGISTERED");
                }
            }
        }
    }

    public void registerStart(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: ACTIVITY START EVENT");
    }

    public void registerStop(String str, Context context) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: STOP EVENT");
    }

    public void registerUserAndDeviceToken(String str, String str2, String str3, String str4) {
        registerUserAndDeviceToken(str, str2, str3, str4, "null");
    }

    public void registerUserAndDeviceToken(String str, String str2, String str3, String str4, String str5) {
        Log.i(TAG, "OlAndroidLibrary: Registering Device Token");
        this.pushServerAuthKey = str2.toLowerCase();
        Log.i(TAG, "OlAndroidLibrary: Push Server Auth Key:" + this.pushServerAuthKey.substring(0, R.styleable.MapAttrs_uiZoomControls) + "XXXXXXXXXXXXXXXXXXXXXX");
        this.pushServerChannel = str3.toLowerCase();
        Log.i(TAG, "OlAndroidLibrary: Push Server Channel:" + this.pushServerChannel.substring(0, R.styleable.MapAttrs_uiZoomControls) + "XXXXXXXXXXXXXXXXXXXXXX");
        this.pushServerDeviceToken = str4;
        Log.i(TAG, "OlAndroidLibrary: Push Server Device Token:" + this.pushServerDeviceToken);
        this.pushServerPUID = str;
        Log.i(TAG, "OlAndroidLibrary: Push Server PUID:" + this.pushServerPUID);
        String trim = str5.toLowerCase().trim();
        if (trim.length() == 0) {
            this.pushServerTags = "null";
        } else {
            this.pushServerTags = trim;
            Log.i(TAG, "OlAndroidLibrary: Push Server Tags:" + this.pushServerTags);
        }
        this.pushServerDeviceCategory = ZBuildConfig.device;
        this.pushServerDeviceOsType = "android";
        this.pushServerDeviceOsVersion = getOsVersion();
        Log.i(TAG, "OlAndroidLibrary: Push Server Os Version:" + this.pushServerDeviceOsVersion);
        this.pushServerDeviceModel = getDeviceType();
        Log.i(TAG, "OlAndroidLibrary: Push Server Model Name as per Build.Model:" + this.pushServerDeviceModel);
        this.pushServerDeviceLanguage = detectAndReturnDeviceLanguage();
        if (this.pushServerDeviceLanguage.length() >= 2) {
            Log.i(TAG, "OlAndroidLibrary: Push Server Device Language Code:" + this.pushServerDeviceLanguage);
            this.pushServerTags = addDeviceLanguageToTags(this.pushServerTags, this.pushServerDeviceLanguage);
        }
        this.pushServerDeviceTimeZoneOffSet = getTimeZoneOffSetFromGMT();
        if (this.pushServerDeviceTimeZoneOffSet.length() >= 2) {
            Log.i(TAG, "OlAndroidLibrary: Push Server Device TimeZone OffSet:" + this.pushServerDeviceTimeZoneOffSet);
            this.pushServerTags = addDeviceTimeZoneOffSetToTags(this.pushServerTags, this.pushServerDeviceTimeZoneOffSet);
        }
        Log.i(TAG, "OlAndroidLibrary: Assembling POST Data");
        RequestParams requestParams = new RequestParams();
        requestParams.put("auth_key", this.pushServerAuthKey);
        requestParams.put("channel", this.pushServerChannel);
        requestParams.put("puid", this.pushServerPUID);
        requestParams.put("devicetoken", this.pushServerDeviceToken);
        requestParams.put("ostype", this.pushServerDeviceOsType);
        requestParams.put("category", this.pushServerDeviceCategory);
        requestParams.put("model", this.pushServerDeviceModel);
        requestParams.put("version", this.pushServerDeviceOsVersion);
        String str6 = "lv";
        getClass();
        requestParams.put(str6, "1.1.9");
        requestParams.put("phash", this.pHash);
        if (this.pushServerTags.length() > 0 && !this.pushServerTags.equalsIgnoreCase("null")) {
            requestParams.put("tags", this.pushServerTags);
        }
        Log.i(TAG, "OlAndroidLibrary: Making HTTP ASYNC Register POST Call to Other Levels Push Server");
        try {
            new AsyncHttpClient().post(this.pushServerRegisterURL, requestParams, new AsyncHttpResponseHandler() {
                public void onSuccess(String str) {
                    Log.i(TAG, "OlAndroidLibrary: Register HTTP Post Call Response: " + str);
                }
            });
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Occurred During Register Async HTTP Call - ", e);
        }
    }

    public void scheduleLocalNotification(String str, String str2, long j, Intent intent, Context context, int i) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            applicationInfo = null;
        }
        this.br = new AnonymousClass_4(context, (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)"), i, intent);
        getInstance().splitTestNotification(str, str2, new AnonymousClass_5(context, j));
    }

    public void setTagValue(String str, String str2, String str3, String str4, String str5) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        String replaceAll = str.trim().replaceAll(" ", AdTrackerConstants.BLANK);
        if (validateAppKeyLength(replaceAll)) {
            JSONObject constructSetTagPayloadObject = new ConstructJson().constructSetTagPayloadObject(str3, str4, str5, replaceAll, str2);
            Log.i(TAG, "OlAndroidLibrary: Full Payload is: " + constructSetTagPayloadObject.toString());
            try {
                makeAsyncHttpCall(constructSetTagPayloadObject.toString(), this.tagURL + "/trackingUpdate");
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: ###ERROR### - Exception generated while making HTTP call to Otherlevels.");
            }
        } else {
            Log.i(TAG, "OlAndroidLibrary: ###ERROR### - INVALID APP KEY - Set Tag Value not executed");
        }
    }

    public void splitTestNotification(String str, String str2, OLAndroidAsyncResponseHandler oLAndroidAsyncResponseHandler) {
        Log.i(TAG, "OlAndroidLibrary: SplitTestNotification Send");
        try {
            String replace = URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT).replace("+", "%20");
            RequestParams requestParams = new RequestParams();
            requestParams.put("pushtext", replace);
            requestParams.put("campaigntoken", str2);
            requestParams.put("responsetype", "json");
            requestParams.put("phash", this.pHash);
            Log.i(TAG, "OlAndroidLibrary: SplitTestNotification content: " + requestParams.toString());
            try {
                new AsyncHttpClient().post(this.pushABTesting, requestParams, new AnonymousClass_3(oLAndroidAsyncResponseHandler));
            } catch (Exception e) {
                Log.i(TAG, "OlAndroidLibrary: Exception generated while making SplitTestNotification call to Otherlevels.");
            }
        } catch (UnsupportedEncodingException e2) {
            Log.i(TAG, "OlAndroidLibrary: UnsupportedEncodingException Exception in SplitTestNotification.");
        }
    }

    public void trackLastPhashOpen() {
        String str = "android";
        String manufacturer = getManufacturer();
        String osVersion = getOsVersion();
        String deviceVersion = getDeviceVersion();
        String deviceType = getDeviceType();
        this.pushServerDeviceTimeZoneOffSet = getTimeZoneOffSetFromGMT();
        ConstructJson constructJson = new ConstructJson();
        JSONObject constructDeviceJsonObject = constructJson.constructDeviceJsonObject(str, manufacturer, deviceType, deviceVersion, osVersion);
        manufacturer = this.pHash;
        deviceType = this.appVersion;
        deviceVersion = this.deviceUUID;
        osVersion = this.appKey;
        String str2 = this.developerKey;
        String str3 = this.appName;
        String str4 = this.pushServerDeviceTimeZoneOffSet;
        String str5 = this.pushServerDeviceLanguage;
        getClass();
        sessionStart(constructJson.constructPayloadObject(constructDeviceJsonObject, manufacturer, deviceType, deviceVersion, osVersion, str2, str3, str4, str5, 0, "1.1.9"));
    }

    public void unLinkTrackingId(String str, String str2, Context context) {
        Log.i(TAG, "OlAndroidLibrary: UnLink Tracking Id function called");
        linkUnLinkTrackingId("unlink", str, str2, context);
    }

    public void unregisterUser(String str, String str2, String str3, String str4) {
        Log.i(TAG, "OlAndroidLibrary: OLAndroidLibrary Version: 1.1.9");
        Log.i(TAG, "OlAndroidLibrary: UnRegister User Function called");
        this.pushServerAuthKey = str2;
        Log.i(TAG, "OlAndroidLibrary: Push Server Auth Key:" + this.pushServerAuthKey.substring(0, R.styleable.MapAttrs_uiZoomControls) + "XXXXXXXXXXXXXXXXXXXXXX");
        this.pushServerChannel = str3;
        Log.i(TAG, "OlAndroidLibrary: Push Server Channel:" + this.pushServerChannel.substring(0, R.styleable.MapAttrs_uiZoomControls) + "XXXXXXXXXXXXXXXXXXXXXX");
        this.pushServerDeviceToken = str4;
        Log.i(TAG, "OlAndroidLibrary: Push Server Device Token:" + this.pushServerDeviceToken);
        this.pushServerPUID = str;
        Log.i(TAG, "OlAndroidLibrary: Push Server PUID:" + this.pushServerPUID);
        Log.i(TAG, "OlAndroidLibrary: Assembling POST Data");
        RequestParams requestParams = new RequestParams();
        requestParams.put("auth_key", this.pushServerAuthKey);
        requestParams.put("channel", this.pushServerChannel);
        requestParams.put("puid", this.pushServerPUID);
        requestParams.put("devicetoken", this.pushServerDeviceToken);
        requestParams.put("phash", this.pHash);
        Log.i(TAG, "OlAndroidLibrary: Making HTTP ASYNC UnRegister POST Call to Other Levels Push Server");
        try {
            new AsyncHttpClient().post(this.pushServerUnRegisterURL, requestParams, new AsyncHttpResponseHandler() {
                public void onSuccess(String str) {
                    Log.i(TAG, "OlAndroidLibrary: UnRegister HTTP Post Call Response: " + str);
                }
            });
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Occurred During UnRegister Async HTTP Call - ", e);
        }
    }
}