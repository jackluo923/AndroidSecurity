package me.kiip.internal.d;

import com.admarvel.android.ads.Constants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class c implements Closeable {
    static final Pattern a;
    private static final OutputStream p;
    final ThreadPoolExecutor b;
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private long j;
    private Writer k;
    private final LinkedHashMap l;
    private int m;
    private long n;
    private final Callable o;

    public final class a {
        private final b b;
        private final boolean[] c;
        private boolean d;
        private boolean e;

        private class a extends FilterOutputStream {
            private a(OutputStream outputStream) {
                super(outputStream);
            }

            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    me.kiip.internal.d.c.a.this.d = true;
                }
            }

            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    me.kiip.internal.d.c.a.this.d = true;
                }
            }

            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    me.kiip.internal.d.c.a.this.d = true;
                }
            }

            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    me.kiip.internal.d.c.a.this.d = true;
                }
            }
        }

        private a(b bVar) {
            this.b = bVar;
            this.c = bVar.d ? null : new boolean[c.this.i];
        }

        public OutputStream a_(int i) {
            OutputStream aVar;
            synchronized (c.this) {
                if (this.b.e != this) {
                    throw new IllegalStateException();
                }
                OutputStream outputStream;
                if (!this.b.d) {
                    this.c[i] = true;
                }
                File b = this.b.b(i);
                try {
                    outputStream = new FileOutputStream(b);
                } catch (FileNotFoundException e) {
                    c.this.c.mkdirs();
                    try {
                        outputStream = new FileOutputStream(b);
                    } catch (FileNotFoundException e2) {
                        aVar = p;
                    }
                }
                aVar = new a(outputStream, null);
            }
            return aVar;
        }

        public void a_() {
            if (this.d) {
                c.this.a(this, false);
                c.this.c(this.b.b);
            } else {
                c.this.a(this, true);
            }
            this.e = true;
        }

        public void b() {
            c.this.a(this, false);
        }
    }

    private final class b {
        private final String b;
        private final long[] c;
        private boolean d;
        private me.kiip.internal.d.c.a e;
        private long f;

        private b(String str) {
            this.b = str;
            this.c = new long[c.this.i];
        }

        private void a(String[] strArr) {
            if (strArr.length != c.this.i) {
                throw b(strArr);
            }
            int i = 0;
            while (i < strArr.length) {
                try {
                    this.c[i] = Long.parseLong(strArr[i]);
                    i++;
                } catch (NumberFormatException e) {
                    throw b(strArr);
                }
            }
        }

        private IOException b_(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i) {
            return new File(c.this.c, this.b + "." + i);
        }

        public String a() {
            StringBuilder stringBuilder = new StringBuilder();
            long[] jArr = this.c;
            int length = jArr.length;
            int i = 0;
            while (i < length) {
                stringBuilder.append(' ').append(jArr[i]);
                i++;
            }
            return stringBuilder.toString();
        }

        public File b_(int i) {
            return new File(c.this.c, this.b + "." + i + ".tmp");
        }
    }

    public final class c implements Closeable {
        private final String b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        private c(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }

        public InputStream a(int i) {
            return this.d[i];
        }

        public me.kiip.internal.d.c.a a() {
            return c.this.a(this.b, this.c);
        }

        public void close() {
            InputStream[] inputStreamArr = this.d;
            int length = inputStreamArr.length;
            int i = 0;
            while (i < length) {
                h.a(inputStreamArr[i]);
                i++;
            }
        }
    }

    static {
        a = Pattern.compile("[a-z0-9_-]{1,64}");
        p = new OutputStream() {
            public void write(int i) {
            }
        };
    }

    private c(File file, int i, int i2, long j) {
        this.j = 0;
        this.l = new LinkedHashMap(0, 0.75f, true);
        this.n = 0;
        this.b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.o = new Callable() {
            public Void a() {
                synchronized (c.this) {
                    if (c.this.k == null) {
                    } else {
                        c.this.h();
                        if (c.this.f()) {
                            c.this.e();
                            c.this.m = 0;
                        }
                    }
                }
                return null;
            }

            public /* synthetic */ Object call() {
                return a();
            }
        };
        this.c = file;
        this.g = i;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.i = i2;
        this.h = j;
    }

    private synchronized a a(String str, long j) {
        a aVar;
        g();
        e(str);
        b bVar = (b) this.l.get(str);
        if (j == -1 || (bVar != null && bVar.f == j)) {
            b bVar2;
            if (bVar == null) {
                bVar = new b(str, null);
                this.l.put(str, bVar);
                bVar2 = bVar;
            } else if (bVar.e != null) {
                aVar = null;
            } else {
                bVar2 = bVar;
            }
            aVar = new a(bVar2, null);
            bVar2.e = aVar;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            aVar = null;
        }
        return aVar;
    }

    public static c a(File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    a(file2, file3, false);
                }
            }
            c cVar = new c(file, i, i2, j);
            if (cVar.d.exists()) {
                try {
                    cVar.c();
                    cVar.d();
                    cVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(cVar.d, true), h.d));
                    return cVar;
                } catch (IOException e) {
                    f.a().a("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    cVar.a();
                }
            }
            file.mkdirs();
            cVar = new c(file, i, i2, j);
            cVar.e();
            return cVar;
        }
    }

    private static void a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private synchronized void a(a aVar, boolean z) {
        int i = 0;
        synchronized (this) {
            b a = aVar.b;
            if (a.e != aVar) {
                throw new IllegalStateException();
            }
            if (z) {
                if (!a.d) {
                    int i2 = 0;
                    while (i2 < this.i) {
                        if (!aVar.c[i2]) {
                            aVar.b();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!a.b(i2).exists()) {
                            aVar.b();
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.i) {
                File b = a.b(i);
                if (!z) {
                    a(b);
                } else if (b.exists()) {
                    File a2 = a.a(i);
                    b.renameTo(a2);
                    long j = a.c[i];
                    long length = a2.length();
                    a.c[i] = length;
                    this.j = this.j - j + length;
                }
                i++;
            }
            this.m++;
            a.e = null;
            if ((a.d | z) != 0) {
                a.d = true;
                this.k.write("CLEAN " + a.b + a.a() + '\n');
                if (z) {
                    long j2 = this.n;
                    this.n = 1 + j2;
                    a.f = j2;
                }
            } else {
                this.l.remove(a.b);
                this.k.write("REMOVE " + a.b + '\n');
            }
            this.k.flush();
            if (this.j > this.h || f()) {
                this.b.submit(this.o);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c_() {
        throw new UnsupportedOperationException("Method not decompiled: me.kiip.internal.d.c.c():void");
        /*
        r8 = this;
        r1 = new me.kiip.internal.d.g;
        r0 = new java.io.FileInputStream;
        r2 = r8.d;
        r0.<init>(r2);
        r2 = me.kiip.internal.d.h.d;
        r1.<init>(r0, r2);
        r0 = r1.a();	 Catch:{ all -> 0x008f }
        r2 = r1.a();	 Catch:{ all -> 0x008f }
        r3 = r1.a();	 Catch:{ all -> 0x008f }
        r4 = r1.a();	 Catch:{ all -> 0x008f }
        r5 = r1.a();	 Catch:{ all -> 0x008f }
        r6 = "libcore.io.DiskLruCache";
        r6 = r6.equals(r0);	 Catch:{ all -> 0x008f }
        if (r6 == 0) goto L_0x0052;
    L_0x002a:
        r6 = "1";
        r6 = r6.equals(r2);	 Catch:{ all -> 0x008f }
        if (r6 == 0) goto L_0x0052;
    L_0x0032:
        r6 = r8.g;	 Catch:{ all -> 0x008f }
        r6 = java.lang.Integer.toString(r6);	 Catch:{ all -> 0x008f }
        r3 = r6.equals(r3);	 Catch:{ all -> 0x008f }
        if (r3 == 0) goto L_0x0052;
    L_0x003e:
        r3 = r8.i;	 Catch:{ all -> 0x008f }
        r3 = java.lang.Integer.toString(r3);	 Catch:{ all -> 0x008f }
        r3 = r3.equals(r4);	 Catch:{ all -> 0x008f }
        if (r3 == 0) goto L_0x0052;
    L_0x004a:
        r3 = "";
        r3 = r3.equals(r5);	 Catch:{ all -> 0x008f }
        if (r3 != 0) goto L_0x0094;
    L_0x0052:
        r3 = new java.io.IOException;	 Catch:{ all -> 0x008f }
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x008f }
        r6.<init>();	 Catch:{ all -> 0x008f }
        r7 = "unexpected journal header: [";
        r6 = r6.append(r7);	 Catch:{ all -> 0x008f }
        r0 = r6.append(r0);	 Catch:{ all -> 0x008f }
        r6 = ", ";
        r0 = r0.append(r6);	 Catch:{ all -> 0x008f }
        r0 = r0.append(r2);	 Catch:{ all -> 0x008f }
        r2 = ", ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x008f }
        r0 = r0.append(r4);	 Catch:{ all -> 0x008f }
        r2 = ", ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x008f }
        r0 = r0.append(r5);	 Catch:{ all -> 0x008f }
        r2 = "]";
        r0 = r0.append(r2);	 Catch:{ all -> 0x008f }
        r0 = r0.toString();	 Catch:{ all -> 0x008f }
        r3.<init>(r0);	 Catch:{ all -> 0x008f }
        throw r3;	 Catch:{ all -> 0x008f }
    L_0x008f:
        r0 = move-exception;
        me.kiip.internal.d.h.a(r1);
        throw r0;
    L_0x0094:
        r0 = 0;
    L_0x0095:
        r2 = r1.a();	 Catch:{ EOFException -> 0x009f }
        r8.d(r2);	 Catch:{ EOFException -> 0x009f }
        r0 = r0 + 1;
        goto L_0x0095;
    L_0x009f:
        r2 = move-exception;
        r2 = r8.l;	 Catch:{ all -> 0x008f }
        r2 = r2.size();	 Catch:{ all -> 0x008f }
        r0 = r0 - r2;
        r8.m = r0;	 Catch:{ all -> 0x008f }
        me.kiip.internal.d.h.a(r1);
        return;
        */
    }

    private void d() {
        a(this.e);
        Iterator it = this.l.values().iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            int i;
            if (bVar.e == null) {
                i = 0;
                while (i < this.i) {
                    this.j += bVar.c[i];
                    i++;
                }
            } else {
                bVar.e = null;
                i = 0;
                while (i < this.i) {
                    a(bVar.a(i));
                    a(bVar.b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    private void d(String str) {
        int indexOf = str.indexOf(ApiEventType.API_MRAID_PLAY_AUDIO);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        String str2;
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(ApiEventType.API_MRAID_PLAY_AUDIO, i);
        if (indexOf2 == -1) {
            String substring = str.substring(i);
            if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.l.remove(substring);
                return;
            } else {
                str2 = substring;
            }
        } else {
            str2 = str.substring(i, indexOf2);
        }
        b bVar = (b) this.l.get(str2);
        if (bVar == null) {
            bVar = new b(str2, null);
            this.l.put(str2, bVar);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            bVar.d = true;
            bVar.e = null;
            bVar.a(split);
        } else if (indexOf2 == -1 && indexOf == "DIRTY".length() && str.startsWith("DIRTY")) {
            bVar.e = new a(bVar, null);
        } else if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    private synchronized void e() {
        try {
            if (this.k != null) {
                this.k.close();
            }
            Writer bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), h.d));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(Constants.FORMATTER);
            bufferedWriter.write("1");
            bufferedWriter.write(Constants.FORMATTER);
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write(Constants.FORMATTER);
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write(Constants.FORMATTER);
            bufferedWriter.write(Constants.FORMATTER);
            Iterator it = this.l.values().iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar.e != null) {
                    bufferedWriter.write("DIRTY " + bVar.b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + bVar.b + bVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.d.exists()) {
                a(this.d, this.f, true);
            }
            a(this.e, this.d, false);
            this.f.delete();
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), h.d));
        } catch (Throwable th) {
        }
    }

    private void e(String str) {
        if (!a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    private boolean f() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    private void g() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private void h() {
        while (this.j > this.h) {
            c((String) ((Entry) this.l.entrySet().iterator().next()).getKey());
        }
    }

    public synchronized c a(String str) {
        c cVar;
        g();
        e(str);
        b bVar = (b) this.l.get(str);
        if (bVar == null) {
            cVar = null;
        } else if (bVar.d) {
            InputStream[] inputStreamArr = new InputStream[this.i];
            int i = 0;
            while (i < this.i) {
                try {
                    inputStreamArr[i] = new FileInputStream(bVar.a(i));
                    i++;
                } catch (FileNotFoundException e) {
                    i = 0;
                    while (i < this.i && inputStreamArr[i] != null) {
                        h.a(inputStreamArr[i]);
                        i++;
                    }
                    cVar = null;
                }
            }
            this.m++;
            this.k.append("READ " + str + '\n');
            if (f()) {
                this.b.submit(this.o);
            }
            cVar = new c(str, bVar.f, inputStreamArr, bVar.c, null);
        } else {
            cVar = null;
        }
        return cVar;
    }

    public void a() {
        close();
        h.a(this.c);
    }

    public a b(String str) {
        return a(str, -1);
    }

    public synchronized boolean c_(String str) {
        boolean z;
        int i = 0;
        synchronized (this) {
            g();
            e(str);
            b bVar = (b) this.l.get(str);
            if (bVar == null || bVar.e != null) {
                z = false;
            } else {
                while (i < this.i) {
                    File a = bVar.a(i);
                    if (a.delete()) {
                        this.j -= bVar.c[i];
                        bVar.c[i] = 0;
                        i++;
                    } else {
                        throw new IOException("failed to delete " + a);
                    }
                }
                this.m++;
                this.k.append("REMOVE " + str + '\n');
                this.l.remove(str);
                if (f()) {
                    this.b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    public synchronized void close() {
        if (this.k != null) {
            Iterator it = new ArrayList(this.l.values()).iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar.e != null) {
                    bVar.e.b();
                }
            }
            h();
            this.k.close();
            this.k = null;
        }
    }
}