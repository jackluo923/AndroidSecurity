package com.gameanalytics.android;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.format.Time;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.wallet.WalletConstants;
import com.google.gson.Gson;
import com.inmobi.androidsdk.impl.AdException;
import com.loopj.twicecircled.android.http.AsyncHttpClient;
import com.loopj.twicecircled.android.http.AsyncHttpResponseHandler;
import com.millennialmedia.android.MMException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class GameAnalytics {
    protected static final String API_URL = "http://api.gameanalytics.com/1/";
    private static String AREA = null;
    protected static final String AUTHORIZATION = "Authorization";
    private static boolean AUTO_BATCH = false;
    private static final String BAD_REQUEST = "Not all required fields are present in the data.";
    private static final String BAD_REQUEST_DESC = "When you see this, most likely some required fields are missing from the JSON data you sent. Make sure you include all required fields for the category you are using. Please note that incomplete events are discarded.";
    private static String BUILD = null;
    protected static final String BUSINESS = "business";
    private static boolean CACHE_LOCALLY = false;
    private static AsyncHttpClient CLIENT = null;
    protected static final String CONTENT_TYPE = "Content-Type";
    protected static final String CONTENT_TYPE_JSON = "application/json";
    private static Context CONTEXT = null;
    private static BatchThread CURRENT_THREAD = null;
    private static final String DATA_NOT_FOUND = "Data not found";
    private static final String DATA_NOT_FOUND_DESC = "No JSON data was sent with the request. Make sure that you are sending some data as either a single JSON object or as an array of JSON objects.";
    protected static final String DESIGN = "design";
    private static EventDatabase EVENT_DATABASE = null;
    private static final String FORBIDDEN_DESC = "Make sure that the URL is valid and that it conforms to the specifications.";
    private static final String FPS_EVENT_NAME = "FPS";
    private static int FPS_FRAMES = 0;
    private static String GAME_KEY = null;
    private static final String GAME_NOT_FOUND = "Game key not found";
    private static final String GAME_NOT_FOUND_DESC = "The game key in the URL does not match any existing games. Make sure that you are using the correct game key (the key which you received when creating your game on the GameAnalytics website).";
    private static boolean INITIALISED = false;
    private static final String INTERNAL_SERVER_ERROR_DESC = "Internal server error. Please bring this error to Game Analytics attention. We are sorry for any inconvenience caused.";
    protected static int LOGGING = 0;
    private static final String METHOD_NOT_SUPPORTED = "Method not found";
    private static final String METHOD_NOT_SUPPORTED_DESC = "The URI used to post data to the server was incorrect. This could be because the game key supplied the GameAnalytics during initialise() was blank or null.";
    private static int NETWORK_POLL_INTERVAL = 0;
    private static final String NOT_IMPLEMENTED_DESC = "The used HTTP method is not supported. Please only use the POST method for submitting data.";
    private static final String NO_GAME = "Game not found";
    private static final String NO_GAME_DESC = "The game key supplied was not recognised. Make sure that you use the game key you were supplied when you signed up in GameAnalytics.initialise().";
    protected static final String QUALITY = "quality";
    public static final int RELEASE = 1;
    private static String SECRET_KEY = null;
    private static int SEND_EVENT_INTERVAL = 0;
    private static long SESSION_END_TIME = 0;
    private static String SESSION_ID = null;
    private static boolean SESSION_STARTED = false;
    private static int SESSION_TIME_OUT = 0;
    private static final String SIG_NOT_FOUND = "Signature not found in request";
    private static final String SIG_NOT_FOUND_DESC = "The \"Authorization\" header is missing. Make sure that you add a header with the \"Authorization\" key to your API call.";
    private static long START_FPS_TIME = 0;
    private static final String UNAUTHORIZED = "Unauthorized";
    private static final String UNAUTHORIZED_DESC = "The value of the authorization header is not valid. Make sure you use exactly the same secret key as was supplied to you when you created your Game Analytics account.";
    protected static final String USER = "user";
    private static String USER_ID;
    public static final int VERBOSE = 0;
    protected static final AsyncHttpResponseHandler postResponseHandler;

    static {
        LOGGING = 1;
        SEND_EVENT_INTERVAL = 20000;
        NETWORK_POLL_INTERVAL = 60000;
        SESSION_TIME_OUT = 20000;
        INITIALISED = false;
        SESSION_STARTED = false;
        CACHE_LOCALLY = true;
        AUTO_BATCH = true;
        postResponseHandler = new AsyncHttpResponseHandler() {
            public void onFailure(Throwable th, String str) {
                String str2 = null;
                try {
                    ErrorResponse errorResponse = (ErrorResponse) new Gson().fromJson(str, ErrorResponse.class);
                } catch (Exception e) {
                    GALog.e(new StringBuilder("Error converting failure response from json: ").append(str).toString(), e);
                    String str3 = str2;
                }
                if (errorResponse != null) {
                    String str4;
                    switch (errorResponse.code) {
                        case AdException.INVALID_APP_ID:
                            if (errorResponse.message.equals(BAD_REQUEST)) {
                                str4 = BAD_REQUEST_DESC;
                            } else if (errorResponse.message.equals(NO_GAME)) {
                                str4 = NO_GAME_DESC;
                            } else {
                                if (errorResponse.message.equals(DATA_NOT_FOUND)) {
                                    str4 = DATA_NOT_FOUND_DESC;
                                }
                                str4 = str2;
                            }
                            break;
                        case 401:
                            if (errorResponse.message.equals(UNAUTHORIZED)) {
                                str4 = UNAUTHORIZED_DESC;
                            } else {
                                if (errorResponse.message.equals(SIG_NOT_FOUND)) {
                                    str4 = SIG_NOT_FOUND_DESC;
                                }
                                str4 = str2;
                            }
                            break;
                        case 403:
                            str4 = FORBIDDEN_DESC;
                            break;
                        case WalletConstants.ERROR_CODE_INVALID_PARAMETERS:
                            if (errorResponse.message.equals(GAME_NOT_FOUND)) {
                                str4 = GAME_NOT_FOUND_DESC;
                            } else {
                                if (errorResponse.message.equals(METHOD_NOT_SUPPORTED)) {
                                    str4 = METHOD_NOT_SUPPORTED_DESC;
                                }
                                str4 = str2;
                            }
                            break;
                        case 500:
                            str4 = INTERNAL_SERVER_ERROR_DESC;
                            break;
                        case 501:
                            str4 = NOT_IMPLEMENTED_DESC;
                            break;
                        default:
                            str4 = str2;
                            break;
                    }
                    if (str4 != null) {
                        GALog.e(new StringBuilder("Error response code: ").append(errorResponse.code).append(System.getProperty("line.separator")).append(str4).toString());
                    } else {
                        GALog.i(new StringBuilder("Code: ").append(errorResponse.code).toString());
                        GALog.i(new StringBuilder("Message: ").append(errorResponse.message).toString());
                        GALog.e(new StringBuilder("Unrecognised response code: ").append(th.toString()).toString(), th);
                    }
                } else {
                    GALog.e(new StringBuilder("Error: ").append(th.toString()).toString(), th);
                }
            }

            public void onFinish() {
                GALog.i("onFinish");
            }

            public void onStart() {
                GALog.i("onStart");
            }

            public void onSuccess(int i, String str) {
                GALog.i(new StringBuilder("Succesful response: ").append(str).toString());
            }
        };
    }

    private static String getSessionId() {
        Time time = new Time();
        time.setToNow();
        return md5(new StringBuilder(String.valueOf(USER_ID)).append(time.toString()).toString());
    }

    public static void initialise(Context context, String str, String str2) {
        String str3;
        try {
            str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            GALog.w("Warning: android:versionName tag is not set correctly in Android Manifest.");
            str3 = DeviceInfo.ORIENTATION_UNKNOWN;
        }
        initialise(context, str, str2, str3);
    }

    public static void initialise(Context context, String str, String str2, String str3) {
        USER_ID = md5(Secure.getString(context.getContentResolver(), "android_id"));
        SECRET_KEY = str;
        GAME_KEY = new StringBuilder(String.valueOf(str2)).append("/").toString();
        BUILD = str3;
        CLIENT = new AsyncHttpClient();
        EVENT_DATABASE = new EventDatabase(context);
        INITIALISED = true;
    }

    public static void logFPS() {
        if (START_FPS_TIME == 0) {
            START_FPS_TIME = System.currentTimeMillis();
        } else {
            FPS_FRAMES++;
        }
    }

    public static void logUnhandledExceptions() {
        Thread.currentThread().setUncaughtExceptionHandler(new ExceptionLogger());
    }

    public static void manualBatch() {
        new BatchThread(CONTEXT, CLIENT, EVENT_DATABASE, GAME_KEY, SECRET_KEY, SEND_EVENT_INTERVAL, NETWORK_POLL_INTERVAL, CACHE_LOCALLY).manualBatch();
    }

    protected static String md5(String str) {
        String str2 = null;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes("ISO-8859-1"), 0, str.length());
            byte[] digest = instance.digest();
            return new BigInteger(1, digest).add(BigInteger.ONE.shiftLeft(digest.length * 8)).toString(MMException.REQUEST_NOT_PERMITTED).substring(RELEASE);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return str2;
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return str2;
        }
    }

    public static void newBusinessEvent(String str, String str2, int i) {
        newBusinessEvent(str, str2, i, AREA, BitmapDescriptorFactory.HUE_RED, 0.0f, 0.0f);
    }

    public static void newBusinessEvent(String str, String str2, int i, String str3, float f, float f2, float f3) {
        if (ready()) {
            GALog.i(new StringBuilder("New business event: ").append(str).append(", currency: ").append(str2).append(", amount: ").append(i).append(", area: ").append(str3).append(", pos: (").append(f).append(", ").append(f2).append(", ").append(f3).append(")").toString());
            startThreadIfReq();
            EVENT_DATABASE.addBusinessEvent(USER_ID, SESSION_ID, BUILD, str, str3, f, f2, f3, str2, i);
        }
    }

    public static void newDesignEvent(String str, float f) {
        newDesignEvent(str, f, AREA, BitmapDescriptorFactory.HUE_RED, 0.0f, 0.0f);
    }

    public static void newDesignEvent(String str, float f, String str2, float f2, float f3, float f4) {
        if (ready()) {
            GALog.i(new StringBuilder("New design event: ").append(str).append(", value: ").append(f).append(", area: ").append(str2).append(", pos: (").append(f2).append(", ").append(f3).append(", ").append(f4).append(")").toString());
            startThreadIfReq();
            EVENT_DATABASE.addDesignEvent(USER_ID, SESSION_ID, BUILD, str, str2, f2, f3, f4, f);
        }
    }

    public static void newQualityEvent(String str, String str2) {
        newQualityEvent(str, str2, AREA, BitmapDescriptorFactory.HUE_RED, 0.0f, 0.0f);
    }

    public static void newQualityEvent(String str, String str2, String str3, float f, float f2, float f3) {
        if (ready()) {
            GALog.i(new StringBuilder("New quality event: ").append(str).append(", message: ").append(str2).append(", area: ").append(str3).append(", pos: (").append(f).append(", ").append(f2).append(", ").append(f3).append(")").toString());
            startThreadIfReq();
            EVENT_DATABASE.addQualityEvent(USER_ID, SESSION_ID, BUILD, str, str3, f, f2, f3, str2);
        }
    }

    public static void newUserEvent(String str, char c, int i, int i2) {
        newUserEvent(str, c, i, i2, AREA, BitmapDescriptorFactory.HUE_RED, 0.0f, 0.0f);
    }

    public static void newUserEvent(String str, char c, int i, int i2, String str2, float f, float f2, float f3) {
        if (ready()) {
            GALog.i(new StringBuilder("New user event: ").append(str).append(", gender: ").append(c).append(", birthYear: ").append(i).append(", friendCount: ").append(i2).append(", area: ").append(str2).append(", pos: (").append(f).append(", ").append(f2).append(", ").append(f3).append(")").toString());
            startThreadIfReq();
            EVENT_DATABASE.addUserEvent(USER_ID, SESSION_ID, BUILD, str, str2, f, f2, f3, c, i, i2);
        }
    }

    private static boolean ready() {
        if (!INITIALISED) {
            GALog.w("Warning: GameAnalytics has not been initialised. Call GameAnalytics.initialise(Context context, String secretKey, String gameKey) first");
        } else if (SESSION_STARTED) {
            return true;
        } else {
            GALog.w("Warning: GameAnalytics session has not started. Call GameAnalytics.startSession(Context context) in onResume().");
        }
        return false;
    }

    private static void sendOffUserStats() {
        newUserEvent(new StringBuilder("Model:").append(Build.MODEL).toString(), 'n', 0, 0, null, BitmapDescriptorFactory.HUE_RED, 0.0f, 0.0f);
        newUserEvent(new StringBuilder("AndroidVersion:").append(VERSION.RELEASE).toString(), 'n', 0, 0, null, BitmapDescriptorFactory.HUE_RED, 0.0f, 0.0f);
    }

    public static void setAutoBatch(boolean z) {
        AUTO_BATCH = false;
    }

    public static void setDebugLogLevel(int i) {
        if (i == 0 || i == 1) {
            LOGGING = i;
        } else {
            GALog.w("Warning: You should pass in GameAnalytics.VERBOSE or GameAnalytics.RELEASE into GameAnalytics.setLoggingLevel()");
        }
    }

    public static void setLocalCaching(boolean z) {
        CACHE_LOCALLY = z;
    }

    public static void setMaximumEventStorage(int i) {
        EVENT_DATABASE.setMaximumEventStorage(i);
    }

    public static void setNetworkPollInterval(int i) {
        NETWORK_POLL_INTERVAL = i;
    }

    public static void setSendEventsInterval(int i) {
        SEND_EVENT_INTERVAL = i;
    }

    public static void setSessionTimeOut(int i) {
        SESSION_TIME_OUT = i;
    }

    public static void setUserId(String str) {
        USER_ID = str;
    }

    public static void startSession(Context context) {
        CONTEXT = context;
        AREA = context.getClass().toString();
        long currentTimeMillis = System.currentTimeMillis();
        SESSION_STARTED = true;
        if (SESSION_ID == null || (SESSION_END_TIME != 0 && currentTimeMillis > SESSION_END_TIME)) {
            SESSION_ID = getSessionId();
            GALog.i("Starting new session");
            sendOffUserStats();
        }
    }

    private static void startThreadIfReq() {
        if ((CURRENT_THREAD == null || CURRENT_THREAD.shouldStartNewThread()) && AUTO_BATCH) {
            CURRENT_THREAD = new BatchThread(CONTEXT, CLIENT, EVENT_DATABASE, GAME_KEY, SECRET_KEY, SEND_EVENT_INTERVAL, NETWORK_POLL_INTERVAL, CACHE_LOCALLY);
            CURRENT_THREAD.start();
        }
    }

    public static void stopLoggingFPS() {
        stopLoggingFPS(AREA, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    public static void stopLoggingFPS(String str, float f, float f2, float f3) {
        if (!ready()) {
            return;
        }
        if (START_FPS_TIME != 0) {
            long currentTimeMillis = System.currentTimeMillis() - START_FPS_TIME;
            if (currentTimeMillis != 0) {
                newDesignEvent(FPS_EVENT_NAME, (float) ((int) (((long) (FPS_FRAMES * 1000)) / currentTimeMillis)), str, f, f2, f3);
                START_FPS_TIME = 0;
            } else {
                GALog.w("Warning: No time elapsed between starting and stopping FPS logging.");
            }
        } else {
            GALog.w("Warning: stopLoggingFPS() was called before startLoggingFPS().");
        }
    }

    public static void stopSession() {
        SESSION_END_TIME = System.currentTimeMillis() + ((long) SESSION_TIME_OUT);
        SESSION_STARTED = false;
    }
}