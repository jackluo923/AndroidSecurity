package com.zeptolab.ctr.billing.google.utils;

import android.text.TextUtils;
import android.util.Log;
import com.zeptolab.utils.Base64;
import com.zeptolab.utils.Base64DecoderException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

public class Security {
    private static final String KEY_FACTORY_ALGORITHM = "RSA";
    private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final String TAG = "IABUtil/Security";

    public static PublicKey generatePublicKey(String str) {
        try {
            return KeyFactory.getInstance(KEY_FACTORY_ALGORITHM).generatePublic(new X509EncodedKeySpec(Base64.decode(str)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            Throwable th = e2;
            Log.e(TAG, "Invalid key specification.");
            throw new IllegalArgumentException(th);
        } catch (Base64DecoderException e3) {
            th = e3;
            Log.e(TAG, "Base64 decoding failed.");
            throw new IllegalArgumentException(th);
        }
    }

    public static boolean verify(PublicKey publicKey, String str, String str2) {
        boolean z = false;
        try {
            Signature instance = Signature.getInstance(SIGNATURE_ALGORITHM);
            instance.initVerify(publicKey);
            instance.update(str.getBytes());
            if (instance.verify(Base64.decode(str2))) {
                return true;
            }
            Log.e(TAG, "Signature verification failed.");
            return z;
        } catch (NoSuchAlgorithmException e) {
            Log.e(TAG, "NoSuchAlgorithmException.");
            return z;
        } catch (InvalidKeyException e2) {
            Log.e(TAG, "Invalid key specification.");
            return z;
        } catch (SignatureException e3) {
            Log.e(TAG, "Signature exception.");
            return z;
        } catch (Base64DecoderException e4) {
            Log.e(TAG, "Base64 decoding failed.");
            return z;
        }
    }

    public static boolean verifyPurchase(String str, String str2, String str3) {
        if (str2 == null) {
            Log.e(TAG, "data is null");
            return false;
        } else if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3)) {
            return verify(generatePublicKey(str), str2, str3);
        } else {
            Log.e(TAG, "Purchase verification failed: missing data.");
            return false;
        }
    }
}