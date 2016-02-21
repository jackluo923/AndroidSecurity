package com.andymstone.core;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;

public class a {
    private static b a;

    static {
        a = null;
    }

    public static b a_() {
        if (a == null) {
            a(new g());
        }
        return a;
    }

    public static void a_(Activity activity) {
        if (activity != null) {
            String string = activity.getString(m.contact_email);
            String format = String.format("%1$s %2$s", new Object[]{d(activity), c(activity)});
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{string});
            intent.putExtra("android.intent.extra.SUBJECT", format);
            try {
                activity.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                Builder builder = new Builder(activity);
                builder.setMessage(activity.getString(m.no_email_app));
                builder.setCancelable(false);
                builder.setPositiveButton(m.ok, null);
                if (!activity.isFinishing()) {
                    builder.show();
                }
            }
        }
    }

    public static void a_(Context context) {
        a().a(context);
    }

    public static void a_(Context context, String str) {
        a(context, str, null);
    }

    public static void a_(Context context, String str, String str2) {
        a().a(context, str, str2);
    }

    public static void a_(b bVar) {
        a = bVar;
    }

    public static void b(Context context) {
        a().b(context);
    }

    public static String c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return new String();
        }
    }

    public static String d(Context context) {
        try {
            return context.getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (NameNotFoundException e) {
            return new String();
        }
    }

    public static String e(Context context) {
        return context.getPackageName();
    }
}