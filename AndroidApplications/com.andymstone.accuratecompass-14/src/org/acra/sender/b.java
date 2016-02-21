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
import org.acra.d;
import org.acra.e.c;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;

public class b implements c {
    private static /* synthetic */ int[] b;
    private final Uri a;

    public b() {
        this.a = null;
    }

    private Map a(Map map) {
        ?[] Arr;
        int i = 0;
        ReportField[] e = ACRA.getConfig().e();
        Arr = e.length == 0 ? d.c : e;
        Map hashMap = new HashMap();
        int length = Arr.length;
        int i2 = 0;
        while (i < length) {
            ReportField reportField = Arr[i];
            switch (a()[reportField.ordinal()]) {
                case o.MyAlertDialog_MAD_titleStyle:
                    hashMap.put(new StringBuilder("entry.").append(i2).append(".single").toString(), new StringBuilder("'").append((String) map.get(reportField)).toString());
                    break;
                case o.MyAlertDialog_MAD_edgePadding:
                    hashMap.put(new StringBuilder("entry.").append(i2).append(".single").toString(), new StringBuilder("'").append((String) map.get(reportField)).toString());
                    break;
                default:
                    hashMap.put(new StringBuilder("entry.").append(i2).append(".single").toString(), (String) map.get(reportField));
                    break;
            }
            i2++;
            i++;
        }
        return hashMap;
    }

    static /* synthetic */ int[] a() {
        int[] iArr = b;
        if (iArr == null) {
            iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.ANDROID_VERSION.ordinal()] = 7;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ReportField.APPLICATION_LOG.ordinal()] = 36;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ReportField.APP_VERSION_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ReportField.APP_VERSION_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[ReportField.AVAILABLE_MEM_SIZE.ordinal()] = 12;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[ReportField.BRAND.ordinal()] = 9;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[ReportField.BUILD.ordinal()] = 8;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[ReportField.CRASH_CONFIGURATION.ordinal()] = 16;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[ReportField.CUSTOM_DATA.ordinal()] = 13;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[ReportField.DEVICE_FEATURES.ordinal()] = 30;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[ReportField.DEVICE_ID.ordinal()] = 27;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[ReportField.DISPLAY.ordinal()] = 17;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[ReportField.DROPBOX.ordinal()] = 22;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[ReportField.DUMPSYS_MEMINFO.ordinal()] = 21;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[ReportField.ENVIRONMENT.ordinal()] = 31;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[ReportField.EVENTSLOG.ordinal()] = 24;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[ReportField.FILE_PATH.ordinal()] = 5;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[ReportField.INITIAL_CONFIGURATION.ordinal()] = 15;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[ReportField.INSTALLATION_ID.ordinal()] = 28;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[ReportField.IS_SILENT.ordinal()] = 26;
            } catch (NoSuchFieldError e20) {
            }
            try {
                iArr[ReportField.LOGCAT.ordinal()] = 23;
            } catch (NoSuchFieldError e21) {
            }
            try {
                iArr[ReportField.MEDIA_CODEC_LIST.ordinal()] = 37;
            } catch (NoSuchFieldError e22) {
            }
            try {
                iArr[ReportField.PACKAGE_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError e23) {
            }
            try {
                iArr[ReportField.PHONE_MODEL.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                iArr[ReportField.PRODUCT.ordinal()] = 10;
            } catch (NoSuchFieldError e25) {
            }
            try {
                iArr[ReportField.RADIOLOG.ordinal()] = 25;
            } catch (NoSuchFieldError e26) {
            }
            try {
                iArr[ReportField.REPORT_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e27) {
            }
            try {
                iArr[ReportField.SETTINGS_GLOBAL.ordinal()] = 34;
            } catch (NoSuchFieldError e28) {
            }
            try {
                iArr[ReportField.SETTINGS_SECURE.ordinal()] = 33;
            } catch (NoSuchFieldError e29) {
            }
            try {
                iArr[ReportField.SETTINGS_SYSTEM.ordinal()] = 32;
            } catch (NoSuchFieldError e30) {
            }
            try {
                iArr[ReportField.SHARED_PREFERENCES.ordinal()] = 35;
            } catch (NoSuchFieldError e31) {
            }
            try {
                iArr[ReportField.STACK_TRACE.ordinal()] = 14;
            } catch (NoSuchFieldError e32) {
            }
            try {
                iArr[ReportField.THREAD_DETAILS.ordinal()] = 38;
            } catch (NoSuchFieldError e33) {
            }
            try {
                iArr[ReportField.TOTAL_MEM_SIZE.ordinal()] = 11;
            } catch (NoSuchFieldError e34) {
            }
            try {
                iArr[ReportField.USER_APP_START_DATE.ordinal()] = 19;
            } catch (NoSuchFieldError e35) {
            }
            try {
                iArr[ReportField.USER_COMMENT.ordinal()] = 18;
            } catch (NoSuchFieldError e36) {
            }
            try {
                iArr[ReportField.USER_CRASH_DATE.ordinal()] = 20;
            } catch (NoSuchFieldError e37) {
            }
            try {
                iArr[ReportField.USER_EMAIL.ordinal()] = 29;
            } catch (NoSuchFieldError e38) {
            }
            try {
                iArr[ReportField.USER_IP.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            b = iArr;
        }
        return iArr;
    }

    public void a(Map map) {
        Uri parse;
        if (this.a == null) {
            parse = Uri.parse(String.format(ACRA.getConfig().M(), new Object[]{ACRA.getConfig().j()}));
        } else {
            parse = this.a;
        }
        Map a = a(map);
        a.put("pageNumber", "0");
        a.put("backupCache", "");
        a.put("submit", "Envoyer");
        try {
            URL url = new URL(parse.toString());
            Log.d(ACRA.LOG_TAG, new StringBuilder("Sending report ").append((String) map.get(ReportField.REPORT_ID)).toString());
            Log.d(ACRA.LOG_TAG, new StringBuilder("Connect to ").append(url).toString());
            c cVar = new c();
            cVar.a(ACRA.getConfig().d());
            cVar.b(ACRA.getConfig().F());
            cVar.c(ACRA.getConfig().q());
            cVar.a(url, Method.POST, c.b(a), Type.FORM);
        } catch (IOException e) {
            throw new d("Error while sending report to Google Form.", e);
        }
    }
}