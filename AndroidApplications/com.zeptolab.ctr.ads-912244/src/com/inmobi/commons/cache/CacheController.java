package com.inmobi.commons.cache;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.CommonsException;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class CacheController {
    private static Map a;
    private static ProductCacheConfig b;
    private static boolean c;
    private static Map d;
    private static Map e;

    public static interface Validator {
        boolean validate(Map map);
    }

    public static interface Committer {
        void onCommit();
    }

    final class a extends BroadcastReceiver {
        a() {
        }

        public void onReceive(Context context, Intent intent) {
            CacheController.a();
        }
    }

    final class b implements com.inmobi.commons.cache.CacheController.Committer {
        final /* synthetic */ String a;

        b(String str) {
            this.a = str;
        }

        public void onCommit() {
            try {
                ProductCacheConfig productCacheConfig = (ProductCacheConfig) a.get(this.a);
                if (productCacheConfig != null) {
                    LocalCache.addToCache(this.a, productCacheConfig.toJSON());
                }
            } catch (JSONException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to add json to persistent memory", e);
            }
        }
    }

    final class c implements com.inmobi.commons.cache.CacheController.Committer {
        c() {
        }

        public void onCommit() {
            CacheController.f();
        }
    }

    final class d implements com.inmobi.commons.cache.CacheController.Validator {
        d() {
        }

        public boolean validate(Map map) {
            return CacheController.b(map);
        }
    }

    static {
        a = new HashMap();
        b = null;
        c = true;
        d = new HashMap();
        e = new HashMap();
    }

    private CacheController() {
    }

    static void a() {
        synchronized (d) {
            Iterator it = d.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                try {
                    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        Map map;
                        synchronized (e) {
                            map = (Map) e.get(str);
                        }
                        getConfig(str, null, map, (Validator) d.get(str));
                    }
                } catch (CommonsException e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to reinitialize product " + str);
                }
            }
        }
        if (b != null) {
            b.getData((Validator) null);
        }
    }

    private static boolean b(Map map) {
        try {
            Map populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
            c(populateToNewMap);
            Iterator it = populateToNewMap.keySet().iterator();
            while (it.hasNext()) {
                Object obj = populateToNewMap.get((String) it.next());
                if (obj instanceof Map) {
                    c((Map) obj);
                }
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static void c(Map map) {
        InternalSDKUtil.getIntFromMap(map, "expiry", 1, 2147483647L);
        InternalSDKUtil.getIntFromMap(map, "maxRetry", 0, 2147483647L);
        InternalSDKUtil.getIntFromMap(map, "retryInterval", 1, 2147483647L);
        InternalSDKUtil.getStringFromMap(map, PlusShare.KEY_CALL_TO_ACTION_URL);
        InternalSDKUtil.getStringFromMap(map, "protocol");
    }

    private static void d() {
        InternalSDKUtil.getContext().registerReceiver(new a(), new IntentFilter(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION));
    }

    private static void e() {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Bootstrapping cache.");
        LocalCache.initRoot();
        Iterator keys = LocalCache.getRoot().keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            try {
                Object obj = LocalCache.getRoot().get(str);
                if (obj instanceof JSONObject) {
                    ProductCacheConfig productCacheConfig = new ProductCacheConfig((JSONObject) obj, new b(str));
                    ProductCacheConfig productCacheConfig2 = (ProductCacheConfig) a.get(str);
                    if (productCacheConfig2 != null) {
                        productCacheConfig.setValidator(productCacheConfig2.getValidator());
                        productCacheConfig.setMap(productCacheConfig2.getMap());
                    }
                    a.put(str, productCacheConfig);
                }
            } catch (JSONException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to dump config from persistent memory to products in memory", e);
            }
        }
        if (b == null) {
            b = new ProductCacheConfig(LocalCache.getRoot(), new c());
            b.getData(UIDUtil.getMap(InternalSDKUtil.getContext(), null), new d());
        } else {
            b.loadFromJSON(LocalCache.getRoot());
        }
        InternalSDKUtil.initialize(InternalSDKUtil.getContext());
    }

    private static void f() {
        try {
            JSONObject jSONObject = new JSONObject(b.getRawData());
            JSONObject populateToNewJSON = InternalSDKUtil.populateToNewJSON(jSONObject.getJSONObject("AND"), jSONObject.getJSONObject("common"), true);
            try {
                populateToNewJSON.put(AdDatabaseHelper.COLUMN_TIMESTAMP, (int) (System.currentTimeMillis() / 1000));
            } catch (JSONException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to add timestamp to JSON");
            }
            Iterator keys = populateToNewJSON.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                try {
                    Object obj = LocalCache.getRoot().get(str);
                    try {
                        if (obj instanceof JSONObject) {
                            ProductCacheConfig productCacheConfig = (ProductCacheConfig) a.get(str);
                            if (productCacheConfig != null) {
                                ((JSONObject) obj).put(AdDatabaseHelper.COLUMN_TIMESTAMP, 0);
                                ((JSONObject) obj).put(i.a, productCacheConfig.getRawData());
                            }
                        }
                    } catch (Exception e2) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Error while merging data -> " + e2.getMessage());
                    }
                } catch (JSONException e3) {
                }
            }
            LocalCache.saveRoot(populateToNewJSON);
            e();
            a();
        } catch (JSONException e4) {
        }
    }

    public static ProductConfig getConfig(String str, Context context, Map map, Validator validator) {
        if (validator != null) {
            synchronized (d) {
                d.put(str, validator);
            }
        }
        if (map != null) {
            synchronized (e) {
                e.put(str, map);
            }
        }
        if (c) {
            if (InternalSDKUtil.getContext() == null && context == null) {
                throw new CommonsException(1);
            }
            InternalSDKUtil.setContext(context);
            c = false;
            e();
            d();
        }
        b.getData((Validator) 0);
        ProductCacheConfig productCacheConfig = (ProductCacheConfig) a.get(str);
        if (productCacheConfig == null) {
            throw new CommonsException(2);
        }
        productCacheConfig.getData(map, validator);
        return productCacheConfig;
    }
}