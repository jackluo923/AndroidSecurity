package me.kiip.internal.f;

public enum a {
    NO_ERROR(0, -1, 0),
    PROTOCOL_ERROR(1, 1, 1),
    INVALID_STREAM(1, 2, -1),
    UNSUPPORTED_VERSION(1, 4, -1),
    STREAM_IN_USE(1, 8, -1),
    STREAM_ALREADY_CLOSED(1, 9, -1),
    INTERNAL_ERROR(2, 6, 2),
    FLOW_CONTROL_ERROR(3, 7, -1),
    STREAM_CLOSED(5, -1, -1),
    FRAME_TOO_LARGE(6, 11, -1),
    REFUSED_STREAM(7, 3, -1),
    CANCEL(8, 5, -1),
    COMPRESSION_ERROR(9, -1, -1),
    INVALID_CREDENTIALS(-1, 10, -1);
    public final int o;
    public final int p;
    public final int q;

    static {
        int i = 0;
        int i2 = 0;
        a = new a("NO_ERROR", 0, 0, -1, 0);
        int i3 = 1;
        int i4 = 1;
        int i5 = 1;
        b = new a("PROTOCOL_ERROR", 1, 1, 1, 1);
        int i6 = 1;
        int i7 = 2;
        int i8 = -1;
        c = new a("INVALID_STREAM", 2, 1, 2, -1);
        i6 = 1;
        i8 = -1;
        d = new a("UNSUPPORTED_VERSION", 3, 1, 4, -1);
        i6 = 1;
        i8 = -1;
        e = new a("STREAM_IN_USE", 4, 1, 8, -1);
        i6 = 1;
        i8 = -1;
        f = new a("STREAM_ALREADY_CLOSED", 5, 1, 9, -1);
        i6 = 2;
        i8 = 2;
        g = new a("INTERNAL_ERROR", 6, 2, 6, 2);
        i6 = 3;
        i8 = -1;
        h = new a("FLOW_CONTROL_ERROR", 7, 3, 7, -1);
        i7 = -1;
        i8 = -1;
        i = new a("STREAM_CLOSED", 8, 5, -1, -1);
        i8 = -1;
        j = new a("FRAME_TOO_LARGE", 9, 6, 11, -1);
        i7 = 3;
        i8 = -1;
        k = new a("REFUSED_STREAM", 10, 7, 3, -1);
        i8 = -1;
        l = new a("CANCEL", 11, 8, 5, -1);
        i7 = -1;
        i8 = -1;
        m = new a("COMPRESSION_ERROR", 12, 9, -1, -1);
        i6 = -1;
        i8 = -1;
        n = new a("INVALID_CREDENTIALS", 13, -1, 10, -1);
        r = new a[]{a, b, c, d, e, f, g, h, i, j, k, l, m, n};
    }

    private a(int i, int i2, int i3) {
        this.o = i;
        this.p = i2;
        this.q = i3;
    }

    public static a a_(int i) {
        a[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            a aVar = values[i2];
            if (aVar.p == i) {
                return aVar;
            }
            i2++;
        }
        return null;
    }

    public static a b(int i) {
        a[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            a aVar = values[i2];
            if (aVar.o == i) {
                return aVar;
            }
            i2++;
        }
        return null;
    }

    public static a c(int i) {
        a[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            a aVar = values[i2];
            if (aVar.q == i) {
                return aVar;
            }
            i2++;
        }
        return null;
    }
}