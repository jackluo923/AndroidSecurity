package com.flurry.sdk;

import android.content.Intent;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.utils.HTMLEncoder;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public final class fb {
    private static final String a;

    static {
        a = fb.class.getSimpleName();
    }

    public static long a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    public static String a(String str) {
        return a(str, (int)MotionEventCompat.ACTION_MASK);
    }

    public static String a(String str, int i) {
        if (str == null) {
            return AdTrackerConstants.BLANK;
        }
        return str.length() > i ? str.substring(0, i) : str;
    }

    public static String a(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder(bArr.length * 2);
        char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            byte b = bArr[i];
            byte b2 = (byte) (b & 15);
            stringBuilder.append(cArr[(byte) ((b & 240) >> 4)]);
            stringBuilder.append(cArr[b2]);
            i++;
        }
        return stringBuilder.toString();
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    public static boolean a(long j) {
        return j == 0 || System.currentTimeMillis() <= j;
    }

    public static boolean a(Intent intent) {
        return dl.a().c().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).size() > 0;
    }

    public static String b(String str) {
        try {
            return URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (UnsupportedEncodingException e) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "Cannot encode '" + str + "'");
            return AdTrackerConstants.BLANK;
        }
    }

    public static boolean b(Intent intent) {
        if (intent == null) {
            return false;
        }
        return dl.a().b().getPackageName().equals(intent.resolveActivity(dl.a().c()).getPackageName());
    }

    public static String c(String str) {
        try {
            return URLDecoder.decode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (UnsupportedEncodingException e) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "Cannot decode '" + str + "'");
            return AdTrackerConstants.BLANK;
        }
    }

    public static byte[] d(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(str.getBytes(), 0, str.length());
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Unsupported SHA1: " + e.getMessage());
            return null;
        }
    }

    public static String e(String str) {
        return str.replace("'", "\\'").replace("\\n", AdTrackerConstants.BLANK).replace("\\r", AdTrackerConstants.BLANK).replace("\\t", AdTrackerConstants.BLANK);
    }

    public static Map f(String str) {
        Map hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("&");
            int length = split.length;
            int i = 0;
            while (i < length) {
                String[] split2 = split[i].split("=");
                if (!split2[0].equals(DataLayer.EVENT_KEY)) {
                    hashMap.put(c(split2[0]), c(split2[1]));
                }
                i++;
            }
        }
        return hashMap;
    }

    public static long g(String str) {
        if (str == null) {
            return 0;
        }
        long j = 1125899906842597L;
        int i = 0;
        while (i < str.length()) {
            long charAt = ((long) str.charAt(i)) + j * 31;
            i++;
            j = charAt;
        }
        return j;
    }
}