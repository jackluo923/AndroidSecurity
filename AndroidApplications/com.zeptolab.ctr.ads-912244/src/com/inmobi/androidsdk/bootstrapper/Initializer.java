package com.inmobi.androidsdk.bootstrapper;

import android.content.Context;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UIDUtil;
import java.util.HashMap;
import java.util.Map;

public class Initializer {
    public static final String PRODUCT_ADNETWORK = "adNetwork";
    private static Context a;
    private static Map b;
    private static Logger c;
    private static ConfigParams d;
    private static Validator e;

    static {
        a = null;
        b = new HashMap();
        c = new Logger(1, "network");
        d = new ConfigParams();
        e = new a();
    }

    private static void a(Context context) {
        if (context == null || a != null) {
            if (a == null && context == null) {
                throw new NullPointerException();
            }
        } else if (a == null) {
            a = context.getApplicationContext();
            b = getUidMap(context);
            try {
                b(CacheController.getConfig(PRODUCT_ADNETWORK, context, b, e).getData());
            } catch (Exception e) {
            }
        }
    }

    private static void b(Context context) {
        a(context);
        try {
            CacheController.getConfig(PRODUCT_ADNETWORK, context, b, e);
        } catch (Exception e) {
        }
    }

    private static boolean b(Map map) {
        b = getUidMap(a);
        try {
            Map populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
            ConfigParams configParams = new ConfigParams();
            configParams.setFromMap(populateToNewMap);
            d = configParams;
            c.setMetricConfigParams(configParams.getMetric());
            return true;
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Config couldn't be parsed", e);
            return false;
        }
    }

    public static ConfigParams getConfigParams() {
        if (!(InternalSDKUtil.getContext() == null || InMobi.getAppId() == null)) {
            b(InternalSDKUtil.getContext());
        }
        return d;
    }

    public static Logger getLogger() {
        return c;
    }

    public static Map getUidMap(Context context) {
        return UIDUtil.getMap(context, d.getUID());
    }
}