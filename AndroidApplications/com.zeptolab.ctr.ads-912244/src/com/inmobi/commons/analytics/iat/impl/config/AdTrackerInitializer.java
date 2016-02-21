package com.inmobi.commons.analytics.iat.impl.config;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UIDUtil;
import java.util.HashMap;
import java.util.Map;

public class AdTrackerInitializer {
    public static final String PRODUCT_IAT = "iat";
    private static Context a;
    private static Map b;
    private static AdTrackerConfigParams c;
    private static Logger d;
    private static Validator e;

    static {
        a = null;
        b = new HashMap();
        c = new AdTrackerConfigParams();
        d = new Logger(2, PRODUCT_IAT);
        e = new a();
    }

    private static void a(Context context) {
        if (context == null || a != null) {
            if (a == null && context == null) {
                a.getApplicationContext();
            }
        } else if (a == null) {
            a = context.getApplicationContext();
            b = getUidMap(context);
            try {
                b(CacheController.getConfig(PRODUCT_IAT, context, b, e).getData());
            } catch (Exception e) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Exception while retreiving configs.");
            }
        }
    }

    private static void b(Context context) {
        a(context);
        try {
            CacheController.getConfig(PRODUCT_IAT, context, b, e);
        } catch (Exception e) {
        }
    }

    private static boolean b(Map map) {
        b = getUidMap(a);
        Map populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
        try {
            AdTrackerConfigParams adTrackerConfigParams = new AdTrackerConfigParams();
            adTrackerConfigParams.setFromMap(populateToNewMap);
            c = adTrackerConfigParams;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static AdTrackerConfigParams getConfigParams() {
        if (!(InternalSDKUtil.getContext() == null || InMobi.getAppId() == null)) {
            b(InternalSDKUtil.getContext());
        }
        d.setMetricConfigParams(c.getMetric());
        return c;
    }

    public static Logger getLogger() {
        return d;
    }

    public static Map getUidMap(Context context) {
        return UIDUtil.getMap(a, c.getUID());
    }
}