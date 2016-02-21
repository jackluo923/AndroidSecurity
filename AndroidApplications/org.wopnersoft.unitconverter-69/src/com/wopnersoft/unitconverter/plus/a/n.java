package com.wopnersoft.unitconverter.plus.a;

import android.text.TextUtils;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

// compiled from: ProGuard
public class n {
    public static PublicKey a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(a.a(str)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            Throwable th = e2;
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(th);
        } catch (b e3) {
            th = e3;
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(th);
        }
    }

    public static boolean a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3)) {
            return a(a(str), str2, str3);
        }
        Log.e("IABUtil/Security", "Purchase verification failed: missing data.");
        return false;
    }

    public static boolean a(PublicKey publicKey, String str, String str2) {
        boolean z = false;
        try {
            Signature instance = Signature.getInstance("SHA1withRSA");
            instance.initVerify(publicKey);
            instance.update(str.getBytes());
            if (instance.verify(a.a(str2))) {
                return true;
            }
            Log.e("IABUtil/Security", "Signature verification failed.");
            return z;
        } catch (NoSuchAlgorithmException e) {
            Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
            return z;
        } catch (InvalidKeyException e2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            return z;
        } catch (SignatureException e3) {
            Log.e("IABUtil/Security", "Signature exception.");
            return z;
        } catch (b e4) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            return z;
        }
    }
}