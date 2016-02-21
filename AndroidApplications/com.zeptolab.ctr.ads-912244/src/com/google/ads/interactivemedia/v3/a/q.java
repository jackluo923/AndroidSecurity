package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.f;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import java.math.BigInteger;

public final class q extends l {
    private static final Class[] a;
    private Object b;

    static {
        a = new Class[]{Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    }

    public q(Object obj) {
        a(obj);
    }

    public q(Object obj) {
        a(obj);
    }

    public q(Object obj) {
        a(obj);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.Object r8) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.interactivemedia.v3.a.q.a(java.lang.Object):void");
        /*
        r7 = this;
        r1 = 1;
        r0 = 0;
        r2 = r8 instanceof java.lang.Character;
        if (r2 == 0) goto L_0x0013;
    L_0x0006:
        r8 = (java.lang.Character) r8;
        r0 = r8.charValue();
        r0 = java.lang.String.valueOf(r0);
        r7.b = r0;
    L_0x0012:
        return;
    L_0x0013:
        r2 = r8 instanceof java.lang.Number;
        if (r2 != 0) goto L_0x001e;
    L_0x0017:
        r2 = r8 instanceof java.lang.String;
        if (r2 == 0) goto L_0x0025;
    L_0x001b:
        r2 = r1;
    L_0x001c:
        if (r2 == 0) goto L_0x001f;
    L_0x001e:
        r0 = r1;
    L_0x001f:
        com.google.ads.interactivemedia.v3.a.b.a.a(r0);
        r7.b = r8;
        goto L_0x0012;
    L_0x0025:
        r3 = r8.getClass();
        r4 = a;
        r5 = r4.length;
        r2 = r0;
    L_0x002d:
        if (r2 >= r5) goto L_0x003c;
    L_0x002f:
        r6 = r4[r2];
        r6 = r6.isAssignableFrom(r3);
        if (r6 == 0) goto L_0x0039;
    L_0x0037:
        r2 = r1;
        goto L_0x001c;
    L_0x0039:
        r2 = r2 + 1;
        goto L_0x002d;
    L_0x003c:
        r2 = r0;
        goto L_0x001c;
        */
    }

    private static boolean a(q qVar) {
        if (!(qVar.b instanceof Number)) {
            return false;
        }
        Number number = (Number) qVar.b;
        return number instanceof BigInteger || number instanceof Long || number instanceof Integer || number instanceof Short || number instanceof Byte;
    }

    public final Number a() {
        return this.b instanceof String ? new f((String) this.b) : (Number) this.b;
    }

    public final String b() {
        if (this.b instanceof Number) {
            return a().toString();
        }
        return this.b instanceof Boolean ? ((Boolean) this.b).toString() : (String) this.b;
    }

    public final double c() {
        return this.b instanceof Number ? a().doubleValue() : Double.parseDouble(b());
    }

    public final long d() {
        return this.b instanceof Number ? a().longValue() : Long.parseLong(b());
    }

    public final int e() {
        return this.b instanceof Number ? a().intValue() : Integer.parseInt(b());
    }

    public final boolean equals(q qVar) {
        if (this == qVar) {
            return true;
        }
        if (qVar == null || getClass() != qVar.getClass()) {
            return false;
        }
        qVar = qVar;
        if (this.b == null) {
            return qVar.b == null;
        } else if (a(this) && a(qVar)) {
            return a().longValue() == qVar.a().longValue();
        } else if (!(this.b instanceof Number) || !(qVar.b instanceof Number)) {
            return this.b.equals(qVar.b);
        } else {
            double doubleValue = a().doubleValue();
            double doubleValue2 = qVar.a().doubleValue();
            if (doubleValue == doubleValue2) {
                return true;
            }
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
    }

    public final boolean f() {
        return this.b instanceof Boolean ? ((Boolean) this.b).booleanValue() : Boolean.parseBoolean(b());
    }

    public final int hashCode() {
        if (this.b == null) {
            return ApiEventType.API_MRAID_ASYNC_PING;
        }
        long longValue;
        if (a(this)) {
            longValue = a().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        } else if (!(this.b instanceof Number)) {
            return this.b.hashCode();
        } else {
            longValue = Double.doubleToLongBits(a().doubleValue());
            return (int) (longValue ^ (longValue >>> 32));
        }
    }

    public final boolean n() {
        return this.b instanceof Boolean;
    }

    public final boolean o() {
        return this.b instanceof Number;
    }

    public final boolean p() {
        return this.b instanceof String;
    }
}