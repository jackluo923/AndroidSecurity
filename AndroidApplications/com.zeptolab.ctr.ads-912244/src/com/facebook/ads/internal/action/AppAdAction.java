package com.facebook.ads.internal.action;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.AdInvalidationUtils;
import com.facebook.ads.internal.AppSiteData;
import com.facebook.ads.internal.OpenUrlTask;
import com.facebook.ads.internal.StringUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppAdAction implements AdAction {
    private static final String MARKET_DETAIL_URI_FORMAT = "market://details?id=%s";
    private static final String TAG;
    private final Context context;
    private final Uri uri;

    static {
        TAG = AppAdAction.class.getSimpleName();
    }

    public AppAdAction(Context context, Uri uri) {
        this.context = context;
        this.uri = uri;
    }

    private Intent getAppLaunchIntent(AppSiteData appSiteData) {
        if (StringUtils.isNullOrEmpty(appSiteData.getPackageName())) {
            return null;
        }
        if (!AdInvalidationUtils.isNativePackageInstalled(this.context, appSiteData.getPackageName())) {
            return null;
        }
        String appLinkUri = appSiteData.getAppLinkUri();
        if (!StringUtils.isNullOrEmpty(appLinkUri) && (appLinkUri.startsWith("tel:") || appLinkUri.startsWith("telprompt:"))) {
            return new Intent("android.intent.action.CALL", Uri.parse(appLinkUri));
        }
        PackageManager packageManager = this.context.getPackageManager();
        if (StringUtils.isNullOrEmpty(appSiteData.getClassName()) && StringUtils.isNullOrEmpty(appLinkUri)) {
            return packageManager.getLaunchIntentForPackage(appSiteData.getPackageName());
        }
        Intent appLinkIntentUnresolved = getAppLinkIntentUnresolved(appSiteData);
        List queryIntentActivities = packageManager.queryIntentActivities(appLinkIntentUnresolved, Cast.MAX_MESSAGE_LENGTH);
        if (appLinkIntentUnresolved.getComponent() == null) {
            Iterator it = queryIntentActivities.iterator();
            while (it.hasNext()) {
                ResolveInfo resolveInfo = (ResolveInfo) it.next();
                if (resolveInfo.activityInfo.packageName.equals(appSiteData.getPackageName())) {
                    appLinkIntentUnresolved.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                    break;
                }
            }
        }
        return (queryIntentActivities.isEmpty() || appLinkIntentUnresolved.getComponent() == null) ? null : appLinkIntentUnresolved;
    }

    private List getAppLaunchIntents() {
        List appsiteDatas = getAppsiteDatas();
        List arrayList = new ArrayList();
        if (appsiteDatas != null) {
            Iterator it = appsiteDatas.iterator();
            while (it.hasNext()) {
                Intent appLaunchIntent = getAppLaunchIntent((AppSiteData) it.next());
                if (appLaunchIntent != null) {
                    arrayList.add(appLaunchIntent);
                }
            }
        }
        return arrayList;
    }

    private Intent getAppLinkIntentUnresolved(AppSiteData appSiteData) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        if (!(StringUtils.isNullOrEmpty(appSiteData.getPackageName()) || StringUtils.isNullOrEmpty(appSiteData.getClassName()))) {
            intent.setComponent(new ComponentName(appSiteData.getPackageName(), appSiteData.getClassName()));
        }
        if (!StringUtils.isNullOrEmpty(appSiteData.getAppLinkUri())) {
            intent.setData(Uri.parse(appSiteData.getAppLinkUri()));
        }
        return intent;
    }

    private List getAppsiteDatas() {
        String queryParameter = this.uri.getQueryParameter("appsite_data");
        if (StringUtils.isNullOrEmpty(queryParameter) || "[]".equals(queryParameter)) {
            return null;
        }
        List arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(queryParameter).optJSONArray("android");
            if (optJSONArray == null) {
                return arrayList;
            }
            int i = 0;
            while (i < optJSONArray.length()) {
                AppSiteData fromJSONObject = AppSiteData.fromJSONObject(optJSONArray.optJSONObject(i));
                if (fromJSONObject != null) {
                    arrayList.add(fromJSONObject);
                }
                i++;
            }
            return arrayList;
        } catch (JSONException e) {
            Log.w(TAG, "Error parsing appsite_data", e);
            return arrayList;
        }
    }

    private Uri getMarketUri() {
        String queryParameter = this.uri.getQueryParameter("store_id");
        return Uri.parse(String.format(MARKET_DETAIL_URI_FORMAT, new Object[]{queryParameter}));
    }

    private void logAdClick() {
        if (!StringUtils.isNullOrEmpty(this.uri.getQueryParameter("native_click_report_url"))) {
            new OpenUrlTask().execute(new String[]{str});
        }
    }

    public void execute() {
        logAdClick();
        List appLaunchIntents = getAppLaunchIntents();
        if (appLaunchIntents != null) {
            Iterator it = appLaunchIntents.iterator();
            while (it.hasNext()) {
                try {
                    this.context.startActivity((Intent) it.next());
                    return;
                } catch (Exception e) {
                    Log.d(TAG, "Failed to open app intent, falling back", e);
                }
            }
        }
        try {
            this.context.startActivity(new Intent("android.intent.action.VIEW", getMarketUri()));
        } catch (Exception e2) {
            Log.d(TAG, "Failed to open market url: " + this.uri.toString(), e2);
            queryParameter = this.uri.getQueryParameter("store_url_web_fallback");
            String queryParameter2;
            if (queryParameter2 != null && queryParameter2.length() > 0) {
                try {
                    this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(queryParameter2)));
                } catch (Exception e3) {
                    Log.d(TAG, "Failed to open fallback url: " + queryParameter2, e3);
                }
            }
        }
    }
}