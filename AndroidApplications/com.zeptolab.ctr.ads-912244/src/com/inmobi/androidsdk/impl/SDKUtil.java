package com.inmobi.androidsdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.util.Log;
import com.google.android.gms.cast.Cast;
import com.inmobi.androidsdk.IMBrowserActivity;
import java.util.Iterator;

public class SDKUtil {
    public static final String BROWSER_ACTIVITY = "com.inmobi.androidsdk.IMBrowserActivity";
    public static final long DEFAULT_SLOTID = -1;
    private static boolean a;

    static {
        a = false;
    }

    public static boolean getQAMode() {
        return a;
    }

    public static Activity getRootActivity(Activity activity) {
        while (activity.getParent() != null) {
            activity = activity.getParent();
        }
        return activity;
    }

    public static void validateAdConfiguration(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_INTERNET_PERMISSION);
            throw new ConfigException(-1);
        } else if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_ACCESS_NETWORK_PERMISSION);
            throw new ConfigException(-9);
        } else {
            ResolveInfo resolveInfo;
            Iterator it = context.getPackageManager().queryIntentActivities(new Intent(context, IMBrowserActivity.class), Cast.MAX_MESSAGE_LENGTH).iterator();
            while (it.hasNext()) {
                resolveInfo = (ResolveInfo) it.next();
                if (resolveInfo.activityInfo.name.contentEquals(BROWSER_ACTIVITY)) {
                    break;
                }
            }
            resolveInfo = null;
            if (resolveInfo == null) {
                Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_ACTIVITY_DECLARATION);
                throw new ConfigException(-2);
            } else {
                int i = resolveInfo.activityInfo.configChanges;
                if (i == 0) {
                    Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_CONFIG_CHANGES);
                    throw new ConfigException(-3);
                } else if ((i & 16) == 0) {
                    Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_CONFIG_KEYBOARD);
                    throw new ConfigException(-4);
                } else if ((i & 32) == 0) {
                    Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_CONFIG_KEYBOARDHIDDEN);
                    throw new ConfigException(-5);
                } else if ((i & 128) == 0) {
                    Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_CONFIG_ORIENTATION);
                    throw new ConfigException(-6);
                } else if (VERSION.SDK_INT < 13) {
                } else {
                    if ((i & 1024) == 0) {
                        Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_CONFIG_SCREENSIZE);
                        throw new ConfigException(-7);
                    } else if ((i & 2048) == 0) {
                        Log.e(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_MISSING_CONFIG_SMALLEST_SCREENSIZE);
                        throw new ConfigException(-8);
                    }
                }
            }
        }
    }
}