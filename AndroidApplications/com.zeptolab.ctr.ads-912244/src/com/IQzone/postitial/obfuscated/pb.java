package com.IQzone.postitial.obfuscated;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class pb {
    private static final ql a;
    private final int b;
    private final File c;
    private final oo d;
    private final pg e;

    static {
        a = new ql();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public pb(java.io.File r5, com.IQzone.postitial.obfuscated.pg r6, int r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.pb.<init>(java.io.File, com.IQzone.postitial.obfuscated.pg, int):void");
        /*
        r4 = this;
        r4.<init>();
        r0 = new com.IQzone.postitial.obfuscated.on;
        r0.<init>();
        r4.d = r0;
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r4.b = r0;
        r0 = r5.isDirectory();
        if (r0 == 0) goto L_0x001c;
    L_0x0014:
        r0 = new java.lang.RuntimeException;
        r1 = "hash file location must not be a directory";
        r0.<init>(r1);
        throw r0;
    L_0x001c:
        r4.e = r6;
        r4.c = r5;
        r0 = r5.exists();
        if (r0 != 0) goto L_0x0044;
    L_0x0026:
        r1 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x004a, IOException -> 0x0055 }
        r1.<init>(r5);	 Catch:{ FileNotFoundException -> 0x004a, IOException -> 0x0055 }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r2 = new byte[r0];	 Catch:{ all -> 0x0045 }
        r0 = -1;
        java.util.Arrays.fill(r2, r0);	 Catch:{ all -> 0x0045 }
        r0 = 0;
    L_0x0034:
        r3 = 4000; // 0xfa0 float:5.605E-42 double:1.9763E-320;
        if (r0 >= r3) goto L_0x003e;
    L_0x0038:
        r1.write(r2);	 Catch:{ all -> 0x0045 }
        r0 = r0 + 1024;
        goto L_0x0034;
    L_0x003e:
        r1.flush();	 Catch:{ all -> 0x0045 }
        r1.close();	 Catch:{ FileNotFoundException -> 0x004a, IOException -> 0x0055 }
    L_0x0044:
        return;
    L_0x0045:
        r0 = move-exception;
        r1.close();	 Catch:{ FileNotFoundException -> 0x004a, IOException -> 0x0055 }
        throw r0;	 Catch:{ FileNotFoundException -> 0x004a, IOException -> 0x0055 }
    L_0x004a:
        r0 = move-exception;
        r1 = a;
        r1 = new java.lang.RuntimeException;
        r2 = "failed to establish file hash";
        r1.<init>(r2, r0);
        throw r1;
    L_0x0055:
        r0 = move-exception;
        r1 = a;
        r1 = new java.lang.RuntimeException;
        r2 = "failed to establish file hash 2";
        r1.<init>(r2, r0);
        throw r1;
        */
    }

    public final Object a(Object obj) {
        int abs = (Math.abs(obj.hashCode()) % this.b) << 2;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.c, "rws");
            Object obj2 = new Object[4];
            randomAccessFile.seek((long) abs);
            if (randomAccessFile.read(obj2) <= 0) {
                throw new RuntimeException("hash was not initialized properly");
            }
            Object value;
            abs = ((Integer) this.d.b(obj2)).intValue();
            if (abs >= 0) {
                Set a = this.e.a(abs);
                if (a != null) {
                    Iterator it = a.iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        if (entry.getKey().equals(obj)) {
                            value = entry.getValue();
                            break;
                        }
                    }
                } else {
                    throw new oi("there should have been blobs at blobIndex");
                }
            }
            value = null;
            randomAccessFile.close();
            return value;
        } catch (FileNotFoundException e) {
            throw new oi("read value != written value");
        } catch (IOException e2) {
            Throwable th = e2;
            ql qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        } catch (om e3) {
            th = e3;
            qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        }
    }

    public final void a() {
        int i = 0;
        while (i < this.b) {
            int i2 = i << 2;
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.c, "rws");
                Object obj = new Object[4];
                randomAccessFile.seek((long) i2);
                if (randomAccessFile.read(obj) <= 0) {
                    throw new RuntimeException("hash was not initialized properly");
                }
                int intValue = ((Integer) this.d.b(obj)).intValue();
                if (intValue >= 0) {
                    this.e.b(intValue);
                    byte[] bArr = (byte[]) this.d.a(Integer.valueOf(-1));
                    randomAccessFile.seek((long) i2);
                    randomAccessFile.write(bArr);
                }
                randomAccessFile.close();
                i++;
            } catch (FileNotFoundException e) {
                Throwable th = e;
                ql qlVar = a;
                throw new RuntimeException("failed hash blob", th);
            } catch (IOException e2) {
                th = e2;
                qlVar = a;
                throw new RuntimeException("failed hash blob", th);
            } catch (om e3) {
                th = e3;
                qlVar = a;
                throw new RuntimeException("failed hash blob", th);
            }
        }
        this.e.a();
    }

    public final void a(Object obj, Object obj2) {
        int abs = (Math.abs(obj.hashCode()) % this.b) << 2;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.c, "rws");
            Object obj3 = new Object[4];
            randomAccessFile.seek((long) abs);
            if (randomAccessFile.read(obj3) <= 0) {
                throw new RuntimeException("hash was not initialized properly");
            }
            Entry entry;
            int intValue = ((Integer) this.d.b(obj3)).intValue();
            Set hashSet = new HashSet();
            if (intValue >= 0) {
                Collection a = this.e.a(intValue);
                if (a != null) {
                    hashSet.addAll(a);
                }
            }
            Object obj4 = null;
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Entry entry2 = (Entry) it.next();
                if (!entry2.getKey().equals(obj)) {
                    entry2 = entry;
                }
                entry = entry2;
            }
            hashSet.remove(entry);
            hashSet.add(new og(obj, obj2));
            int a2 = this.e.a(intValue, hashSet);
            if (a2 != intValue) {
                byte[] bArr = (byte[]) this.d.a(Integer.valueOf(a2));
                randomAccessFile.seek((long) abs);
                randomAccessFile.write(bArr);
            }
            randomAccessFile.close();
        } catch (FileNotFoundException e) {
            Throwable th = e;
            ql qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        } catch (IOException e2) {
            th = e2;
            qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        } catch (om e3) {
            th = e3;
            qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        }
    }

    public final void b(Object obj) {
        int abs = (Math.abs(obj.hashCode()) % this.b) << 2;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.c, "rws");
            Object obj2 = new Object[4];
            randomAccessFile.seek((long) abs);
            if (randomAccessFile.read(obj2) <= 0) {
                throw new RuntimeException("hash was not initialized properly");
            }
            int intValue = ((Integer) this.d.b(obj2)).intValue();
            if (intValue >= 0) {
                byte[] bArr;
                Set a = this.e.a(intValue);
                if (a == null) {
                    bArr = (byte[]) this.d.a(Integer.valueOf(-1));
                    randomAccessFile.seek((long) abs);
                    randomAccessFile.write(bArr);
                    obj2 = null;
                } else {
                    Iterator it = a.iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        if (entry.getKey().equals(obj)) {
                            break;
                        }
                    }
                    obj2 = null;
                }
                if (obj2 != null) {
                    a.remove(obj2);
                    if (a.size() == 0) {
                        this.e.b(intValue);
                        bArr = (byte[]) this.d.a(Integer.valueOf(-1));
                        randomAccessFile.seek((long) abs);
                        randomAccessFile.write(bArr);
                    } else {
                        this.e.a(intValue, a);
                    }
                }
            }
            randomAccessFile.close();
        } catch (FileNotFoundException e) {
            Throwable th = e;
            ql qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        } catch (IOException e2) {
            th = e2;
            qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        } catch (om e3) {
            th = e3;
            qlVar = a;
            throw new RuntimeException("failed hash blob", th);
        }
    }
}