package com.amazon.device.ads;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class Base64 {
    private static final String a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    private static int a(String str) {
        int indexOf = str.indexOf("=");
        int i = 0;
        if (indexOf > -1) {
            i = str.length() - indexOf;
        }
        return ((str.length() + 3) / 4) * 3 - i;
    }

    public static byte[] decode(String str) {
        int i = 0;
        if (Utils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("Encoded String must not be null or white space");
        }
        int a = a(str);
        if (a <= 0) {
            throw new IllegalArgumentException("Encoded String decodes to zero bytes");
        }
        byte[] bArr = new byte[a];
        int i2 = 0;
        while (i < str.length() && i2 < a) {
            if (i % 4 == 0 && str.length() < i + 4) {
                return bArr;
            }
            int indexOf = a.indexOf(str.charAt(i));
            if (indexOf == -1) {
                return bArr;
            }
            int i3;
            switch (i % 4) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    bArr[i2] = (byte) (indexOf << 2);
                    i++;
                    break;
                case GoogleScorer.CLIENT_GAMES:
                    i3 = i2 + 1;
                    bArr[i2] = (byte) (bArr[i2] | ((byte) ((indexOf >> 4) & 3)));
                    if (i3 < a) {
                        bArr[i3] = (byte) (indexOf << 4);
                        i2 = i3;
                        i++;
                    }
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i3 = i2 + 1;
                    bArr[i2] = (byte) (bArr[i2] | ((byte) ((indexOf >> 2) & 15)));
                    if (i3 < a) {
                        bArr[i3] = (byte) (indexOf << 6);
                        i2 = i3;
                        i++;
                    }
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i3 = i2 + 1;
                    bArr[i2] = (byte) (((byte) (indexOf & 63)) | bArr[i2]);
                    break;
                default:
                    i++;
                    break;
            }
            i2 = i3;
            i++;
        }
        return bArr;
    }
}