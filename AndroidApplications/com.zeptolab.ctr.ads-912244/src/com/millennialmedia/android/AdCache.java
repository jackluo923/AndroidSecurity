package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

final class AdCache {
    static final int a = 1;
    static final int b = 2;
    static final int c = 3;
    static boolean d = false;
    private static final String e = "ad.dat";
    private static final String f = "ad.lock";
    private static final String g = "nextCachedAd_";
    private static final String h = "incompleteDownload_";
    private static final String i = "nextCachedAd_apids";
    private static final String j = "AdCache";
    private static final String k = ".mmsyscache";
    private static Set l;
    private static String m;
    private static boolean n;
    private static Map o;
    private static Set p;
    private static boolean q;
    private static Map r;
    private static boolean s;

    static class Iterator {
        static final int c = 0;
        static final int d = 1;
        static final int e = 2;

        Iterator() {
        }

        void a() {
        }

        boolean a(CachedAd cachedAd) {
            return false;
        }

        boolean a(String str) {
            return false;
        }

        boolean a(String str, int i, Date date, String str2, long j, ObjectInputStream objectInputStream) {
            return false;
        }
    }

    final class AnonymousClass_1 extends Iterator {
        final /* synthetic */ Context a;
        final /* synthetic */ Set b;

        AnonymousClass_1(Context context, Set set) {
            this.a = context;
            this.b = set;
        }

        boolean a(CachedAd cachedAd) {
            if (cachedAd.e != null && cachedAd.c() == 1 && cachedAd.d(this.a)) {
                this.b.add(cachedAd.e);
            }
            return true;
        }
    }

    final class AnonymousClass_3 implements Runnable {
        final /* synthetic */ Context a;

        AnonymousClass_3(Context context) {
            this.a = context;
        }

        public void run() {
            MMLog.b(j, j);
            AdCache.c(this.a);
            AdCache.d(this.a);
        }
    }

    final class AnonymousClass_5 extends Iterator {
        final /* synthetic */ Context a;

        AnonymousClass_5(Context context) {
            this.a = context;
        }

        boolean a(CachedAd cachedAd) {
            MMLog.b(j, String.format("Deleting ad %s.", new Object[]{cachedAd.e()}));
            cachedAd.c(this.a);
            return true;
        }
    }

    static interface AdCacheTaskListener {
        void downloadCompleted(CachedAd cachedAd, boolean z);

        void downloadStart(CachedAd cachedAd);
    }

    static {
        d = true;
    }

    private AdCache() {
    }

    static synchronized String a(Context context) {
        String str;
        synchronized (AdCache.class) {
            if (m == null) {
                if (!n) {
                    Set hashSet = new HashSet();
                    a(context, (int)b, new AnonymousClass_1(context, hashSet));
                    l = hashSet;
                    n = true;
                }
                if (l != null && l.size() > 0) {
                    StringBuilder stringBuilder = new StringBuilder();
                    java.util.Iterator it = l.iterator();
                    while (it.hasNext()) {
                        str = (String) it.next();
                        if (stringBuilder.length() > 0) {
                            stringBuilder.append("," + str);
                        } else {
                            stringBuilder.append(str);
                        }
                    }
                    m = stringBuilder.toString();
                }
            }
            str = m;
        }
        return str;
    }

    static void a(android.content.Context r12, int r13, com.millennialmedia.android.AdCache.Iterator r14) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.AdCache.a(android.content.Context, int, com.millennialmedia.android.AdCache$Iterator):void");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Try/catch wrap count limit reached in com.millennialmedia.android.AdCache.a(android.content.Context, int, com.millennialmedia.android.AdCache$Iterator):void
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
        r0 = h(r12);
        r7 = 0;
        if (r0 == 0) goto L_0x0048;
    L_0x0007:
        r1 = new com.millennialmedia.android.AdCache$2;
        r1.<init>();
        r9 = r0.listFiles(r1);
        if (r9 == 0) goto L_0x0048;
    L_0x0012:
        r10 = r9.length;
        r0 = 0;
        r8 = r0;
        r0 = r7;
    L_0x0016:
        if (r8 >= r10) goto L_0x0048;
    L_0x0018:
        r11 = r9[r8];
        if (r11 == 0) goto L_0x0022;
    L_0x001c:
        r1 = r11.exists();	 Catch:{ Exception -> 0x0116 }
        if (r1 != 0) goto L_0x0037;
    L_0x0022:
        if (r0 == 0) goto L_0x0118;
    L_0x0024:
        r0.close();	 Catch:{ IOException -> 0x002d }
        r7 = 0;
    L_0x0028:
        r0 = r8 + 1;
        r8 = r0;
        r0 = r7;
        goto L_0x0016;
    L_0x002d:
        r1 = move-exception;
        r2 = "AdCache";
        r3 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        r7 = r0;
        goto L_0x0028;
    L_0x0037:
        if (r13 != 0) goto L_0x0066;
    L_0x0039:
        r1 = r11.getName();	 Catch:{ Exception -> 0x0116 }
        r1 = r14.a(r1);	 Catch:{ Exception -> 0x0116 }
        if (r1 != 0) goto L_0x0055;
    L_0x0043:
        if (r0 == 0) goto L_0x0048;
    L_0x0045:
        r0.close();	 Catch:{ IOException -> 0x004c }
    L_0x0048:
        r14.a();
        return;
    L_0x004c:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        goto L_0x0048;
    L_0x0055:
        if (r0 == 0) goto L_0x0118;
    L_0x0057:
        r0.close();	 Catch:{ IOException -> 0x005c }
        r7 = 0;
        goto L_0x0028;
    L_0x005c:
        r1 = move-exception;
        r2 = "AdCache";
        r3 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        r7 = r0;
        goto L_0x0028;
    L_0x0066:
        r7 = new java.io.ObjectInputStream;	 Catch:{ Exception -> 0x0116 }
        r1 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0116 }
        r1.<init>(r11);	 Catch:{ Exception -> 0x0116 }
        r7.<init>(r1);	 Catch:{ Exception -> 0x0116 }
        r2 = r7.readInt();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r3 = r7.readObject();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r3 = (java.util.Date) r3;	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r4 = r7.readObject();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r4 = (java.lang.String) r4;	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r5 = r7.readLong();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r0 = 1;
        if (r13 != r0) goto L_0x00a5;
    L_0x0087:
        r1 = r11.getName();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r0 = r14;
        r0 = r0.a(r1, r2, r3, r4, r5, r7);	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        if (r0 != 0) goto L_0x00c4;
    L_0x0092:
        r7.close();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r0 = 0;
        if (r0 == 0) goto L_0x0048;
    L_0x0098:
        r0.close();	 Catch:{ IOException -> 0x009c }
        goto L_0x0048;
    L_0x009c:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        goto L_0x0048;
    L_0x00a5:
        r0 = r7.readObject();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r0 = (com.millennialmedia.android.CachedAd) r0;	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r0 = r14.a(r0);	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        if (r0 != 0) goto L_0x00c4;
    L_0x00b1:
        r7.close();	 Catch:{ Exception -> 0x00d6, all -> 0x0102 }
        r0 = 0;
        if (r0 == 0) goto L_0x0048;
    L_0x00b7:
        r0.close();	 Catch:{ IOException -> 0x00bb }
        goto L_0x0048;
    L_0x00bb:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        goto L_0x0048;
    L_0x00c4:
        if (r7 == 0) goto L_0x0028;
    L_0x00c6:
        r7.close();	 Catch:{ IOException -> 0x00cc }
        r7 = 0;
        goto L_0x0028;
    L_0x00cc:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        goto L_0x0028;
    L_0x00d6:
        r0 = move-exception;
        r1 = r0;
        r0 = r7;
    L_0x00d9:
        r2 = "AdCache";
        r3 = "There was a problem reading the cached ad %s.";
        r4 = 1;
        r4 = new java.lang.Object[r4];	 Catch:{ all -> 0x0112 }
        r5 = 0;
        r6 = r11.getName();	 Catch:{ all -> 0x0112 }
        r4[r5] = r6;	 Catch:{ all -> 0x0112 }
        r3 = java.lang.String.format(r3, r4);	 Catch:{ all -> 0x0112 }
        com.millennialmedia.android.MMLog.e(r2, r3, r1);	 Catch:{ all -> 0x0112 }
        if (r0 == 0) goto L_0x00f4;
    L_0x00f0:
        r0.close();	 Catch:{ IOException -> 0x00f7 }
        r0 = 0;
    L_0x00f4:
        r7 = r0;
        goto L_0x0028;
    L_0x00f7:
        r1 = move-exception;
        r2 = "AdCache";
        r3 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        r7 = r0;
        goto L_0x0028;
    L_0x0102:
        r0 = move-exception;
    L_0x0103:
        if (r7 == 0) goto L_0x0108;
    L_0x0105:
        r7.close();	 Catch:{ IOException -> 0x0109 }
    L_0x0108:
        throw r0;
    L_0x0109:
        r1 = move-exception;
        r2 = "AdCache";
        r3 = "Failed to close";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x0108;
    L_0x0112:
        r1 = move-exception;
        r7 = r0;
        r0 = r1;
        goto L_0x0103;
    L_0x0116:
        r1 = move-exception;
        goto L_0x00d9;
    L_0x0118:
        r7 = r0;
        goto L_0x0028;
        */
    }

    static synchronized void a(Context context, String str) {
        synchronized (AdCache.class) {
            if (str != null) {
                if (!n) {
                    a(context);
                }
                if (l == null) {
                    l = new HashSet();
                }
                l.add(str);
                m = null;
            }
        }
    }

    static synchronized void a(Context context, String str, Object obj) {
        synchronized (AdCache.class) {
            if (!q) {
                j(context);
            }
            if (str != null) {
                Map map = o;
                if (obj == null) {
                    obj = AdTrackerConstants.BLANK;
                }
                map.put(str, obj);
                k(context, str);
            }
        }
    }

    private static void a(Editor editor, String str) {
        int indexOf = str.indexOf(95);
        if (indexOf >= 0 && indexOf < str.length()) {
            String substring = str.substring(indexOf + 1);
            if (substring != null && !p.contains(substring)) {
                StringBuilder stringBuilder = null;
                if (!p.isEmpty()) {
                    java.util.Iterator it = p.iterator();
                    StringBuilder stringBuilder2 = new StringBuilder();
                    while (it.hasNext()) {
                        stringBuilder2.append(((String) it.next()) + MMSDK.k);
                    }
                    stringBuilder = stringBuilder2;
                }
                editor.putString(i, (stringBuilder == null ? AdTrackerConstants.BLANK : stringBuilder.toString()) + substring);
                p.add(substring);
            }
        }
    }

    private static void a(SharedPreferences sharedPreferences) {
        p = new HashSet();
        String string = sharedPreferences.getString(i, null);
        if (string != null) {
            String[] split = string.split(MMSDK.k);
            if (split != null && split.length > 0) {
                int length = split.length;
                int i = 0;
                while (i < length) {
                    p.add(split[i]);
                    i++;
                }
            }
        }
    }

    static void a(File file, long j) {
        File[] listFiles = file.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            File file2 = listFiles[i];
            if (file2.isFile()) {
                if (System.currentTimeMillis() - file2.lastModified() > j) {
                    file2.delete();
                }
            } else if (file2.isDirectory()) {
                try {
                    a(file2, j);
                    if (file2.list() != null && file2.list().length == 0) {
                        file2.delete();
                    }
                } catch (SecurityException e) {
                    MMLog.e(j, "Security Exception cleaning up directory", e);
                }
            }
            i++;
        }
    }

    static void a(boolean z) {
        d = z;
    }

    static boolean a() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    static boolean a(Context context, CachedAd cachedAd) {
        Throwable th;
        File file;
        ObjectOutputStream objectOutputStream = null;
        if (cachedAd == null) {
            return false;
        }
        File m = m(context, cachedAd.e());
        if (m == null) {
            return false;
        }
        File file2;
        MMLog.a(j, String.format("Saving CachedAd %s to %s", new Object[]{cachedAd.e(), m}));
        try {
            file2 = new File(m.getParent(), cachedAd.e() + f);
            try {
                if (file2.createNewFile()) {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(m));
                    try {
                        objectOutputStream2.writeInt(cachedAd.c());
                        objectOutputStream2.writeObject(cachedAd.f);
                        objectOutputStream2.writeObject(cachedAd.e);
                        objectOutputStream2.writeLong(cachedAd.g);
                        objectOutputStream2.writeObject(cachedAd);
                        try {
                            file2.delete();
                            if (objectOutputStream2 != null) {
                                objectOutputStream2.close();
                            }
                        } catch (IOException e) {
                            MMLog.e(j, "Failed to close", e);
                        }
                        if (cachedAd.a(context)) {
                            return true;
                        }
                        cachedAd.c(context);
                        return false;
                    } catch (Exception e2) {
                        th = e2;
                        objectOutputStream = objectOutputStream2;
                        file = file2;
                        MMLog.e(j, String.format("There was a problem saving the cached ad %s.", new Object[]{cachedAd.e()}), th);
                        file.delete();
                        if (objectOutputStream != null) {
                            return false;
                        }
                        objectOutputStream.close();
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        objectOutputStream = objectOutputStream2;
                        file2.delete();
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        throw th;
                    }
                } else {
                    MMLog.a(j, String.format("Could not save the cached ad %s. Ad was locked.", new Object[]{cachedAd.e()}));
                    try {
                        file2.delete();
                        if (0 == 0) {
                            return false;
                        }
                        null.close();
                        return false;
                    } catch (IOException e3) {
                        MMLog.e(j, "Failed to close", e3);
                        return false;
                    }
                }
            } catch (Exception e4) {
                th = e4;
                file = file2;
                MMLog.e(j, String.format("There was a problem saving the cached ad %s.", new Object[]{cachedAd.e()}), th);
                try {
                    file.delete();
                    if (objectOutputStream != null) {
                        return false;
                    }
                    objectOutputStream.close();
                    return false;
                } catch (IOException e5) {
                    MMLog.e(j, "Failed to close", e5);
                    return false;
                }
            } catch (Throwable th3) {
                th = th3;
                file2.delete();
                if (objectOutputStream != null) {
                    objectOutputStream.close();
                }
                throw th;
            }
        } catch (Exception e6) {
            th = e6;
            file = null;
            try {
                MMLog.e(j, String.format("There was a problem saving the cached ad %s.", new Object[]{cachedAd.e()}), th);
                file.delete();
                if (objectOutputStream != null) {
                    return false;
                }
                objectOutputStream.close();
                return false;
            } catch (Throwable th4) {
                th = th4;
                file2 = file;
                file2.delete();
                if (objectOutputStream != null) {
                    objectOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th5) {
            Throwable th6 = th5;
            file2 = null;
            try {
                file2.delete();
                if (objectOutputStream != null) {
                    objectOutputStream.close();
                }
            } catch (IOException e7) {
                MMLog.e(j, "Failed to close", e7);
            }
            throw th6;
        }
    }

    static boolean a(Context context, String str, CachedAd cachedAd, AdCacheTaskListener adCacheTaskListener) {
        return AdCacheThreadPool.a().a(context, str, cachedAd, adCacheTaskListener);
    }

    static boolean a(String str, String str2, Context context) {
        File h = h(context);
        return (h == null || !h.isDirectory()) ? false : a(str, str2, h, context);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(java.lang.String r8, java.lang.String r9, java.io.File r10, android.content.Context r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.AdCache.a(java.lang.String, java.lang.String, java.io.File, android.content.Context):boolean");
        /*
        r0 = android.text.TextUtils.isEmpty(r8);
        if (r0 == 0) goto L_0x000f;
    L_0x0006:
        r0 = "AdCache";
        r1 = "No Url ...";
        com.millennialmedia.android.MMLog.b(r0, r1);
        r0 = 0;
    L_0x000e:
        return r0;
    L_0x000f:
        r6 = new java.io.File;
        r6.<init>(r10, r9);
        r0 = "AdCache";
        r1 = "Downloading Component: %s from %s";
        r2 = 2;
        r2 = new java.lang.Object[r2];
        r3 = 0;
        r2[r3] = r9;
        r3 = 1;
        r2[r3] = r8;
        r1 = java.lang.String.format(r1, r2);
        com.millennialmedia.android.MMLog.a(r0, r1);
        r0 = r6.getParentFile();
        r1 = r0.exists();
        if (r1 != 0) goto L_0x0052;
    L_0x0032:
        r1 = r0.mkdirs();
        if (r1 != 0) goto L_0x0052;
    L_0x0038:
        r1 = "AdCache";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r0 = r2.append(r0);
        r2 = " does not exist and cannot create directory.";
        r0 = r0.append(r2);
        r0 = r0.toString();
        com.millennialmedia.android.MMLog.a(r1, r0);
        r0 = 0;
        goto L_0x000e;
    L_0x0052:
        r0 = r6.exists();
        if (r0 == 0) goto L_0x007c;
    L_0x0058:
        r0 = r6.length();
        r2 = 0;
        r0 = (r0 > r2 ? 1 : (r0 == r2? 0 : -1));
        if (r0 <= 0) goto L_0x007c;
    L_0x0062:
        r0 = "AdCache";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1 = r1.append(r9);
        r2 = " already exists, skipping...";
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.millennialmedia.android.MMLog.a(r0, r1);
        r0 = 1;
        goto L_0x000e;
    L_0x007c:
        r2 = 0;
        r1 = 0;
        r4 = -1;
        r0 = new java.net.URL;	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r0.<init>(r8);	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r3 = 1;
        java.net.HttpURLConnection.setFollowRedirects(r3);	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r3 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r0.setConnectTimeout(r3);	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r3 = "GET";
        r0.setRequestMethod(r3);	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r0.connect();	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r3 = r0.getInputStream();	 Catch:{ Exception -> 0x01b0, all -> 0x01a8 }
        r2 = "Content-Length";
        r0 = r0.getHeaderField(r2);	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        if (r0 == 0) goto L_0x00ac;
    L_0x00a8:
        r4 = java.lang.Long.parseLong(r0);	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
    L_0x00ac:
        if (r3 != 0) goto L_0x00dc;
    L_0x00ae:
        r0 = "AdCache";
        r2 = "Connection stream is null downloading %s.";
        r4 = 1;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        r5 = 0;
        r4[r5] = r9;	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        r2 = java.lang.String.format(r2, r4);	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        com.millennialmedia.android.MMLog.e(r0, r2);	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        r0 = 0;
        if (r3 == 0) goto L_0x00c5;
    L_0x00c2:
        r3.close();	 Catch:{ IOException -> 0x00cc }
    L_0x00c5:
        if (r1 == 0) goto L_0x000e;
    L_0x00c7:
        r1.close();	 Catch:{ IOException -> 0x00cc }
        goto L_0x000e;
    L_0x00cc:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Content caching error downloading component: ";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        if (r6 == 0) goto L_0x00d9;
    L_0x00d6:
        r6.delete();
    L_0x00d9:
        r0 = 0;
        goto L_0x000e;
    L_0x00dc:
        r2 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        r2.<init>(r6);	 Catch:{ Exception -> 0x01b3, all -> 0x01ab }
        r0 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r0 = new byte[r0];	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
    L_0x00e5:
        r1 = r3.read(r0);	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
        if (r1 <= 0) goto L_0x0119;
    L_0x00eb:
        r7 = 0;
        r2.write(r0, r7, r1);	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
        goto L_0x00e5;
    L_0x00f0:
        r0 = move-exception;
        r1 = r2;
        r2 = r3;
    L_0x00f3:
        r3 = "AdCache";
        r4 = "Exception downloading component %s: %s";
        r5 = 2;
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x01ad }
        r7 = 0;
        r5[r7] = r9;	 Catch:{ all -> 0x01ad }
        r7 = 1;
        r5[r7] = r0;	 Catch:{ all -> 0x01ad }
        r0 = java.lang.String.format(r4, r5);	 Catch:{ all -> 0x01ad }
        com.millennialmedia.android.MMLog.e(r3, r0);	 Catch:{ all -> 0x01ad }
        if (r2 == 0) goto L_0x010c;
    L_0x0109:
        r2.close();	 Catch:{ IOException -> 0x0188 }
    L_0x010c:
        if (r1 == 0) goto L_0x0111;
    L_0x010e:
        r1.close();	 Catch:{ IOException -> 0x0188 }
    L_0x0111:
        if (r6 == 0) goto L_0x0116;
    L_0x0113:
        r6.delete();
    L_0x0116:
        r0 = 0;
        goto L_0x000e;
    L_0x0119:
        if (r6 == 0) goto L_0x014d;
    L_0x011b:
        r0 = r6.length();	 Catch:{ SecurityException -> 0x0168 }
        r0 = (r0 > r4 ? 1 : (r0 == r4? 0 : -1));
        if (r0 == 0) goto L_0x0129;
    L_0x0123:
        r0 = -1;
        r0 = (r4 > r0 ? 1 : (r4 == r0? 0 : -1));
        if (r0 != 0) goto L_0x0146;
    L_0x0129:
        r0 = 1;
        if (r3 == 0) goto L_0x012f;
    L_0x012c:
        r3.close();	 Catch:{ IOException -> 0x0136 }
    L_0x012f:
        if (r2 == 0) goto L_0x000e;
    L_0x0131:
        r2.close();	 Catch:{ IOException -> 0x0136 }
        goto L_0x000e;
    L_0x0136:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Content caching error downloading component: ";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        if (r6 == 0) goto L_0x0143;
    L_0x0140:
        r6.delete();
    L_0x0143:
        r0 = 0;
        goto L_0x000e;
    L_0x0146:
        r0 = "AdCache";
        r1 = "Content-Length does not match actual length.";
        com.millennialmedia.android.MMLog.e(r0, r1);	 Catch:{ SecurityException -> 0x0168 }
    L_0x014d:
        if (r3 == 0) goto L_0x0152;
    L_0x014f:
        r3.close();	 Catch:{ IOException -> 0x0158 }
    L_0x0152:
        if (r2 == 0) goto L_0x0111;
    L_0x0154:
        r2.close();	 Catch:{ IOException -> 0x0158 }
        goto L_0x0111;
    L_0x0158:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Content caching error downloading component: ";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        if (r6 == 0) goto L_0x0165;
    L_0x0162:
        r6.delete();
    L_0x0165:
        r0 = 0;
        goto L_0x000e;
    L_0x0168:
        r0 = move-exception;
        r1 = "AdCache";
        r4 = "Exception downloading component %s: ";
        r5 = 1;
        r5 = new java.lang.Object[r5];	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
        r7 = 0;
        r5[r7] = r9;	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
        r4 = java.lang.String.format(r4, r5);	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
        com.millennialmedia.android.MMLog.e(r1, r4, r0);	 Catch:{ Exception -> 0x00f0, all -> 0x017b }
        goto L_0x014d;
    L_0x017b:
        r0 = move-exception;
        r1 = r2;
    L_0x017d:
        if (r3 == 0) goto L_0x0182;
    L_0x017f:
        r3.close();	 Catch:{ IOException -> 0x0198 }
    L_0x0182:
        if (r1 == 0) goto L_0x0187;
    L_0x0184:
        r1.close();	 Catch:{ IOException -> 0x0198 }
    L_0x0187:
        throw r0;
    L_0x0188:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Content caching error downloading component: ";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        if (r6 == 0) goto L_0x0195;
    L_0x0192:
        r6.delete();
    L_0x0195:
        r0 = 0;
        goto L_0x000e;
    L_0x0198:
        r0 = move-exception;
        r1 = "AdCache";
        r2 = "Content caching error downloading component: ";
        com.millennialmedia.android.MMLog.e(r1, r2, r0);
        if (r6 == 0) goto L_0x01a5;
    L_0x01a2:
        r6.delete();
    L_0x01a5:
        r0 = 0;
        goto L_0x000e;
    L_0x01a8:
        r0 = move-exception;
        r3 = r2;
        goto L_0x017d;
    L_0x01ab:
        r0 = move-exception;
        goto L_0x017d;
    L_0x01ad:
        r0 = move-exception;
        r3 = r2;
        goto L_0x017d;
    L_0x01b0:
        r0 = move-exception;
        goto L_0x00f3;
    L_0x01b3:
        r0 = move-exception;
        r2 = r3;
        goto L_0x00f3;
        */
    }

    static boolean a(String str, String str2, String str3, Context context) {
        File g = g(context);
        return (g == null || !g.isDirectory()) ? false : a(str, str3, new File(g, str2), context);
    }

    static void b(Context context) {
        ThreadUtils.a(new AnonymousClass_3(context));
    }

    static synchronized void b(Context context, String str) {
        synchronized (AdCache.class) {
            if (str != null) {
                if (!n) {
                    a(context);
                }
                if (l != null) {
                    l.remove(str);
                    m = null;
                }
            }
        }
    }

    static synchronized void b(Context context, String str, Object obj) {
        synchronized (AdCache.class) {
            if (!s) {
                k(context);
            }
            if (str != null) {
                Map map = r;
                if (obj == null) {
                    obj = AdTrackerConstants.BLANK;
                }
                map.put(str, obj);
                l(context, str);
            }
        }
    }

    static boolean b(String str, String str2, Context context) {
        File g = g(context);
        return (g == null || !g.isDirectory()) ? false : a(str, str2, g, context);
    }

    static File c(Context context, String str, String str2) {
        File g = g(context);
        return g != null ? new File(g, str + File.separator + str2) : null;
    }

    static synchronized String c(Context context, String str) {
        String str2;
        synchronized (AdCache.class) {
            if (!q) {
                j(context);
            }
            str2 = str == null ? null : (String) o.get(str);
        }
        return str2;
    }

    static void c(Context context) {
        a(context, (int)a, new Iterator() {
            boolean a(String str, int i, Date date, String str2, long j, ObjectInputStream objectInputStream) {
                if (date != null && date.getTime() <= System.currentTimeMillis()) {
                    try {
                        CachedAd cachedAd = (CachedAd) objectInputStream.readObject();
                        MMLog.e(j, String.format("Deleting expired ad %s.", new Object[]{cachedAd.e()}));
                    } catch (Exception e) {
                        Throwable th = e;
                        MMLog.e(j, String.format("There was a problem reading the cached ad %s.", new Object[]{str}), th);
                    }
                }
                return true;
            }
        });
    }

    static CachedAd d(Context context, String str) {
        String c = c(context, str);
        return (c == null || c.equals(AdTrackerConstants.BLANK)) ? null : i(context, c);
    }

    static void d(Context context) {
        l(context);
        if (i(context)) {
            m(context);
        }
    }

    static synchronized String e(Context context, String str) {
        String str2;
        synchronized (AdCache.class) {
            if (!s) {
                k(context);
            }
            str2 = str == null ? null : (String) r.get(str);
        }
        return str2;
    }

    static void e(Context context) {
        java.util.Iterator it;
        a(context, (int)b, new AnonymousClass_5(context));
        l = null;
        m = null;
        n = false;
        if (o != null) {
            it = o.keySet().iterator();
            while (it.hasNext()) {
                a(context, (String) it.next(), null);
            }
        }
        if (r != null) {
            it = r.keySet().iterator();
            while (it.hasNext()) {
                b(context, (String) it.next(), null);
            }
        }
    }

    static CachedAd f(Context context, String str) {
        String e = e(context, str);
        return e == null ? null : i(context, e);
    }

    static File f(Context context) {
        return i(context) ? g(context) : h(context);
    }

    static File g(Context context) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return null;
        }
        File file = new File(externalStorageDirectory, k);
        return (file.exists() || file.mkdirs()) ? file : null;
    }

    static File g(Context context, String str) {
        File g = g(context);
        return g != null ? new File(g, str) : null;
    }

    static File h(Context context) {
        if (context == null) {
            return null;
        }
        File file = new File(context.getFilesDir(), k);
        return (file == null || file.exists() || file.mkdirs()) ? file : null;
    }

    static boolean h(Context context, String str) {
        File g = g(context, str);
        return g != null && g.exists();
    }

    static CachedAd i(Context context, String str) {
        ObjectInputStream objectInputStream;
        CachedAd cachedAd;
        if (str == null || str.equals(AdTrackerConstants.BLANK)) {
            return null;
        }
        File m = m(context, str);
        if (m == null) {
            return null;
        }
        try {
            objectInputStream = new ObjectInputStream(new FileInputStream(m));
            try {
                objectInputStream.readInt();
                Date date = (Date) objectInputStream.readObject();
                objectInputStream.readObject();
                objectInputStream.readLong();
                cachedAd = (CachedAd) objectInputStream.readObject();
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e) {
                        MMLog.e(j, "Failed to close", e);
                    }
                }
            } catch (FileNotFoundException e2) {
                th = e2;
                MMLog.e(j, "There was a problem loading up the cached ad " + str + ". Ad is not on disk.", th);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                cachedAd = null;
                return cachedAd;
            } catch (Exception e3) {
                th = e3;
                MMLog.e(j, String.format("There was a problem loading up the cached ad %s.", new Object[]{str}), th);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                cachedAd = null;
                return cachedAd;
            }
            return cachedAd;
        } catch (Throwable th2) {
            th = th2;
            if (objectInputStream != null) {
                objectInputStream.close();
            }
            throw th;
        }
    }

    static boolean i(Context context) {
        if (context == null) {
            return false;
        }
        Object externalStorageState = Environment.getExternalStorageState();
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && !TextUtils.isEmpty(externalStorageState) && externalStorageState.equals("mounted") && d;
    }

    private static void j(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        o = new ConcurrentHashMap();
        if (p == null) {
            a(sharedPreferences);
        }
        java.util.Iterator it = p.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String[] l = MMAdImpl.l();
            int length = l.length;
            int i = 0;
            while (i < length) {
                String str2 = l[i];
                String string = sharedPreferences.getString(g + str2 + '_' + str, null);
                if (string != null) {
                    o.put(str2 + '_' + str, string);
                }
                i++;
            }
        }
        q = true;
    }

    static boolean j(Context context, String str) {
        File m = m(context, str);
        return m != null ? m.delete() : false;
    }

    private static void k(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        r = new ConcurrentHashMap();
        if (p == null) {
            a(sharedPreferences);
        }
        java.util.Iterator it = p.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String[] l = MMAdImpl.l();
            int length = l.length;
            int i = 0;
            while (i < length) {
                String str2 = l[i];
                String string = sharedPreferences.getString(h + str2 + '_' + str, null);
                if (string != null) {
                    r.put(str2 + '_' + str, string);
                }
                i++;
            }
        }
        s = true;
    }

    private static void k(Context context, String str) {
        if (str != null) {
            Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            a(edit, str);
            edit.putString(g + str, (String) o.get(str));
            edit.commit();
        }
    }

    private static void l(Context context) {
        File h = h(context);
        if (h != null && h.exists() && h.isDirectory()) {
            a(h, HandShake.a(context).d);
        }
    }

    private static void l(Context context, String str) {
        if (str != null) {
            Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            a(edit, str);
            edit.putString(h + str, (String) r.get(str));
            edit.commit();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.io.File m(android.content.Context r7, java.lang.String r8) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.AdCache.m(android.content.Context, java.lang.String):java.io.File");
        /*
        r0 = 0;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1 = r1.append(r8);
        r2 = "ad.dat";
        r1 = r1.append(r2);
        r3 = r1.toString();
        r2 = i(r7);
        r4 = h(r7);
        if (r4 == 0) goto L_0x0070;
    L_0x001e:
        r1 = r4.isDirectory();	 Catch:{ Exception -> 0x0065 }
        if (r1 == 0) goto L_0x0070;
    L_0x0024:
        r1 = new java.io.File;	 Catch:{ Exception -> 0x0065 }
        r1.<init>(r4, r3);	 Catch:{ Exception -> 0x0065 }
    L_0x0029:
        if (r1 == 0) goto L_0x0031;
    L_0x002b:
        r4 = r1.exists();	 Catch:{ Exception -> 0x0065 }
        if (r4 != 0) goto L_0x006e;
    L_0x0031:
        if (r2 != 0) goto L_0x006e;
    L_0x0033:
        r4 = r7.getFilesDir();	 Catch:{ Exception -> 0x0065 }
        if (r4 == 0) goto L_0x006e;
    L_0x0039:
        r2 = new java.io.File;	 Catch:{ Exception -> 0x0065 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0065 }
        r5.<init>();	 Catch:{ Exception -> 0x0065 }
        r6 = ".mmsyscache";
        r5 = r5.append(r6);	 Catch:{ Exception -> 0x0065 }
        r6 = java.io.File.separator;	 Catch:{ Exception -> 0x0065 }
        r5 = r5.append(r6);	 Catch:{ Exception -> 0x0065 }
        r3 = r5.append(r3);	 Catch:{ Exception -> 0x0065 }
        r3 = r3.toString();	 Catch:{ Exception -> 0x0065 }
        r2.<init>(r4, r3);	 Catch:{ Exception -> 0x0065 }
        r3 = r2.exists();	 Catch:{ Exception -> 0x0065 }
        if (r3 == 0) goto L_0x006e;
    L_0x005d:
        r0 = r2.isFile();	 Catch:{ Exception -> 0x0065 }
        if (r0 == 0) goto L_0x006e;
    L_0x0063:
        r0 = r2;
    L_0x0064:
        return r0;
    L_0x0065:
        r1 = move-exception;
        r2 = "AdCache";
        r3 = "getCachedAdFile: ";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x0064;
    L_0x006e:
        r0 = r1;
        goto L_0x0064;
    L_0x0070:
        r1 = r0;
        goto L_0x0029;
        */
    }

    private static void m(Context context) {
        File g = g(context);
        if (g != null && g.exists() && g.isDirectory()) {
            a(g, HandShake.a(context).d);
        }
    }
}