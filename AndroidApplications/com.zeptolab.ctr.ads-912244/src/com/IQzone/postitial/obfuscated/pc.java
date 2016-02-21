package com.IQzone.postitial.obfuscated;

import java.io.File;
import java.io.InputStream;

public class pc implements ou {
    private static final ql a;
    private final pb b;

    static {
        a = new ql();
    }

    public pc(File file, File file2) {
        file.mkdirs();
        if (file.isDirectory()) {
            this.b = new pb(new File(file, "hash"), new pd(new File(file, i.a), file2, new ot()), 1000);
        } else {
            throw new IllegalArgumentException("Invalid data folder");
        }
    }

    private boolean a(String str) {
        try {
            return this.b.a(str) != null;
        } catch (oi e) {
            Exception exception = e;
            ql qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (ok e2) {
            exception = e2;
            qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (oj e3) {
            throw new om("ERROR", e3);
        }
    }

    private InputStream b(String str) {
        try {
            return (InputStream) this.b.a(str);
        } catch (oi e) {
            Exception exception = e;
            ql qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (ok e2) {
            exception = e2;
            qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (oj e3) {
            exception = e3;
            qlVar = a;
            throw new om("ERROR", exception);
        }
    }

    public final /* synthetic */ Object a(Object obj) {
        return b((String) obj);
    }

    public final void a() {
        try {
            this.b.a();
        } catch (oj e) {
            throw new om("ERROR", e);
        }
    }

    public final /* synthetic */ void a(Object obj, Object obj2) {
        try {
            this.b.a((String) obj, (InputStream) obj2);
        } catch (ok e) {
            Exception exception = e;
            ql qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (oi e2) {
            exception = e2;
            qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (oj e3) {
            throw new om("ERROR", e3);
        }
    }

    public final /* synthetic */ boolean b(Object obj) {
        return a((String) obj);
    }

    public final /* synthetic */ void c(Object obj) {
        try {
            this.b.b((String) obj);
        } catch (oi e) {
            Exception exception = e;
            ql qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (ok e2) {
            exception = e2;
            qlVar = a;
            a();
            throw new om("ERROR", exception);
        } catch (oj e3) {
            throw new om("ERROR", e3);
        }
    }
}