package com.google.ads;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class b {
    private static b c;
    private final BigInteger a;
    private BigInteger b;

    static {
        c = null;
    }

    private b() {
        this.b = BigInteger.ONE;
        this.a = d();
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (c == null) {
                c = new b();
            }
            bVar = c;
        }
        return bVar;
    }

    private static byte[] a(long j) {
        return BigInteger.valueOf(j).toByteArray();
    }

    private static BigInteger d() {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            UUID randomUUID = UUID.randomUUID();
            instance.update(a(randomUUID.getLeastSignificantBits()));
            instance.update(a(randomUUID.getMostSignificantBits()));
            Object obj = new Object[9];
            obj[0] = (byte) 0;
            System.arraycopy(instance.digest(), 0, obj, 1, 8);
            return new BigInteger(obj);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Cannot find MD5 message digest algorithm.");
        }
    }

    public synchronized BigInteger b_() {
        return this.a;
    }

    public synchronized BigInteger c() {
        BigInteger bigInteger;
        bigInteger = this.b;
        this.b = this.b.add(BigInteger.ONE);
        return bigInteger;
    }
}