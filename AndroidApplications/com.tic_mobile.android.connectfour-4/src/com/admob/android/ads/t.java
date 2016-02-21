package com.admob.android.ads;

import android.content.Context;
import android.util.Log;
import com.tic_mobile.android.connectfour.R;
import org.json.JSONObject;
import org.json.JSONTokener;

// compiled from: DeveloperNotice.java
final class t {
    private static boolean a;

    static {
        a = false;
    }

    t() {
    }

    public static void a(Context context) {
        String str = AdManager.LOG;
        if (!a) {
            int i;
            a = true;
            if (AdManager.getUserId(context) == null) {
                boolean z = true;
            } else {
                i = 0;
            }
            if (i != 0) {
                try {
                    String a = u.a(context, null, null, 0);
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("http://api.admob.com/v1/pubcode/android_sdk_emulator_notice");
                    stringBuilder.append("?");
                    stringBuilder.append(a);
                    r a2 = e.a(stringBuilder.toString(), "developer_message", AdManager.getUserId(context));
                    if (a2.a()) {
                        byte[] d = a2.d();
                        if (d != null) {
                            a = new JSONObject(new JSONTokener(new String(d))).getString("data");
                            if (a != null && !a.equals("")) {
                                Log.w(AdManager.LOG, a);
                            }
                        }
                    }
                } catch (Exception e) {
                    Throwable th = e;
                    String str2 = AdManager.LOG;
                    if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
                        str2 = AdManager.LOG;
                        Log.v(str, "Unhandled exception retrieving developer message.", th);
                    }
                }
            }
        }
    }
}