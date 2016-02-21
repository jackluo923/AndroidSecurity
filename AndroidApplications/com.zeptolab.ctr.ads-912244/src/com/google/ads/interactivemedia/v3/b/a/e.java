package com.google.ads.interactivemedia.v3.b.a;

import android.util.Log;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;

public class e {
    public List adCuePoints;
    public a adData;
    public long adTimeUpdateMs;
    public String adUiStyle;
    public Map companions;
    public int errorCode;
    public String errorMessage;
    public String innerError;
    public SortedSet internalCuePoints;
    public String ln;
    public String m;
    public String n;
    public String translation;
    public String videoUrl;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("JavaScriptMsgData[");
        Field[] fields = e.class.getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            try {
                Object obj = field.get(this);
                stringBuilder.append(field.getName()).append(":");
                stringBuilder.append(obj).append(",");
            } catch (IllegalArgumentException e) {
                Log.e("IMASDK", "IllegalArgumentException occurred", e);
            } catch (IllegalAccessException e2) {
                Log.e("IMASDK", "IllegalAccessException occurred", e2);
            }
            i++;
        }
        return stringBuilder.append("]").toString();
    }
}