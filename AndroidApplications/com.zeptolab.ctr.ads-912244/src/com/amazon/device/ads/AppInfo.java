package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import org.json.JSONObject;

class AppInfo {
    private String a;
    private String b;
    private String c;
    private String d;
    private JSONObject e;

    protected AppInfo() {
    }

    public AppInfo(Context context) {
        PackageInfo packageInfo;
        this.a = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        this.b = (String) packageManager.getApplicationLabel(context.getApplicationInfo());
        try {
            packageInfo = packageManager.getPackageInfo(this.a, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        this.d = packageInfo != null ? packageInfo.versionName : AdTrackerConstants.BLANK;
        this.c = packageInfo != null ? Integer.toString(packageInfo.versionCode) : AdTrackerConstants.BLANK;
        this.e = new JSONObject();
        JSONUtils.b(this.e, "lbl", this.b);
        JSONUtils.b(this.e, "pn", this.a);
        JSONUtils.b(this.e, "v", this.c);
        JSONUtils.b(this.e, "vn", this.d);
    }

    public JSONObject getPackageInfoJSON() {
        return this.e;
    }

    public String getPackageInfoJSONString() {
        return this.e != null ? this.e.toString() : null;
    }
}