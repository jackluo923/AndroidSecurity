package com.inmobi.commons.uid;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thirdparty.Base64;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;

public class UIDHelper {
    private static final Uri a;
    private static String b;
    private static AdvertisingId c;

    final class a implements Runnable {
        a() {
        }

        public void run() {
            try {
                Class forName = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                Class forName2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                Object invoke = forName.getDeclaredMethod("getAdvertisingIdInfo", new Class[]{Context.class}).invoke(null, new Object[]{InternalSDKUtil.getContext()});
                String str = (String) forName2.getDeclaredMethod("getId", (Class[]) 0).invoke(invoke, (Object[]) 0);
                c.a(str);
                FileOperations.setPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "gpid", str);
                Boolean bool = (Boolean) forName2.getDeclaredMethod("isLimitAdTrackingEnabled", (Class[]) 0).invoke(invoke, (Object[]) 0);
                c.a(bool.booleanValue());
                FileOperations.setPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "limitadtrck", bool.booleanValue());
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting advertiser id", e);
            }
        }
    }

    static {
        a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        b = null;
        c = null;
    }

    static String a(String str, String str2) {
        String str3 = AdTrackerConstants.BLANK;
        try {
            byte[] bytes = str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT);
            byte[] bArr = new byte[bytes.length];
            byte[] bytes2 = str2.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT);
            int i = 0;
            while (i < bytes.length) {
                bArr[i] = (byte) (bytes[i] ^ bytes2[i % bytes2.length]);
                i++;
            }
            return new String(Base64.encode(bArr, GoogleScorer.CLIENT_PLUS), HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (Exception e) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Exception in xor with random integer", e);
            return str3;
        }
    }

    private static byte[] a(byte[] bArr, int i, Cipher cipher) {
        int length;
        byte[] bArr2;
        int i2;
        byte[] bArr3 = new byte[0];
        byte[] bArr4 = new byte[0];
        if (i == 1) {
            length = bArr.length;
            bArr2 = new byte[64];
            bArr3 = bArr4;
            i2 = 0;
        } else {
            length = bArr.length;
            bArr2 = new byte[64];
            bArr3 = bArr4;
            i2 = 0;
        }
        while (i2 < length) {
            if (i2 > 0 && i2 % 64 == 0) {
                bArr3 = a(bArr3, cipher.doFinal(bArr2));
                bArr2 = new byte[(i2 + 64 > length ? length - i2 : 64)];
            }
            bArr2[i2 % 64] = bArr[i2];
            i2++;
        }
        return a(bArr3, cipher.doFinal(bArr2));
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        Object obj = new Object[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        System.arraycopy(bArr2, 0, obj, bArr.length, bArr2.length);
        return obj;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String b(java.lang.String r5, java.lang.String r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.uid.UIDHelper.b(java.lang.String, java.lang.String):java.lang.String");
        /*
        if (r5 == 0) goto L_0x000e;
    L_0x0002:
        r0 = "";
        r1 = r5.trim();	 Catch:{ Exception -> 0x0045 }
        r0 = r0.equals(r1);	 Catch:{ Exception -> 0x0045 }
        if (r0 == 0) goto L_0x0011;
    L_0x000e:
        r0 = "TEST_EMULATOR";
    L_0x0010:
        return r0;
    L_0x0011:
        r0 = java.security.MessageDigest.getInstance(r6);	 Catch:{ Exception -> 0x0045 }
        r1 = r5.getBytes();	 Catch:{ Exception -> 0x0045 }
        r0.update(r1);	 Catch:{ Exception -> 0x0045 }
        r1 = r0.digest();	 Catch:{ Exception -> 0x0045 }
        r2 = new java.lang.StringBuffer;	 Catch:{ Exception -> 0x0045 }
        r2.<init>();	 Catch:{ Exception -> 0x0045 }
        r0 = 0;
    L_0x0026:
        r3 = r1.length;	 Catch:{ Exception -> 0x0045 }
        if (r0 >= r3) goto L_0x0040;
    L_0x0029:
        r3 = r1[r0];	 Catch:{ Exception -> 0x0045 }
        r3 = r3 & 255;
        r3 = r3 + 256;
        r4 = 16;
        r3 = java.lang.Integer.toString(r3, r4);	 Catch:{ Exception -> 0x0045 }
        r4 = 1;
        r3 = r3.substring(r4);	 Catch:{ Exception -> 0x0045 }
        r2.append(r3);	 Catch:{ Exception -> 0x0045 }
        r0 = r0 + 1;
        goto L_0x0026;
    L_0x0040:
        r0 = r2.toString();	 Catch:{ Exception -> 0x0045 }
        goto L_0x0010;
    L_0x0045:
        r0 = move-exception;
        r1 = "[InMobi]-4.4.1";
        r2 = "Exception in getting ODIN-1";
        com.inmobi.commons.internal.Log.debug(r1, r2, r0);
        r0 = 0;
        goto L_0x0010;
        */
    }

    public static String byteToHex(byte b) {
        try {
            char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            return new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]});
        } catch (Exception e) {
            return null;
        }
    }

    public static String encryptRSA(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str)) {
            return null;
        }
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger("C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B", 16), new BigInteger("010001", 16)));
            Cipher instance = Cipher.getInstance("RSA/ECB/nopadding");
            instance.init(1, rSAPublicKey);
            return new String(Base64.encode(a(str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT), 1, instance), 0));
        } catch (Exception e) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Exception in encryptRSA", e);
            return null;
        }
    }

    public static AdvertisingId getAdvertisingId() {
        return c;
    }

    public static String getAppId() {
        return b;
    }

    public static String getFBId(Context context) {
        String str = null;
        try {
            Cursor query = context.getContentResolver().query(a, new String[]{"aid"}, null, null, null);
            if (query == null || !query.moveToFirst()) {
                return str;
            }
            String string = query.getString(query.getColumnIndex("aid"));
            return (string == null || string.length() == 0) ? str : string;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to retrieve Facebook attrib id: " + e);
            return str;
        }
    }

    public static String getODIN1(String str) {
        return b(str, "SHA-1");
    }

    public static String getPlatformId() {
        try {
            return (String) Class.forName(InternalSDKUtil.CLASS_PLATFORM_ID).getDeclaredMethod("getAndroidId", new Class[]{Context.class}).invoke(null, new Object[]{InternalSDKUtil.getContext()});
        } catch (Exception e) {
            return null;
        }
    }

    public static String getRSAKeyVersion() {
        return "1";
    }

    public static String getUM5(String str) {
        return b(str, "MD5");
    }

    public static void setAdvertisingId() {
        c = new AdvertisingId();
        c.a(FileOperations.getPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "gpid"));
        c.a(FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "limitadtrck"));
        new Thread(new a()).start();
    }

    public static void setAppId(String str) {
        b = str;
    }
}