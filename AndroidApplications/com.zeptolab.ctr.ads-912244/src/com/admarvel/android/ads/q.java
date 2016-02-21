package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.admarvel.android.util.Logging;
import com.google.android.gms.drive.DriveFile;
import java.net.URISyntaxException;

class q {
    static boolean a(String str, Context context) {
        if (context == null || str == null) {
            return false;
        }
        try {
            Intent parseUri = Intent.parseUri(str, 1);
            if (context.getPackageManager().resolveActivity(parseUri, 0) != null) {
                return false;
            }
            String str2 = parseUri.getPackage();
            if (str2 == null) {
                return false;
            }
            Logging.log(" going for market in shouldOverrideUrlLoading on internalwebview " + str2);
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:" + str2));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            intent.addCategory("android.intent.category.BROWSABLE");
            if (Utils.isIntentAvailable(context, intent)) {
                context.startActivity(intent);
            }
            if (context == null || !(context instanceof Activity)) {
                return true;
            }
            Activity activity = (Activity) context;
            if (activity == null || !(activity instanceof AdMarvelActivity)) {
                return true;
            }
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
            if (adMarvelActivity == null) {
                return true;
            }
            adMarvelActivity.g();
            return true;
        } catch (URISyntaxException e) {
            Logging.log("Bad URI " + str + ": " + e.getMessage());
            return false;
        }
    }
}