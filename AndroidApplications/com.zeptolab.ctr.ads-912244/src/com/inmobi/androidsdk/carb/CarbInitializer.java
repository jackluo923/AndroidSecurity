package com.inmobi.androidsdk.carb;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import com.inmobi.re.controller.util.Constants;
import java.util.HashMap;
import java.util.Map;

public class CarbInitializer {
    public static final String PRODUCT_CARB = "carb";
    private static Context a;
    private static Map b;
    private static CarbConfigParams c;
    private static Validator d;

    static {
        a = null;
        b = new HashMap();
        c = new CarbConfigParams();
        d = new a();
    }

    private static void a(Context context) {
        b(context);
        try {
            CacheController.getConfig(PRODUCT_CARB, context, b, d);
        } catch (Exception e) {
        }
    }

    static boolean a(Map map) {
        Log.internal("CARB", "Saving config to map");
        b = getUidMap(a);
        try {
            Map populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
            CarbConfigParams carbConfigParams = new CarbConfigParams();
            carbConfigParams.setFromMap(populateToNewMap);
            c = carbConfigParams;
            return true;
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Config couldn't be parsed", e);
            return false;
        }
    }

    private static void b(Context context) {
        if (context == null || a != null) {
            if (a == null && context == null) {
                throw new NullPointerException();
            }
        } else if (a == null) {
            a = context.getApplicationContext();
            b = getUidMap(context);
            try {
                if (CacheController.getConfig(PRODUCT_CARB, context, b, d).getData() != null) {
                    a(CacheController.getConfig(PRODUCT_CARB, context, b, d).getData());
                }
            } catch (Exception e) {
            }
        }
    }

    public static CarbConfigParams getConfigParams() {
        if (!(InternalSDKUtil.getContext() == null || InMobi.getAppId() == null)) {
            a(InternalSDKUtil.getContext());
        }
        return c;
    }

    public static Map getUidMap(Context context) {
        return UIDUtil.getMap(context, c.getUID());
    }

    public static void initialize() {
        getConfigParams();
    }
}