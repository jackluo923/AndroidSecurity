package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.io.Serializable;
import java.util.Map;

public abstract class MetadataObject implements Serializable {
    public static final String TAG;
    protected Map properties;

    static {
        TAG = MetadataObject.class.getSimpleName();
    }

    public MetadataObject(Map map) {
        if (map == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.PROPERTIES_REQUIRED));
        }
        this.properties = map;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Integer getIntegerProperty(java.lang.String r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.brightcove.player.model.MetadataObject.getIntegerProperty(java.lang.String):java.lang.Integer");
        /*
        r4 = this;
        r1 = 0;
        r0 = r4.properties;
        r0 = r0.containsKey(r5);
        if (r0 == 0) goto L_0x0056;
    L_0x0009:
        r0 = r4.properties;	 Catch:{ NumberFormatException -> 0x0026 }
        r0 = r0.get(r5);	 Catch:{ NumberFormatException -> 0x0026 }
        if (r0 == 0) goto L_0x0075;
    L_0x0011:
        r2 = r0 instanceof java.lang.Integer;	 Catch:{ NumberFormatException -> 0x0026 }
        if (r2 == 0) goto L_0x0019;
    L_0x0015:
        r0 = (java.lang.Integer) r0;	 Catch:{ NumberFormatException -> 0x0026 }
    L_0x0017:
        r1 = r0;
    L_0x0018:
        return r1;
    L_0x0019:
        r0 = r0.toString();	 Catch:{ NumberFormatException -> 0x0026 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ NumberFormatException -> 0x0026 }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ NumberFormatException -> 0x0026 }
        goto L_0x0017;
    L_0x0026:
        r0 = move-exception;
        r0 = TAG;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Error converting value of <";
        r2 = r2.append(r3);
        r3 = r4.properties;
        r3 = r3.get(r5);
        r2 = r2.append(r3);
        r3 = "> for key '";
        r2 = r2.append(r3);
        r2 = r2.append(r5);
        r3 = "'";
        r2 = r2.append(r3);
        r2 = r2.toString();
        android.util.Log.e(r0, r2);
        goto L_0x0018;
    L_0x0056:
        r0 = TAG;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Could not find property with name '";
        r2 = r2.append(r3);
        r2 = r2.append(r5);
        r3 = "'";
        r2 = r2.append(r3);
        r2 = r2.toString();
        android.util.Log.w(r0, r2);
        goto L_0x0018;
    L_0x0075:
        r0 = r1;
        goto L_0x0017;
        */
    }

    public Map getProperties() {
        return this.properties;
    }

    public String getStringProperty(String str) {
        if (!this.properties.containsKey(str)) {
            return null;
        }
        Object obj = this.properties.get(str);
        return obj instanceof String ? (String) obj : null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("MetadataObject");
        stringBuilder.append("{properties: ").append(this.properties.size());
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}