package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.util.Base64;
import com.google.android.gms.cast.Cast;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

@SuppressLint({"NewApi"})
class c {
    private SecretKey a;

    c() {
    }

    String a(String str) {
        a();
        Cipher instance = Cipher.getInstance("AES");
        instance.init(1, this.a);
        return Base64.encodeToString(instance.doFinal(str.getBytes()), 0);
    }

    @SuppressLint({"NewApi"})
    String a(String str, String str2) {
        String str3 = null;
        try {
            Key secretKeySpec = new SecretKeySpec(Base64.decode(str, 0), "AES");
            Cipher instance = Cipher.getInstance("AES");
            instance.init(GoogleScorer.CLIENT_PLUS, secretKeySpec);
            return new String(instance.doFinal(Base64.decode(str2, 0)));
        } catch (Exception e) {
            ac.a("Error");
            return str3;
        }
    }

    void a() {
        SecureRandom secureRandom = new SecureRandom();
        KeyGenerator instance = KeyGenerator.getInstance("AES");
        instance.init(Cast.MAX_NAMESPACE_LENGTH, secureRandom);
        this.a = instance.generateKey();
    }

    String b() {
        return new String(Base64.encode(this.a.getEncoded(), 0));
    }
}