package com.andymstone.core;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public class g implements b {
    public void a(Context context) {
        int i = 0;
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(String.format("market://search?q=pub:%1$s", new Object[]{context.getString(m.publisher_id)}))));
        } catch (ActivityNotFoundException e) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(String.format("https://play.google.com/store/apps/developer?id=%1$s", new Object[]{context.getString(m.publisher_id)}))));
        }
    }

    public void a(Context context, String str, String str2) {
        String toString = str2 != null ? new StringBuilder("&").append(str2).toString() : "";
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(new StringBuilder(String.valueOf(String.format("market://details?id=%1$s", new Object[]{str}))).append(toString).toString())));
        } catch (ActivityNotFoundException e) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(new StringBuilder(String.valueOf(String.format("https://play.google.com/store/apps/details?id=%1$s", new Object[]{str}))).append(toString).toString())));
        }
    }

    public void b(Context context) {
        a(context, a.e(context), null);
    }
}