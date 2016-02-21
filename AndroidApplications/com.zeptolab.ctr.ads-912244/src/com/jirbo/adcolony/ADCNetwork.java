package com.jirbo.adcolony;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class ADCNetwork {
    public static String lowercase_hex_digits = null;
    public static final int timeout_seconds = 30;
    public static String uppercase_hex_digits;
    public static String url_encoding_map;

    static {
        url_encoding_map = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx";
        uppercase_hex_digits = "0123456789ABCDEF";
        lowercase_hex_digits = "0123456789abcdef";
    }

    ADCNetwork() {
    }

    static boolean connected() {
        return using_wifi() || using_mobile();
    }

    public static int hex_character_to_value(char c) {
        int indexOf = uppercase_hex_digits.indexOf(c);
        if (indexOf >= 0) {
            return indexOf;
        }
        indexOf = lowercase_hex_digits.indexOf(c);
        return indexOf < 0 ? 0 : indexOf;
    }

    public static String status() {
        if (using_wifi()) {
            return "wifi";
        }
        return using_mobile() ? "cell" : "offline";
    }

    public static String url_decoded(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2;
            char charAt = str.charAt(i);
            if (charAt == '%') {
                char charAt2;
                charAt2 = i + 1 < length ? str.charAt(i + 1) : '0';
                charAt = i + 2 < length ? str.charAt(i + 2) : '0';
                i += 2;
                stringBuilder.append((char) (hex_character_to_value(charAt) | (hex_character_to_value(charAt2) << 8)));
                i2 = i;
            } else {
                stringBuilder.append(charAt);
                i2 = i;
            }
            i = i2 + 1;
        }
        return stringBuilder.toString();
    }

    public static String url_encoded(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt >= '\u0080' || url_encoding_map.charAt(charAt) != ' ') {
                stringBuilder.append('%');
                int i2 = (charAt >> 4) & 15;
                int i3 = charAt & 15;
                if (i2 < 10) {
                    stringBuilder.append((char) (i2 + 48));
                } else {
                    stringBuilder.append((char) (i2 + 65 - 10));
                }
                if (i3 < 10) {
                    stringBuilder.append((char) (i3 + 48));
                } else {
                    stringBuilder.append((char) (i3 + 65 - 10));
                }
            } else {
                stringBuilder.append(charAt);
            }
            i++;
        }
        return stringBuilder.toString();
    }

    static boolean using_mobile() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) AdColony.activity().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        boolean z;
        int type = activeNetworkInfo.getType();
        z = (type == 0 || type >= 2) ? 1 : false;
        return z;
    }

    static boolean using_wifi() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) AdColony.activity().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return activeNetworkInfo.getType() == 1;
    }
}