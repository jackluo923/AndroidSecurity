package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.util.Log;
import com.IQzone.postitial.configuration.module.Reflected3AdModule;

public class ei {
    static {
    }

    public static k a(int i, Context context, al alVar) {
        if (i == 3) {
            return new Reflected3AdModule(context, alVar);
        }
        throw new RuntimeException("Invalid ad type");
    }

    public static void a() {
        Log.i("Postitial", new StringBuilder("hardlink:").append(Reflected3AdModule.class.toString()).toString());
    }

    public static int b() {
        return 179;
    }

    public static String c() {
        return "363";
    }
}