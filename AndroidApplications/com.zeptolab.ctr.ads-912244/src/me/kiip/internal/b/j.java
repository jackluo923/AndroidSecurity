package me.kiip.internal.b;

import java.io.UnsupportedEncodingException;
import me.kiip.internal.a.l;
import me.kiip.internal.a.n.a;
import me.kiip.internal.a.n.b;
import me.kiip.internal.a.t;

public abstract class j extends l {
    private static final String a;
    private final b b;
    private final String c;

    static {
        a = String.format("application/json; charset=%s", new Object[]{"utf-8"});
    }

    public j(int i, String str, String str2, b bVar, a aVar) {
        super(i, str, aVar);
        this.b = bVar;
        this.c = str2;
    }

    protected void a(Object obj) {
        this.b.a(obj);
    }

    public String j_() {
        return n();
    }

    public byte[] k() {
        return o();
    }

    public String n() {
        return a;
    }

    public byte[] o() {
        byte[] bArr = null;
        try {
            return this.c == null ? bArr : this.c.getBytes("utf-8");
        } catch (UnsupportedEncodingException e) {
            t.d("Unsupported Encoding while trying to get the bytes of %s using %s", new Object[]{this.c, "utf-8"});
            return bArr;
        }
    }
}