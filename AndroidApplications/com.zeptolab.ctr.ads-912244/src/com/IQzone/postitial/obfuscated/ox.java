package com.IQzone.postitial.obfuscated;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.TreeSet;

@Deprecated
public final class ox implements ou {
    private final TreeSet a;
    private final File b;
    private final long c;
    private final pa d;
    private final long e;
    private long f;

    public ox(File file, long j, long j2) {
        this.a = new TreeSet(new oy(this));
        this.d = new pa();
        this.f = 0;
        this.b = file;
        this.c = -1;
        this.e = 200000;
    }

    private static final File a(File file, String str) {
        return new File(file, str);
    }

    private InputStream a(String str) {
        b();
        File a = a(this.b, str);
        try {
            long currentTimeMillis = System.currentTimeMillis() - a.lastModified();
            if (!a.exists() || (this.c > 0 && currentTimeMillis >= this.c)) {
                if (a.exists() && this.c > 0 && currentTimeMillis > this.c) {
                    this.d.a(a.length());
                    this.a.remove(a);
                    a.delete();
                }
                return null;
            } else {
                try {
                    InputStream fileInputStream = new FileInputStream(a);
                    try {
                        a.setLastModified(System.currentTimeMillis());
                        this.a.add(a);
                        File a2 = a(this.b, str + "TeMPoRaRy_FILE");
                        OutputStream fileOutputStream = new FileOutputStream(a2);
                        fh.a(fileInputStream, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        InputStream ozVar = new oz(this, new FileInputStream(a2), a2);
                        fileInputStream.close();
                        return ozVar;
                    } catch (Throwable th) {
                    }
                } catch (FileNotFoundException e) {
                    throw new RuntimeException("<FileCache><3>, This cannot happen");
                }
            }
        } catch (IOException e2) {
            throw new RuntimeException("<FileCache><4>, This shouldn't happen", e2);
        }
    }

    private boolean b() {
        if (!this.b.exists()) {
            this.b.mkdirs();
        } else if (!this.b.isDirectory()) {
            throw new IllegalArgumentException("<FileCache><1>, Cache location already exists and it is not a directory");
        } else if (this.b.lastModified() != this.f) {
            this.d.a = 0;
            this.a.clear();
            File[] listFiles = this.b.listFiles();
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                File file = listFiles[i];
                this.d.a += file.length();
                this.a.add(file);
                i++;
            }
        }
        return true;
    }

    private void c() {
        if (this.e >= 0) {
            while (this.d.a > this.e) {
                if (this.a.size() <= 0) {
                    throw new RuntimeException("<FileCache><2>, Cache thinks it is bigger than max size but contains zero files.");
                }
                File file = (File) this.a.last();
                this.a.remove(file);
                this.d.a(file.length());
                file.delete();
            }
        }
    }

    public final void a() {
        this.d.a = 0;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
        this.a.clear();
        this.f = this.b.lastModified();
    }

    public final /* synthetic */ void a(Object obj, Object obj2) {
        String str = (String) obj;
        InputStream inputStream = (InputStream) obj2;
        b();
        File a = a(this.b, str);
        try {
            if (a.exists()) {
                this.d.a(a.length());
                this.a.remove(a);
                a.delete();
            }
            OutputStream fileOutputStream = new FileOutputStream(a, false);
            fh.a(inputStream, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            this.f = this.b.lastModified();
            a = a(this.b, str);
            pa paVar = this.d;
            paVar.a = a.length() + paVar.a;
            this.a.add(a);
            c();
        } catch (IOException e) {
            throw new RuntimeException("<FileCache><5>, This shouldn't happen", e);
        }
    }

    public final /* synthetic */ boolean b(Object obj) {
        String str = (String) obj;
        b();
        return a(this.b, str).exists();
    }

    public final /* synthetic */ void c(Object obj) {
        File a = a(this.b, (String) obj);
        if (a.exists()) {
            a.delete();
            this.f = this.b.lastModified();
        }
    }
}