package org.acra.sender;

import android.net.Uri;
import android.util.Log;
import com.andymstone.core.o;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.b;
import org.acra.d;
import org.acra.e.c;
import org.acra.e.g;

public class HttpSender implements c {
    private static /* synthetic */ int[] e;
    private static /* synthetic */ int[] f;
    private final Uri a;
    private final Map b;
    private final Method c;
    private final Type d;

    public enum Method {
        POST,
        PUT;

        static {
            POST = new org.acra.sender.HttpSender.Method("POST", 0);
            PUT = new org.acra.sender.HttpSender.Method("PUT", 1);
            ENUM$VALUES = new org.acra.sender.HttpSender.Method[]{POST, PUT};
        }
    }

    public enum Type {
        FORM {
            public String getContentType() {
                return "application/x-www-form-urlencoded";
            }
        },
        JSON {
            public String getContentType() {
                return "application/json";
            }
        };

        static {
            FORM = new AnonymousClass_1("FORM", 0);
            JSON = new AnonymousClass_2("JSON", 1);
            ENUM$VALUES = new org.acra.sender.HttpSender.Type[]{FORM, JSON};
        }

        public abstract String getContentType();
    }

    public HttpSender(Method method, Type type, Map map) {
        this.c = method;
        this.a = null;
        this.b = map;
        this.d = type;
    }

    private Map a(Map map) {
        ?[] Arr;
        ReportField[] e = ACRA.getConfig().e();
        Arr = e.length == 0 ? d.c : e;
        Map hashMap = new HashMap(map.size());
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            ReportField reportField = Arr[i];
            if (this.b == null || this.b.get(reportField) == null) {
                hashMap.put(reportField.toString(), (String) map.get(reportField));
            } else {
                hashMap.put((String) this.b.get(reportField), (String) map.get(reportField));
            }
            i++;
        }
        return hashMap;
    }

    static /* synthetic */ int[] a() {
        int[] iArr = e;
        if (iArr == null) {
            iArr = new int[Type.values().length];
            try {
                iArr[Type.FORM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Type.JSON.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            e = iArr;
        }
        return iArr;
    }

    static /* synthetic */ int[] b() {
        int[] iArr = f;
        if (iArr == null) {
            iArr = new int[Method.values().length];
            try {
                iArr[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Method.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f = iArr;
        }
        return iArr;
    }

    public void a(Map map) {
        String str = null;
        try {
            URL url;
            String l;
            url = this.a == null ? new URL(ACRA.getConfig().k()) : new URL(this.a.toString());
            Log.d(ACRA.LOG_TAG, new StringBuilder("Connect to ").append(url.toString()).toString());
            l = b.a(ACRA.getConfig().l()) ? null : ACRA.getConfig().l();
            if (!b.a(ACRA.getConfig().m())) {
                str = ACRA.getConfig().m();
            }
            c cVar = new c();
            cVar.a(ACRA.getConfig().d());
            cVar.b(ACRA.getConfig().F());
            cVar.c(ACRA.getConfig().q());
            cVar.a(l);
            cVar.b(str);
            cVar.a(ACRA.getConfig().a());
            str = "";
            switch (a()[this.d.ordinal()]) {
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    l = map.a().toString();
                    break;
                default:
                    l = c.b(a(map));
                    break;
            }
            switch (b()[this.c.ordinal()]) {
                case o.MyAlertDialog_myAlertDialogAccentColor:
                    cVar.a(url, this.c, l, this.d);
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    url = new URL(new StringBuilder(String.valueOf(url.toString())).append('/').append(map.a(ReportField.REPORT_ID)).toString());
                    cVar.a(url, this.c, l, this.d);
                default:
                    throw new UnsupportedOperationException(new StringBuilder("Unknown method: ").append(this.c.name()).toString());
            }
        } catch (IOException e) {
            throw new d(new StringBuilder("Error while sending ").append(ACRA.getConfig().P()).append(" report via Http ").append(this.c.name()).toString(), e);
        } catch (g e2) {
            throw new d(new StringBuilder("Error while sending ").append(ACRA.getConfig().P()).append(" report via Http ").append(this.c.name()).toString(), e2);
        }
    }
}