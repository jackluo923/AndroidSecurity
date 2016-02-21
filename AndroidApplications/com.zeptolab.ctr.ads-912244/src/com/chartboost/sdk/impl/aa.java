package com.chartboost.sdk.impl;

public class aa {
    final Object a;
    final String b;

    public Object a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(com.chartboost.sdk.impl.aa r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.impl.aa.equals(java.lang.Object):boolean");
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        if (r4 != r5) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        if (r5 == 0) goto L_0x0011;
    L_0x0007:
        r2 = r4.getClass();
        r3 = r5.getClass();
        if (r2 == r3) goto L_0x0013;
    L_0x0011:
        r0 = r1;
        goto L_0x0004;
    L_0x0013:
        r5 = (com.chartboost.sdk.impl.aa) r5;
        r2 = r4.a;
        if (r2 == 0) goto L_0x0025;
    L_0x0019:
        r2 = r4.a;
        r3 = r5.a;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0029;
    L_0x0023:
        r0 = r1;
        goto L_0x0004;
    L_0x0025:
        r2 = r5.a;
        if (r2 != 0) goto L_0x0023;
    L_0x0029:
        r2 = r4.b;
        if (r2 == 0) goto L_0x0039;
    L_0x002d:
        r2 = r4.b;
        r3 = r5.b;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0004;
    L_0x0037:
        r0 = r1;
        goto L_0x0004;
    L_0x0039:
        r2 = r5.b;
        if (r2 == 0) goto L_0x0004;
    L_0x003d:
        goto L_0x0037;
        */
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.a != null ? this.a.hashCode() : 0) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        return "{ \"$ref\" : \"" + this.b + "\", \"$id\" : \"" + this.a + "\" }";
    }
}