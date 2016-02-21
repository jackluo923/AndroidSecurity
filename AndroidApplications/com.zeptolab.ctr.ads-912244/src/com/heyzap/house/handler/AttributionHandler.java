package com.heyzap.house.handler;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.heyzap.house.Manager;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.model.AdModel;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.util.ArrayList;

public class AttributionHandler {
    private static volatile AttributionHandler ref;

    public static synchronized AttributionHandler getInstance() {
        AttributionHandler attributionHandler;
        synchronized (AttributionHandler.class) {
            if (ref == null) {
                ref = new AttributionHandler();
            }
            attributionHandler = ref;
        }
        return attributionHandler;
    }

    public Object clone() {
        return null;
    }

    public void didImpression(AdModel adModel) {
        if (Manager.applicationContext != null) {
            try {
                String str = "impression." + adModel.getGamePackage();
                Editor edit = Manager.applicationContext.getSharedPreferences(Manager.PREFERENCES_KEY, 0).edit();
                edit.putString(str, adModel.getImpressionId());
                edit.commit();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void didInstall(Context context, String str) {
        if (context != null && str != null) {
            try {
                String format = String.format("impression.%s", new Object[]{str});
                SharedPreferences sharedPreferences = context.getSharedPreferences(Manager.PREFERENCES_KEY, 0);
                sharedPreferences.edit();
                format = sharedPreferences.getString(format, null);
                if (format != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(format);
                    didInstall(context, arrayList, Boolean.valueOf(false));
                }
            } catch (Exception e) {
                Logger.log(e);
            }
        }
    }

    public void didInstall(Context context, ArrayList arrayList, Boolean bool) {
        RequestParams requestParams = new RequestParams();
        if (Utils.isAmazon()) {
            requestParams.put("platform", "amazon");
        } else {
            requestParams.put("platform", "android");
        }
        if (bool.booleanValue()) {
            requestParams.put("install_type", "rejected");
        }
        requestParams.put(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY, TextUtils.join(",", arrayList.toArray()));
        APIClient.post(context, Manager.AD_SERVER + "/event/install", requestParams, new a(this, bool, context, arrayList));
    }

    public void doSelfInstall(Context context) {
        if (context != null) {
            RequestParams requestParams = new RequestParams();
            if (Utils.isAmazon()) {
                requestParams.put("platform", "amazon");
            } else {
                requestParams.put("platform", "android");
            }
            String packageName = Utils.getPackageName(context);
            requestParams.put("for_game_package", packageName);
            APIClient.post(context, Manager.AD_SERVER + "/register_new_game_install", requestParams, new b(this, packageName));
        }
    }
}