package com.chartboost.sdk.impl;

import android.support.v4.widget.ExploreByTouchHelper;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Serializable;
import java.net.NetworkInterface;
import java.nio.ByteBuffer;
import java.util.Enumeration;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;

public class bd implements Serializable, Comparable {
    static final Logger a;
    private static AtomicInteger f;
    private static final int g;
    final int b;
    final int c;
    final int d;
    boolean e;

    static {
        a = Logger.getLogger("org.bson.ObjectId");
        f = new AtomicInteger(new Random().nextInt());
        try {
            int identityHashCode;
            StringBuilder stringBuilder = new StringBuilder();
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                stringBuilder.append(((NetworkInterface) networkInterfaces.nextElement()).toString());
            }
            int i = stringBuilder.toString().hashCode() << 16;
            a.fine("machine piece post: " + Integer.toHexString(i));
            int nextInt = new Random().nextInt();
            ClassLoader classLoader = bd.class.getClassLoader();
            identityHashCode = classLoader != null ? System.identityHashCode(classLoader) : 0;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(Integer.toHexString(nextInt));
            stringBuilder2.append(Integer.toHexString(identityHashCode));
            identityHashCode = stringBuilder2.toString().hashCode() & 65535;
            a.fine("process piece: " + Integer.toHexString(identityHashCode));
            g = identityHashCode | i;
            a.fine("machine : " + Integer.toHexString(g));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public bd() {
        this.b = (int) (System.currentTimeMillis() / 1000);
        this.c = g;
        this.d = f.getAndIncrement();
        this.e = true;
    }

    public bd(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = false;
    }

    public bd(String str) {
        this(str, false);
    }

    public bd(String str, boolean z) {
        if (a(str)) {
            if (z) {
                str = b(str);
            }
            byte[] bArr = new byte[12];
            int i = 0;
            while (i < bArr.length) {
                bArr[i] = (byte) Integer.parseInt(str.substring(i * 2, i * 2 + 2), MMException.REQUEST_NOT_PERMITTED);
                i++;
            }
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.b = wrap.getInt();
            this.c = wrap.getInt();
            this.d = wrap.getInt();
            this.e = false;
        } else {
            throw new IllegalArgumentException("invalid ObjectId [" + str + "]");
        }
    }

    public static bd a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof bd) {
            return (bd) obj;
        }
        if (obj instanceof String) {
            String toString = obj.toString();
            if (a(toString)) {
                return new bd(toString);
            }
        }
        return null;
    }

    static String a(String str, int i) {
        return str.substring(i * 2, i * 2 + 2);
    }

    public static boolean a(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length != 24) {
            return false;
        }
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                if ((charAt < 'a' || charAt > 'f') && (charAt < 'A' || charAt > 'F')) {
                    return false;
                }
            }
            i++;
        }
        return true;
    }

    public static String b(String str) {
        if (a(str)) {
            StringBuilder stringBuilder = new StringBuilder(24);
            int i = GoogleScorer.CLIENT_ALL;
            while (i >= 0) {
                stringBuilder.append(a(str, i));
                i--;
            }
            i = R.styleable.MapAttrs_uiZoomGestures;
            while (i >= 8) {
                stringBuilder.append(a(str, i));
                i--;
            }
            return stringBuilder.toString();
        } else {
            throw new IllegalArgumentException("invalid object id: " + str);
        }
    }

    int a(int i, int i2) {
        long j = ((long) i) & 4294967295L - ((long) i2) & 4294967295L;
        if (j < -2147483648L) {
            return ExploreByTouchHelper.INVALID_ID;
        }
        return j > 2147483647L ? Integer.MAX_VALUE : (int) j;
    }

    public int a(bd bdVar) {
        if (bdVar == null) {
            return -1;
        }
        int a = a(this.b, bdVar.b);
        if (a != 0) {
            return a;
        }
        a = a(this.c, bdVar.c);
        return a == 0 ? a(this.d, bdVar.d) : a;
    }

    public String a() {
        byte[] b = b();
        StringBuilder stringBuilder = new StringBuilder(24);
        int i = 0;
        while (i < b.length) {
            String toHexString = Integer.toHexString(b[i] & 255);
            if (toHexString.length() == 1) {
                stringBuilder.append("0");
            }
            stringBuilder.append(toHexString);
            i++;
        }
        return stringBuilder.toString();
    }

    public byte[] b() {
        byte[] bArr = new byte[12];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putInt(this.b);
        wrap.putInt(this.c);
        wrap.putInt(this.d);
        return bArr;
    }

    public int c() {
        return this.b;
    }

    public /* synthetic */ int compareTo(Object obj) {
        return a((bd) obj);
    }

    public int d() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        bd a = a(obj);
        if (a == null) {
            return false;
        }
        return this.b == a.b && this.c == a.c && this.d == a.d;
    }

    public int hashCode() {
        return this.b + this.c * 111 + this.d * 17;
    }

    public String toString() {
        return a();
    }
}