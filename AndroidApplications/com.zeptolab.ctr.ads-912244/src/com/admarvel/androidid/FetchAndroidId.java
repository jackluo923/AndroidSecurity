package com.admarvel.androidid;

import android.content.Context;
import android.provider.Settings.Secure;

public class FetchAndroidId {
    public static String getId(Context context) {
        return Secure.getString(context.getContentResolver(), "android_id");
    }
}