package com.chartboost.sdk.Libraries;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

public final class b {
    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(bArr);
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String b_(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        return String.format(Locale.US, "%0" + (bArr.length << 1) + "x", new Object[]{bigInteger});
    }
}