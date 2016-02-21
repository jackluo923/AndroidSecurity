package com.inmobi.commons.uid;

import android.content.Context;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class PlatformId {
    public static String getAndroidId(Context context) {
        String str = null;
        try {
            str = Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to retrieve android id.");
        }
        if (str != null) {
            return str;
        }
        try {
            return System.getString(context.getContentResolver(), "android_id");
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to retrieve android id.");
            return str;
        }
    }
}