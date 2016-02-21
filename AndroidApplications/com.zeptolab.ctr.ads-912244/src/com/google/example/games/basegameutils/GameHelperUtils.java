package com.google.example.games.basegameutils;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.vungle.sdk.VunglePub.Gender;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.string;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import com.zeptolab.zbuild.ZR;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class GameHelperUtils {
    private static final String[] FALLBACK_STRINGS;
    private static final int[] RES_IDS;
    public static final int R_APP_MISCONFIGURED = 2;
    public static final int R_LICENSE_FAILED = 3;
    public static final int R_SIGN_IN_FAILED = 1;
    public static final int R_UNKNOWN_ERROR = 0;

    static {
        FALLBACK_STRINGS = new String[]{"*Unknown error.", "*Failed to sign in. Please check your network connection and try again.", "*The application is incorrectly configured. Check that the package name and signing certificate match the client ID created in Developer Console. Also, if the application is not yet published, check that the account you are trying to sign in with is listed as a tester account. See logs for more information.", "*License check failed."};
        iArr = new int[4];
        string com_zeptolab_ctr_ads_R_string = ZR.string;
        iArr[0] = 2131165219;
        com_zeptolab_ctr_ads_R_string = ZR.string;
        iArr[1] = 2131165216;
        com_zeptolab_ctr_ads_R_string = ZR.string;
        iArr[2] = 2131165217;
        com_zeptolab_ctr_ads_R_string = ZR.string;
        iArr[3] = 2131165218;
        RES_IDS = iArr;
    }

    GameHelperUtils() {
    }

    static String activityResponseCodeToString(int i) {
        switch (i) {
            case Gender.UNKNOWN:
                return "RESULT_OK";
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "RESULT_CANCELED";
            case GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED:
                return "RESULT_RECONNECT_REQUIRED";
            case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED:
                return "SIGN_IN_FAILED";
            case GamesActivityResultCodes.RESULT_LICENSE_FAILED:
                return "RESULT_LICENSE_FAILED";
            case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED:
                return "RESULT_APP_MISCONFIGURED";
            case GamesActivityResultCodes.RESULT_LEFT_ROOM:
                return "RESULT_LEFT_ROOM";
            default:
                return String.valueOf(i);
        }
    }

    static void byteToString(StringBuilder stringBuilder, int i) {
        if (i < 0) {
            i += 256;
        }
        int i2 = i / 16;
        int i3 = i % 16;
        stringBuilder.append("0123456789ABCDEF".substring(i2, i2 + 1));
        stringBuilder.append("0123456789ABCDEF".substring(i3, i3 + 1));
    }

    static String errorCodeToString(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "SUCCESS(" + i + ")";
            case R_SIGN_IN_FAILED:
                return "SERVICE_MISSING(" + i + ")";
            case R_APP_MISCONFIGURED:
                return "SERVICE_VERSION_UPDATE_REQUIRED(" + i + ")";
            case R_LICENSE_FAILED:
                return "SERVICE_DISABLED(" + i + ")";
            case GoogleScorer.CLIENT_APPSTATE:
                return "SIGN_IN_REQUIRED(" + i + ")";
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return "INVALID_ACCOUNT(" + i + ")";
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return "RESOLUTION_REQUIRED(" + i + ")";
            case GoogleScorer.CLIENT_ALL:
                return "NETWORK_ERROR(" + i + ")";
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return "INTERNAL_ERROR(" + i + ")";
            case ZBuildConfig.$minsdk:
                return "SERVICE_INVALID(" + i + ")";
            case R.styleable.MapAttrs_uiZoomControls:
                return "DEVELOPER_ERROR(" + i + ")";
            case R.styleable.MapAttrs_uiZoomGestures:
                return "LICENSE_CHECK_FAILED(" + i + ")";
            default:
                return "Unknown error code " + i;
        }
    }

    static String getAppIdFromResource(Context context) {
        try {
            Resources resources = context.getResources();
            return resources.getString(resources.getIdentifier("app_id", "string", context.getPackageName()));
        } catch (Exception e) {
            e.printStackTrace();
            return "??? (failed to retrieve APP ID)";
        }
    }

    static String getSHA1CertFingerprint(Context context) {
        int i = 0;
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS).signatures;
            if (signatureArr.length == 0) {
                return "ERROR: NO SIGNATURE.";
            }
            if (signatureArr.length > 1) {
                return "ERROR: MULTIPLE SIGNATURES";
            }
            byte[] digest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
            StringBuilder stringBuilder = new StringBuilder();
            while (i < digest.length) {
                if (i > 0) {
                    stringBuilder.append(":");
                }
                byteToString(stringBuilder, digest[i]);
                i++;
            }
            return stringBuilder.toString();
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return "(ERROR: package not found)";
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "(ERROR: SHA1 algorithm not found)";
        }
    }

    static String getString(Context context, int i) {
        if (i < 0 || i >= RES_IDS.length) {
            i = 0;
        }
        int i2 = RES_IDS[i];
        try {
            return context.getString(i2);
        } catch (Exception e) {
            e.printStackTrace();
            Log.w("GameHelper", "*** GameHelper could not found resource id #" + i2 + ". " + "This probably happened because you included it as a stand-alone JAR. " + "BaseGameUtils should be compiled as a LIBRARY PROJECT, so that it can access " + "its resources. Using a fallback string.");
            return FALLBACK_STRINGS[i];
        }
    }

    static void printMisconfiguredDebugInfo(Context context) {
        Log.w("GameHelper", "****");
        Log.w("GameHelper", "****");
        Log.w("GameHelper", "**** APP NOT CORRECTLY CONFIGURED TO USE GOOGLE PLAY GAME SERVICES");
        Log.w("GameHelper", "**** This is usually caused by one of these reasons:");
        Log.w("GameHelper", "**** (1) Your package name and certificate fingerprint do not match");
        Log.w("GameHelper", "****     the client ID you registered in Developer Console.");
        Log.w("GameHelper", "**** (2) Your App ID was incorrectly entered.");
        Log.w("GameHelper", "**** (3) Your game settings have not been published and you are ");
        Log.w("GameHelper", "****     trying to log in with an account that is not listed as");
        Log.w("GameHelper", "****     a test account.");
        Log.w("GameHelper", "****");
        if (context == null) {
            Log.w("GameHelper", "*** (no Context, so can't print more debug info)");
        } else {
            Log.w("GameHelper", "**** To help you debug, here is the information about this app");
            Log.w("GameHelper", "**** Package name         : " + context.getPackageName());
            Log.w("GameHelper", "**** Cert SHA1 fingerprint: " + getSHA1CertFingerprint(context));
            Log.w("GameHelper", "**** App ID from          : " + getAppIdFromResource(context));
            Log.w("GameHelper", "****");
            Log.w("GameHelper", "**** Check that the above information matches your setup in ");
            Log.w("GameHelper", "**** Developer Console. Also, check that you're logging in with the");
            Log.w("GameHelper", "**** right account (it should be listed in the Testers section if");
            Log.w("GameHelper", "**** your project is not yet published).");
            Log.w("GameHelper", "****");
            Log.w("GameHelper", "**** For more information, refer to the troubleshooting guide:");
            Log.w("GameHelper", "****   http://developers.google.com/games/services/android/troubleshooting");
        }
    }
}