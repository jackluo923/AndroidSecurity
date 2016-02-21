package me.kiip.internal.b;

import android.os.SystemClock;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import me.kiip.internal.a.t;

public class c implements me.kiip.internal.a.b {
    private final Map a;
    private long b;
    private final File c;
    private final int d;

    private static class a {
        public long a;
        public String b;
        public String c;
        public long d;
        public long e;
        public long f;
        public Map g;

        private a() {
        }

        public a(String str, me.kiip.internal.a.b.a aVar) {
            this.b = str;
            this.a = (long) aVar.a.length;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
        }

        private static Map a_(ObjectInputStream objectInputStream) {
            Map emptyMap;
            int readInt = objectInputStream.readInt();
            emptyMap = readInt == 0 ? Collections.emptyMap() : new HashMap(readInt);
            int i = 0;
            while (i < readInt) {
                emptyMap.put(objectInputStream.readUTF().intern(), objectInputStream.readUTF().intern());
                i++;
            }
            return emptyMap;
        }

        public static a a_(InputStream inputStream) {
            a aVar = new a();
            ObjectInputStream objectInputStream = new ObjectInputStream(inputStream);
            if (objectInputStream.readByte() != (byte) 2) {
                throw new IOException();
            }
            aVar.b = objectInputStream.readUTF();
            aVar.c = objectInputStream.readUTF();
            if (aVar.c.equals(AdTrackerConstants.BLANK)) {
                aVar.c = null;
            }
            aVar.d = objectInputStream.readLong();
            aVar.e = objectInputStream.readLong();
            aVar.f = objectInputStream.readLong();
            aVar.g = a(objectInputStream);
            return aVar;
        }

        private static void a_(Map map, ObjectOutputStream objectOutputStream) {
            if (map != null) {
                objectOutputStream.writeInt(map.size());
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    objectOutputStream.writeUTF((String) entry.getKey());
                    objectOutputStream.writeUTF((String) entry.getValue());
                }
            } else {
                objectOutputStream.writeInt(0);
            }
        }

        public me.kiip.internal.a.b.a a_(byte[] bArr) {
            me.kiip.internal.a.b.a aVar = new me.kiip.internal.a.b.a();
            aVar.a = bArr;
            aVar.b = this.c;
            aVar.c = this.d;
            aVar.d = this.e;
            aVar.e = this.f;
            aVar.f = this.g;
            return aVar;
        }

        public boolean a_(OutputStream outputStream) {
            boolean z = true;
            boolean z2 = false;
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
                objectOutputStream.writeByte(GoogleScorer.CLIENT_PLUS);
                objectOutputStream.writeUTF(this.b);
                objectOutputStream.writeUTF(this.c == null ? AdTrackerConstants.BLANK : this.c);
                objectOutputStream.writeLong(this.d);
                objectOutputStream.writeLong(this.e);
                objectOutputStream.writeLong(this.f);
                a(this.g, objectOutputStream);
                objectOutputStream.flush();
                return z;
            } catch (IOException e) {
                String str = "%s";
                Object[] objArr = new Object[z];
                objArr[z2] = e.toString();
                t.b(str, objArr);
                return z2;
            }
        }
    }

    private static class b extends FilterInputStream {
        private int a;

        private b(InputStream inputStream) {
            super(inputStream);
            this.a = 0;
        }

        public int read() {
            int read = super.read();
            if (read != -1) {
                this.a++;
            }
            return read;
        }

        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.a += read;
            }
            return read;
        }
    }

    public c(File file) {
        this(file, 5242880);
    }

    public c(File file, int i) {
        this.a = new LinkedHashMap(16, 0.75f, true);
        this.b = 0;
        this.c = file;
        this.d = i;
    }

    private void a(int i) {
        if (this.b + ((long) i) >= ((long) this.d)) {
            int i2;
            if (t.b) {
                t.a("Pruning old cache entries.", new Object[0]);
            }
            long j = this.b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator it = this.a.entrySet().iterator();
            int i3 = 0;
            while (it.hasNext()) {
                a aVar = (a) ((Entry) it.next()).getValue();
                if (c(aVar.b).delete()) {
                    this.b -= aVar.a;
                } else {
                    t.b("Could not delete cache entry for key=%s, filename=%s", new Object[]{aVar.b, d(aVar.b)});
                }
                it.remove();
                i2 = i3 + 1;
                if (((float) (this.b + ((long) i))) < ((float) this.d) * 0.9f) {
                    break;
                }
                i3 = i2;
            }
            i2 = i3;
            if (t.b) {
                t.a("pruned %d files, %d bytes, %d ms", new Object[]{Integer.valueOf(i2), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime)});
            }
        }
    }

    private void a(String str, a aVar) {
        if (this.a.containsKey(str)) {
            this.b += aVar.a - ((a) this.a.get(str)).a;
        } else {
            this.b += aVar.a;
        }
        this.a.put(str, aVar);
    }

    private static byte[] a(InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    private String d(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private void e(String str) {
        a aVar = (a) this.a.get(str);
        if (aVar != null) {
            this.b -= aVar.a;
            this.a.remove(str);
        }
    }

    public synchronized me.kiip.internal.a.b.a a(String str) {
        me.kiip.internal.a.b.a aVar;
        IOException iOException;
        b bVar;
        Throwable th;
        a aVar2 = (a) this.a.get(str);
        if (aVar2 == null) {
            aVar = null;
        } else {
            File c = c(str);
            try {
                InputStream bVar2 = new b(null);
                try {
                    a.a(bVar2);
                    aVar = aVar2.a(a(bVar2, (int) (c.length() - ((long) bVar2.a))));
                    if (bVar2 != null) {
                        try {
                            bVar2.close();
                        } catch (IOException e) {
                            aVar = null;
                        }
                    }
                } catch (IOException e2) {
                    iOException = e2;
                    t.b("%s: %s", new Object[]{c.getAbsolutePath(), iOException.toString()});
                    b(str);
                    if (bVar != null) {
                        bVar.close();
                    }
                    aVar = null;
                    return aVar;
                }
            } catch (IOException e3) {
                iOException = e3;
                bVar = null;
                try {
                    t.b("%s: %s", new Object[]{c.getAbsolutePath(), iOException.toString()});
                    b(str);
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e4) {
                            aVar = null;
                        }
                    }
                    aVar = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (bVar != null) {
                        bVar.close();
                    }
                    throw th;
                }
                return aVar;
            } catch (Throwable th3) {
                th = th3;
                bVar = null;
                if (bVar != null) {
                    try {
                        bVar.close();
                    } catch (IOException e5) {
                        aVar = null;
                    }
                }
                throw th;
            }
        }
        return aVar;
    }

    public synchronized void a() {
        throw new UnsupportedOperationException("Method not decompiled: me.kiip.internal.b.c.a():void");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Try/catch wrap count limit reached in me.kiip.internal.b.c.a():void
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:52)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:40)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r9 = this;
        r0 = 0;
        monitor-enter(r9);
        r1 = r9.c;	 Catch:{ all -> 0x0067 }
        r1 = r1.exists();	 Catch:{ all -> 0x0067 }
        if (r1 != 0) goto L_0x0025;
    L_0x000a:
        r0 = r9.c;	 Catch:{ all -> 0x0067 }
        r0 = r0.mkdirs();	 Catch:{ all -> 0x0067 }
        if (r0 != 0) goto L_0x0023;
    L_0x0012:
        r0 = "Unable to create cache dir %s";
        r1 = 1;
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x0067 }
        r2 = 0;
        r3 = r9.c;	 Catch:{ all -> 0x0067 }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x0067 }
        r1[r2] = r3;	 Catch:{ all -> 0x0067 }
        me.kiip.internal.a.t.c(r0, r1);	 Catch:{ all -> 0x0067 }
    L_0x0023:
        monitor-exit(r9);
        return;
    L_0x0025:
        r1 = r9.c;	 Catch:{ all -> 0x0067 }
        r3 = r1.listFiles();	 Catch:{ all -> 0x0067 }
        if (r3 == 0) goto L_0x0023;
    L_0x002d:
        r4 = r3.length;	 Catch:{ all -> 0x0067 }
        r2 = r0;
    L_0x002f:
        if (r2 >= r4) goto L_0x0023;
    L_0x0031:
        r5 = r3[r2];	 Catch:{ all -> 0x0067 }
        r1 = 0;
        r0 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0051, all -> 0x0060 }
        r0.<init>(r5);	 Catch:{ IOException -> 0x0051, all -> 0x0060 }
        r1 = me.kiip.internal.b.c.a.a(r0);	 Catch:{ IOException -> 0x0073 }
        r6 = r5.length();	 Catch:{ IOException -> 0x0073 }
        r1.a = r6;	 Catch:{ IOException -> 0x0073 }
        r6 = r1.b;	 Catch:{ IOException -> 0x0073 }
        r9.a(r6, r1);	 Catch:{ IOException -> 0x0073 }
        if (r0 == 0) goto L_0x004d;
    L_0x004a:
        r0.close();	 Catch:{ IOException -> 0x006a }
    L_0x004d:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x002f;
    L_0x0051:
        r0 = move-exception;
        r0 = r1;
    L_0x0053:
        if (r5 == 0) goto L_0x0058;
    L_0x0055:
        r5.delete();	 Catch:{ all -> 0x006e }
    L_0x0058:
        if (r0 == 0) goto L_0x004d;
    L_0x005a:
        r0.close();	 Catch:{ IOException -> 0x005e }
        goto L_0x004d;
    L_0x005e:
        r0 = move-exception;
        goto L_0x004d;
    L_0x0060:
        r0 = move-exception;
    L_0x0061:
        if (r1 == 0) goto L_0x0066;
    L_0x0063:
        r1.close();	 Catch:{ IOException -> 0x006c }
    L_0x0066:
        throw r0;	 Catch:{ all -> 0x0067 }
    L_0x0067:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
    L_0x006a:
        r0 = move-exception;
        goto L_0x004d;
    L_0x006c:
        r1 = move-exception;
        goto L_0x0066;
    L_0x006e:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0061;
    L_0x0073:
        r1 = move-exception;
        goto L_0x0053;
        */
    }

    public synchronized void a(String str, me.kiip.internal.a.b.a aVar) {
        a(aVar.a.length);
        File c = c(str);
        try {
            OutputStream fileOutputStream = new FileOutputStream(c);
            a aVar2 = new a(str, aVar);
            aVar2.a(fileOutputStream);
            fileOutputStream.write(aVar.a);
            fileOutputStream.close();
            a(str, aVar2);
        } catch (IOException e) {
            if (!c.delete()) {
                t.b("Could not clean up file %s", new Object[]{c.getAbsolutePath()});
            }
        }
    }

    public synchronized void b(String str) {
        boolean delete = c(str).delete();
        e(str);
        if (!delete) {
            t.b("Could not delete cache entry for key=%s, filename=%s", new Object[]{str, d(str)});
        }
    }

    public File c_(String str) {
        return new File(this.c, d(str));
    }
}