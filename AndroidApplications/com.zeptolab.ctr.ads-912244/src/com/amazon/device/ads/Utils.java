package com.amazon.device.ads;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.WindowManager;
import com.brightcove.player.event.EventType;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class Utils {
    private static final String a;
    private static final String b = "DISABLED_APP";
    private static int[][] c;

    static {
        a = Utils.class.getSimpleName();
        c = new int[][]{new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};
    }

    private Utils() {
    }

    public static final long convertToMillisecondsFromNanoseconds(long j) {
        return j / 1000000;
    }

    public static final long convertToNsFromS(long j) {
        return 1000000000 * j;
    }

    public static int determineCanonicalScreenOrientation() {
        int i = 0;
        Context applicationContext = InternalAdRegistration.getInstance().getApplicationContext();
        int orientation = AndroidTargetUtils.getOrientation(((WindowManager) applicationContext.getSystemService("window")).getDefaultDisplay());
        int i2 = applicationContext.getResources().getConfiguration().orientation;
        if (i2 == 1) {
            i2 = orientation == 0 || orientation == 2;
        } else if (i2 != 2) {
            z = true;
        } else if (orientation == 1 || orientation == 3) {
            z = true;
        } else {
            z = false;
        }
        if (i2 == 0) {
            i = 1;
        }
        return c[i][orientation];
    }

    public static final String getDisabledAppServerMessage() {
        return b;
    }

    public static final String getURLDecodedString(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (UnsupportedEncodingException e) {
            UnsupportedEncodingException unsupportedEncodingException = e;
            Log.d(a, "getURLDecodedString threw: %s", new Object[]{unsupportedEncodingException});
            return str;
        }
    }

    public static final String getURLEncodedString(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT).replace("+", "%20").replace(EventType.ANY, "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException e) {
            UnsupportedEncodingException unsupportedEncodingException = e;
            Log.d(a, "getURLEncodedString threw: %s", new Object[]{unsupportedEncodingException});
            return str;
        }
    }

    public static boolean isAtLeastAndroidAPI(int i) {
        return VERSION.SDK_INT >= i;
    }

    public static final boolean isNullOrEmpty(String str) {
        return str == null || str.equals(AdTrackerConstants.BLANK);
    }

    public static final boolean isNullOrWhiteSpace(String str) {
        return isNullOrEmpty(str) || str.trim().equals(AdTrackerConstants.BLANK);
    }

    public static int parseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public static String sha1(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder stringBuilder = new StringBuilder();
            int i = 0;
            while (i < digest.length) {
                stringBuilder.append(Integer.toHexString((digest[i] & 255) | 256).substring(1));
                i++;
            }
            return stringBuilder.toString();
        } catch (NoSuchAlgorithmException e) {
            return AdTrackerConstants.BLANK;
        }
    }
}