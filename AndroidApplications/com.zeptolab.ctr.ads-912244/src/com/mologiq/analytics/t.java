package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.util.Base64;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

class t {
    private PublicKey a;
    private Cipher b;

    t() {
        try {
            this.a = a("MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJHz5rYyjP4OdTotQP4QUKHHk0YP+YM/axTmaG2FO+AS0WG9vtLijYptdMACMeIvPANrey0HmQBqYmsCCFY7HO8CAwEAAQ==");
            this.b = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    PublicKey a(String str) {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
    }

    @SuppressLint({"NewApi"})
    String b(String str) {
        try {
            if (!(this.b == null || this.a == null)) {
                this.b.init(1, this.a);
                return Base64.encodeToString(this.b.doFinal(str.getBytes()), 0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}