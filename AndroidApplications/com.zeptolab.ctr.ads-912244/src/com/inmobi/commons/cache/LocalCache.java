package com.inmobi.commons.cache;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public final class LocalCache {
    public static final String FILENAME = "inmobi.cache";
    private static String a;
    private static JSONObject b;

    final class a implements Runnable {
        a() {
        }

        public void run() {
            LocalCache.c();
        }
    }

    static {
        a = "{url:'https://inmobisdk-a.akamaihd.net/sdk/configs/400/rootConfig.json'}";
        b = new JSONObject();
    }

    private LocalCache() {
    }

    public static JSONObject addToCache(String str, JSONObject jSONObject) {
        synchronized (b) {
            if (b.toString().equals("{}")) {
                initRoot();
            }
            b.put(str, jSONObject);
        }
        b();
        return null;
    }

    private static void b() {
        new Thread(new a()).start();
    }

    private static void c() {
        synchronized (b) {
            try {
                FileOperations.writeStringToFile(InternalSDKUtil.getContext(), FILENAME, b.toString(), false);
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to save all configs to persistent memory", e);
            }
        }
    }

    public static JSONObject getCacheForProduct(String str) {
        if (b.toString().equals("{}")) {
            initRoot();
        }
        try {
            return b.getJSONObject(str);
        } catch (JSONException e) {
            return null;
        }
    }

    public static JSONObject getRoot() {
        return b;
    }

    public static void initRoot() {
        if (b.toString().equals("{}")) {
            synchronized (b) {
                try {
                    String readFileAsString = FileOperations.readFileAsString(InternalSDKUtil.getContext(), FILENAME);
                    if (readFileAsString == null || AdTrackerConstants.BLANK.equals(readFileAsString)) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Configs not present in persistence. Using default configs.");
                        readFileAsString = a;
                    }
                    b = new JSONObject(readFileAsString);
                } catch (IOException e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to read configs from persistent memory", e);
                } catch (JSONException e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Ill formed JSON while parsing from persistent memory", e2);
                }
            }
            if (b.toString().equals("{}")) {
                try {
                    b = new JSONObject(a);
                } catch (JSONException e3) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Default JSON root is unable to parse? What sorcery is this?", e3);
                }
            }
        }
    }

    public static void reset() {
        b = new JSONObject();
        c();
        initRoot();
    }

    public static void saveRoot(JSONObject jSONObject) {
        b = jSONObject;
        b();
    }
}