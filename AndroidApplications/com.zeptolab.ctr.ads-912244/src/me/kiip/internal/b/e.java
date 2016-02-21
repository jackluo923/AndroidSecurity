package me.kiip.internal.b;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Map;
import me.kiip.internal.a.b.a;
import me.kiip.internal.a.i;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class e {
    public static long a(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            return 0;
        }
    }

    public static String a(Map map) {
        String str = (String) map.get("Content-Type");
        if (str != null) {
            String[] split = str.split(";");
            int i = 1;
            while (i < split.length) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
                i++;
            }
        }
        return "ISO-8859-1";
    }

    public static a a(i iVar) {
        long currentTimeMillis = System.currentTimeMillis();
        Map map = iVar.c;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        boolean z = 0;
        String str = (String) map.get("Date");
        if (str != null) {
            j = a(str);
        }
        str = (String) map.get("Cache-Control");
        if (str != null) {
            z = 1;
            String[] split = str.split(",");
            int i = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (!trim.equals("no-cache") && !trim.equals("no-store")) {
                    if (trim.startsWith("max-age=")) {
                        try {
                            j3 = Long.parseLong(trim.substring(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
                        } catch (Exception e) {
                        }
                    } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                        j3 = 0;
                    }
                    i++;
                }
                return null;
            }
        }
        long j4 = j3;
        int i2 = i;
        str = (String) map.get("Expires");
        if (str != null) {
            j2 = a(str);
        }
        str = (String) map.get("ETag");
        if (i2 != 0) {
            j3 = j4 * 1000 + currentTimeMillis;
        } else if (j <= 0 || j2 < j) {
            j3 = 0;
        } else {
            j3 = j2 - j + currentTimeMillis;
        }
        a aVar = new a();
        aVar.a = iVar.b;
        aVar.b = str;
        aVar.e = j3;
        aVar.d = aVar.e;
        aVar.c = j;
        aVar.f = map;
        return aVar;
    }
}