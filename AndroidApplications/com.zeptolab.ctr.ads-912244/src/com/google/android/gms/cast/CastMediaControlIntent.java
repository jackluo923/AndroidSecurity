package com.google.android.gms.cast;

import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Collection;
import java.util.Iterator;

public final class CastMediaControlIntent {
    public static final String ACTION_SYNC_STATUS = "com.google.android.gms.cast.ACTION_SYNC_STATUS";
    public static final String CATEGORY_CAST = "com.google.android.gms.cast.CATEGORY_CAST";
    public static final String DEFAULT_MEDIA_RECEIVER_APPLICATION_ID = "CC1AD845";
    public static final int ERROR_CODE_REQUEST_FAILED = 1;
    public static final int ERROR_CODE_SESSION_START_FAILED = 2;
    public static final int ERROR_CODE_TEMPORARILY_DISCONNECTED = 3;
    public static final String EXTRA_CAST_APPLICATION_ID = "com.google.android.gms.cast.EXTRA_CAST_APPLICATION_ID";
    public static final String EXTRA_CAST_RELAUNCH_APPLICATION = "com.google.android.gms.cast.EXTRA_CAST_RELAUNCH_APPLICATION";
    public static final String EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS = "com.google.android.gms.cast.EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS";
    public static final String EXTRA_CUSTOM_DATA = "com.google.android.gms.cast.EXTRA_CUSTOM_DATA";
    public static final String EXTRA_DEBUG_LOGGING_ENABLED = "com.google.android.gms.cast.EXTRA_DEBUG_LOGGING_ENABLED";
    public static final String EXTRA_ERROR_CODE = "com.google.android.gms.cast.EXTRA_ERROR_CODE";

    private CastMediaControlIntent() {
    }

    private static String a(String str, String str2, Collection collection) {
        StringBuffer stringBuffer = new StringBuffer(str);
        if (str2 == null || str2.matches("[A-F0-9]+")) {
            stringBuffer.append("/").append(str2);
        } else {
            throw new IllegalArgumentException("Invalid appliation ID: " + str2);
        }
        if (collection == null || !collection.isEmpty()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                if (!TextUtils.isEmpty(str3)) {
                    if (str3.trim().equals(AdTrackerConstants.BLANK)) {
                    }
                }
                throw new IllegalArgumentException("Namespaces must not be null or empty");
            }
            if (str2 == null) {
                stringBuffer.append("/");
            }
            stringBuffer.append("/").append(TextUtils.join(",", collection));
        } else {
            throw new IllegalArgumentException("Must specify at least one namespace");
        }
        return stringBuffer.toString();
    }

    public static String categoryForCast(String str) {
        if (str != null) {
            return a(CATEGORY_CAST, str, null);
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }

    public static String categoryForCast(String str, Collection collection) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        } else if (collection != null) {
            return a(CATEGORY_CAST, str, collection);
        } else {
            throw new IllegalArgumentException("namespaces cannot be null");
        }
    }

    public static String categoryForCast(Collection collection) {
        if (collection != null) {
            return a(CATEGORY_CAST, null, collection);
        }
        throw new IllegalArgumentException("namespaces cannot be null");
    }

    public static String categoryForRemotePlayback() {
        return a("com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK", null, null);
    }

    public static String categoryForRemotePlayback(String str) {
        if (!TextUtils.isEmpty(str)) {
            return a("com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK", str, null);
        }
        throw new IllegalArgumentException("applicationId cannot be null or empty");
    }
}