package org.acra.e;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Iterator;
import java.util.Locale;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.b.c;
import org.json.JSONException;
import org.json.JSONObject;

public class f {
    private static Object a(String str) {
        if (str.equalsIgnoreCase("true")) {
            return Boolean.valueOf(true);
        }
        if (str.equalsIgnoreCase("false")) {
            return Boolean.valueOf(false);
        }
        if (!str.matches("(?:^|\\s)([1-9](?:\\d*|(?:\\d{0,2})(?:,\\d{3})*)(?:\\.\\d*[1-9])?|0?\\.\\d*[1-9]|0)(?:\\s|$)")) {
            return str;
        }
        try {
            return NumberFormat.getInstance(Locale.US).parse(str);
        } catch (ParseException e) {
            return str;
        }
    }

    public static JSONObject a(c cVar) {
        JSONObject jSONObject = new JSONObject();
        Iterator it = cVar.keySet().iterator();
        while (it.hasNext()) {
            ReportField reportField = (ReportField) it.next();
            try {
                if (reportField.containsKeyValuePairs()) {
                    JSONObject jSONObject2 = new JSONObject();
                    BufferedReader bufferedReader = new BufferedReader(new StringReader(cVar.a(reportField)), 1024);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                a(jSONObject2, readLine);
                            }
                        } catch (IOException e) {
                            ACRA.log.b(ACRA.LOG_TAG, new StringBuilder("Error while converting ").append(reportField.name()).append(" to JSON.").toString(), e);
                        }
                        jSONObject.accumulate(reportField.name(), jSONObject2);
                    }
                } else {
                    jSONObject.accumulate(reportField.name(), a(cVar.a(reportField)));
                }
            } catch (JSONException e2) {
                throw new g(new StringBuilder("Could not create JSON object for key ").append(reportField).toString(), e2);
            }
        }
        return jSONObject;
    }

    private static void a(JSONObject jSONObject, String str) {
        int indexOf = str.indexOf(61);
        if (indexOf > 0) {
            String trim = str.substring(0, indexOf).trim();
            Object a = a(str.substring(indexOf + 1).trim());
            if (a instanceof String) {
                a = ((String) a).replaceAll("\\\\n", "\n");
            }
            String[] split = trim.split("\\.");
            if (split.length > 1) {
                a(jSONObject, split, a);
            } else {
                jSONObject.accumulate(trim, a);
            }
        } else {
            jSONObject.put(str.trim(), true);
        }
    }

    private static void a(JSONObject jSONObject, String[] strArr, Object obj) {
        int i = 0;
        while (i < strArr.length) {
            String str = strArr[i];
            if (i < strArr.length - 1) {
                JSONObject jSONObject2;
                if (jSONObject.isNull(str)) {
                    jSONObject2 = new JSONObject();
                    jSONObject.accumulate(str, jSONObject2);
                } else {
                    jSONObject2 = jSONObject.getJSONObject(str);
                }
                jSONObject = jSONObject2;
            } else {
                jSONObject.accumulate(str, obj);
            }
            i++;
        }
    }
}