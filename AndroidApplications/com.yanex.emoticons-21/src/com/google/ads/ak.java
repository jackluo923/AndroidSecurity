package com.google.ads;

import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class ak {
    public static byte[] a(byte[] bArr, String str) {
        if (bArr.length != 16) {
            throw new al();
        }
        try {
            byte[] a = an.a(str);
            if (a.length <= 16) {
                throw new al();
            }
            ByteBuffer allocate = ByteBuffer.allocate(a.length);
            allocate.put(a);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            a = new byte[(a.length - 16)];
            allocate.get(bArr2);
            allocate.get(a);
            Key secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, secretKeySpec, new IvParameterSpec(bArr2));
            return instance.doFinal(a);
        } catch (NoSuchAlgorithmException e) {
            throw new al(e);
        } catch (InvalidKeyException e2) {
            throw new al(e2);
        } catch (IllegalBlockSizeException e3) {
            throw new al(e3);
        } catch (NoSuchPaddingException e4) {
            throw new al(e4);
        } catch (BadPaddingException e5) {
            throw new al(e5);
        } catch (InvalidAlgorithmParameterException e6) {
            throw new al(e6);
        }
    }
}