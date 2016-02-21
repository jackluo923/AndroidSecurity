package com.facebook.ads.internal;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class AdUtilities {
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;

    static {
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    }

    AdUtilities() {
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static String getAttributionId(ContentResolver contentResolver) {
        String str = null;
        try {
            ContentResolver contentResolver2 = contentResolver;
            Cursor query = contentResolver2.query(ATTRIBUTION_ID_CONTENT_URI, new String[]{ATTRIBUTION_ID_COLUMN_NAME}, null, null, null);
            if (query == null || !query.moveToFirst()) {
                return str;
            }
            String string = query.getString(query.getColumnIndex(ATTRIBUTION_ID_COLUMN_NAME));
            query.close();
            return string;
        } catch (Exception e) {
            return str;
        }
    }

    public static Method getMethod(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static Method getMethod(String str, String str2, Class... clsArr) {
        try {
            return getMethod(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static Object getStringPropertyAsJSON(JSONObject jSONObject, String str) {
        Object opt = jSONObject.opt(str);
        if (opt != null && opt instanceof String) {
            opt = new JSONTokener((String) opt).nextValue();
        }
        if (opt == null || opt instanceof JSONObject || opt instanceof JSONArray) {
            return opt;
        }
        throw new IllegalArgumentException(str);
    }

    public static Object invokeMethod(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static String jsonEncode(Map map) {
        JSONObject jSONObject = new JSONObject();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            try {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    public static String readStreamToString(InputStream inputStream) {
        Throwable th;
        Closeable closeable = null;
        try {
            Closeable inputStreamReader;
            Closeable bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            stringBuilder.append(cArr, 0, read);
                        } else {
                            String toString = stringBuilder.toString();
                            closeQuietly(bufferedInputStream);
                            closeQuietly(inputStreamReader);
                            return toString;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = bufferedInputStream;
                    closeQuietly(closeable);
                    closeQuietly(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = closeable;
                closeable = bufferedInputStream;
                closeQuietly(closeable);
                closeQuietly(inputStreamReader);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = closeable;
            closeQuietly(closeable);
            closeQuietly(inputStreamReader);
            throw th;
        }
    }
}