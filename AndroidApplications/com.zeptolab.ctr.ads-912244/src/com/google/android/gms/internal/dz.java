package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.ads.AdSize;
import com.google.android.gms.common.images.WebImage;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class dz {
    private static final du xE;
    private static final String[] yE;
    private static final String yF;

    static {
        xE = new du("MetadataUtils");
        yE = new String[]{"Z", "+hh", "+hhmm", "+hh:mm"};
        yF = "yyyyMMdd'T'HHmmss" + yE[0];
    }

    public static Calendar V(String str) {
        if (TextUtils.isEmpty(str)) {
            xE.b("Input string is empty or null", new Object[0]);
            return null;
        } else {
            String W = W(str);
            if (TextUtils.isEmpty(W)) {
                xE.b("Invalid date format", new Object[0]);
                return null;
            } else {
                String X = X(str);
                String str2 = "yyyyMMdd";
                if (!TextUtils.isEmpty(X)) {
                    W = W + "T" + X;
                    str2 = X.length() == "HHmmss".length() ? "yyyyMMdd'T'HHmmss" : yF;
                }
                Calendar instance = GregorianCalendar.getInstance();
                try {
                    instance.setTime(new SimpleDateFormat(str2).parse(W));
                    return instance;
                } catch (ParseException e) {
                    ParseException parseException = e;
                    xE.b("Error parsing string: %s", new Object[]{parseException.getMessage()});
                    return null;
                }
            }
        }
    }

    private static String W(String str) {
        if (TextUtils.isEmpty(str)) {
            xE.b("Input string is empty or null", new Object[0]);
            return null;
        } else {
            try {
                return str.substring(0, "yyyyMMdd".length());
            } catch (IndexOutOfBoundsException e) {
                IndexOutOfBoundsException indexOutOfBoundsException = e;
                xE.c("Error extracting the date: %s", new Object[]{indexOutOfBoundsException.getMessage()});
                return null;
            }
        }
    }

    private static String X(String str) {
        if (TextUtils.isEmpty(str)) {
            xE.b("string is empty or null", new Object[0]);
            return null;
        } else {
            int indexOf = str.indexOf(84);
            int i = indexOf + 1;
            if (indexOf != "yyyyMMdd".length()) {
                xE.b("T delimeter is not found", new Object[0]);
                return null;
            } else {
                try {
                    String substring = str.substring(i);
                    if (substring.length() == "HHmmss".length()) {
                        return substring;
                    }
                    switch (substring.charAt("HHmmss".length())) {
                        case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                        case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                            return Y(substring) ? substring.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2") : null;
                        case AdSize.LARGE_AD_HEIGHT:
                            return substring.length() == "HHmmss".length() + yE[0].length() ? substring.substring(0, substring.length() - 1) + "+0000" : null;
                        default:
                            return null;
                    }
                } catch (IndexOutOfBoundsException e) {
                    IndexOutOfBoundsException indexOutOfBoundsException = e;
                    xE.b("Error extracting the time substring: %s", new Object[]{indexOutOfBoundsException.getMessage()});
                    return null;
                }
            }
        }
    }

    private static boolean Y(String str) {
        int length = str.length();
        int length2 = "HHmmss".length();
        return length == yE[1].length() + length2 || length == yE[2].length() + length2 || length == length2 + yE[3].length();
    }

    public static String a(Calendar calendar) {
        if (calendar == null) {
            xE.b("Calendar object cannot be null", new Object[0]);
            return null;
        } else {
            String str = yF;
            if (calendar.get(R.styleable.MapAttrs_uiZoomGestures) == 0 && calendar.get(R.styleable.MapAttrs_useViewLifecycle) == 0 && calendar.get(R.styleable.MapAttrs_zOrderOnTop) == 0) {
                str = "yyyyMMdd";
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
            simpleDateFormat.setTimeZone(calendar.getTimeZone());
            str = simpleDateFormat.format(calendar.getTime());
            return str.endsWith("+0000") ? str.replace("+0000", yE[0]) : str;
        }
    }

    public static void a(List list, JSONObject jSONObject) {
        try {
            list.clear();
            JSONArray jSONArray = jSONObject.getJSONArray("images");
            int length = jSONArray.length();
            int i = 0;
            while (i < length) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException e) {
                }
                i++;
            }
        } catch (JSONException e2) {
        }
    }

    public static void a(JSONObject jSONObject, List list) {
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((WebImage) it.next()).cT());
            }
            try {
                jSONObject.put("images", jSONArray);
            } catch (JSONException e) {
            }
        }
    }
}