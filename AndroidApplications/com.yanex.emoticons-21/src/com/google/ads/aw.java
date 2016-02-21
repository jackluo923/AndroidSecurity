package com.google.ads;

import com.actionbarsherlock.view.MenuItem;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public final class aw {
    private static aw c;
    private final BigInteger a;
    private BigInteger b;

    static {
        c = null;
    }

    private aw() {
        this.b = BigInteger.ONE;
        this.a = d();
    }

    public static synchronized aw a() {
        aw awVar;
        synchronized (aw.class) {
            if (c == null) {
                c = new aw();
            }
            awVar = c;
        }
        return awVar;
    }

    private static BigInteger d() {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            UUID randomUUID = UUID.randomUUID();
            instance.update(BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray());
            instance.update(BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray());
            Object obj = new Object[9];
            obj[0] = (byte) 0;
            System.arraycopy(instance.digest(), 0, obj, 1, MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            return new BigInteger(obj);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Cannot find MD5 message digest algorithm.");
        }
    }

    public final synchronized BigInteger b() {
        return this.a;
    }

    public final synchronized BigInteger c() {
        BigInteger bigInteger;
        bigInteger = this.b;
        this.b = this.b.add(BigInteger.ONE);
        return bigInteger;
    }
}