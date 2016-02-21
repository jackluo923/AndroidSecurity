package com.IQzone.postitial.obfuscated;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public class qa {
    static {
    }

    public static Object a(byte[] bArr) {
        if (bArr != null) {
            return new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
        }
        throw new NullPointerException("<DataUtils><2>, bytes cannot be null");
    }

    public static byte[] a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("<DataUtils><1>, object cannot be null");
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        objectOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }
}