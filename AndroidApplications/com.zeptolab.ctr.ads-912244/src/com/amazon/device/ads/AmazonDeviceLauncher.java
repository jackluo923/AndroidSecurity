package com.amazon.device.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

class AmazonDeviceLauncher {
    AmazonDeviceLauncher() {
    }

    static void a(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop");
        if (launchIntentForPackage != null) {
            launchIntentForPackage.putExtra("com.amazon.windowshop.refinement.asin", str);
            context.startActivity(launchIntentForPackage);
        }
    }

    static boolean a(Context context) {
        return context.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop") != null;
    }

    static void b(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SEARCH");
        intent.setComponent(new ComponentName("com.amazon.windowshop", "com.amazon.windowshop.search.SearchResultsGridActivity"));
        intent.putExtra("query", str);
        try {
            context.startActivity(intent);
        } catch (RuntimeException e) {
        }
    }
}