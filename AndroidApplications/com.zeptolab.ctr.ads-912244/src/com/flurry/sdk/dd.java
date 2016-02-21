package com.flurry.sdk;

import android.os.Looper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class dd {
    static final Integer a;
    private static final String d;
    String b;
    LinkedHashMap c;

    static {
        d = dd.class.getSimpleName();
        a = Integer.valueOf(ApiEventType.API_MRAID_CLOSE_VIDEO);
    }

    public dd(String str) {
        a(str);
    }

    private synchronized boolean a(File file) {
        boolean z;
        z = false;
        if (file != null) {
            if (file.exists()) {
                el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "Trying to delete persistence file : " + file.getAbsolutePath());
                z = file.delete();
                if (z) {
                    el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "Deleted persistence file");
                } else {
                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "Cannot delete persistence file");
                }
            }
        }
        return z;
    }

    private synchronized boolean a(String str, List list) {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            Closeable dataOutputStream;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "saveToFile(byte[], ID) running on the MAIN thread!");
            }
            File fileStreamPath = dl.a().b().getFileStreamPath(".FlurrySenderIndex.info." + str);
            Closeable closeable = null;
            try {
                if (fa.a(fileStreamPath)) {
                    dataOutputStream = new DataOutputStream(new FileOutputStream(fileStreamPath));
                    try {
                        dataOutputStream.writeShort(list.size());
                        int i = 0;
                        while (i < list.size()) {
                            byte[] bytes = ((String) list.get(i)).getBytes();
                            int length = bytes.length;
                            el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "write iter " + i + " dataLength = " + length);
                            dataOutputStream.writeShort(length);
                            dataOutputStream.write(bytes);
                            i++;
                        }
                        dataOutputStream.writeShort(0);
                        z = 1;
                        fb.a(dataOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, AdTrackerConstants.BLANK, th);
                        fb.a(dataOutputStream);
                        z = false;
                        z2 = z;
                        return z2;
                    }
                    z2 = z;
                } else {
                    fb.a(closeable);
                }
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = closeable;
                fb.a(dataOutputStream);
                throw th;
            }
        }
        return z2;
    }

    private synchronized void c() {
        List linkedList = new LinkedList(this.c.keySet());
        b();
        if (!linkedList.isEmpty()) {
            a(this.b, linkedList);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized java.util.List e(java.lang.String r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.dd.e(java.lang.String):java.util.List");
        /*
        r10 = this;
        r1 = 0;
        monitor-enter(r10);
        r0 = android.os.Looper.myLooper();	 Catch:{ all -> 0x00a9 }
        r2 = android.os.Looper.getMainLooper();	 Catch:{ all -> 0x00a9 }
        if (r0 != r2) goto L_0x0014;
    L_0x000c:
        r0 = 6;
        r2 = d;	 Catch:{ all -> 0x00a9 }
        r3 = "readFromFile(byte[], ID) running on the MAIN thread!";
        com.flurry.sdk.el.a(r0, r2, r3);	 Catch:{ all -> 0x00a9 }
    L_0x0014:
        r0 = com.flurry.sdk.dl.a();	 Catch:{ all -> 0x00a9 }
        r0 = r0.b();	 Catch:{ all -> 0x00a9 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a9 }
        r2.<init>();	 Catch:{ all -> 0x00a9 }
        r3 = ".FlurrySenderIndex.info.";
        r2 = r2.append(r3);	 Catch:{ all -> 0x00a9 }
        r2 = r2.append(r11);	 Catch:{ all -> 0x00a9 }
        r2 = r2.toString();	 Catch:{ all -> 0x00a9 }
        r0 = r0.getFileStreamPath(r2);	 Catch:{ all -> 0x00a9 }
        r2 = r0.exists();	 Catch:{ all -> 0x00a9 }
        if (r2 == 0) goto L_0x00b2;
    L_0x0039:
        r3 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x0098, all -> 0x00ac }
        r3.<init>(r0);	 Catch:{ Throwable -> 0x0098, all -> 0x00ac }
        r2 = new java.io.DataInputStream;	 Catch:{ Throwable -> 0x0098, all -> 0x00ac }
        r2.<init>(r3);	 Catch:{ Throwable -> 0x0098, all -> 0x00ac }
        r3 = r2.readUnsignedShort();	 Catch:{ Throwable -> 0x00be }
        if (r3 != 0) goto L_0x004e;
    L_0x0049:
        com.flurry.sdk.fb.a(r2);	 Catch:{ all -> 0x00a9 }
    L_0x004c:
        monitor-exit(r10);
        return r1;
    L_0x004e:
        r0 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x00be }
        r0.<init>(r3);	 Catch:{ Throwable -> 0x00be }
        r1 = 0;
    L_0x0054:
        if (r1 >= r3) goto L_0x008d;
    L_0x0056:
        r4 = r2.readUnsignedShort();	 Catch:{ Throwable -> 0x00c3 }
        r5 = 4;
        r6 = d;	 Catch:{ Throwable -> 0x00c3 }
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c3 }
        r7.<init>();	 Catch:{ Throwable -> 0x00c3 }
        r8 = "read iter ";
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x00c3 }
        r7 = r7.append(r1);	 Catch:{ Throwable -> 0x00c3 }
        r8 = " dataLength = ";
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x00c3 }
        r7 = r7.append(r4);	 Catch:{ Throwable -> 0x00c3 }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x00c3 }
        com.flurry.sdk.el.a(r5, r6, r7);	 Catch:{ Throwable -> 0x00c3 }
        r4 = new byte[r4];	 Catch:{ Throwable -> 0x00c3 }
        r2.readFully(r4);	 Catch:{ Throwable -> 0x00c3 }
        r5 = new java.lang.String;	 Catch:{ Throwable -> 0x00c3 }
        r5.<init>(r4);	 Catch:{ Throwable -> 0x00c3 }
        r0.add(r5);	 Catch:{ Throwable -> 0x00c3 }
        r1 = r1 + 1;
        goto L_0x0054;
    L_0x008d:
        r1 = r2.readUnsignedShort();	 Catch:{ Throwable -> 0x00c3 }
        if (r1 != 0) goto L_0x0093;
    L_0x0093:
        com.flurry.sdk.fb.a(r2);	 Catch:{ all -> 0x00a9 }
    L_0x0096:
        r1 = r0;
        goto L_0x004c;
    L_0x0098:
        r0 = move-exception;
        r2 = r1;
        r9 = r0;
        r0 = r1;
        r1 = r9;
    L_0x009d:
        r3 = 6;
        r4 = d;	 Catch:{ all -> 0x00bc }
        r5 = "Error when loading persistent file";
        com.flurry.sdk.el.a(r3, r4, r5, r1);	 Catch:{ all -> 0x00bc }
        com.flurry.sdk.fb.a(r2);	 Catch:{ all -> 0x00a9 }
        goto L_0x0096;
    L_0x00a9:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x00ac:
        r0 = move-exception;
        r2 = r1;
    L_0x00ae:
        com.flurry.sdk.fb.a(r2);	 Catch:{ all -> 0x00a9 }
        throw r0;	 Catch:{ all -> 0x00a9 }
    L_0x00b2:
        r0 = 5;
        r2 = d;	 Catch:{ all -> 0x00a9 }
        r3 = "Agent cache file doesn't exist.";
        com.flurry.sdk.el.a(r0, r2, r3);	 Catch:{ all -> 0x00a9 }
        r0 = r1;
        goto L_0x0096;
    L_0x00bc:
        r0 = move-exception;
        goto L_0x00ae;
    L_0x00be:
        r0 = move-exception;
        r9 = r0;
        r0 = r1;
        r1 = r9;
        goto L_0x009d;
    L_0x00c3:
        r1 = move-exception;
        goto L_0x009d;
        */
    }

    public List a() {
        return new ArrayList(this.c.keySet());
    }

    public synchronized void a(dc dcVar, String str) {
        boolean z = 0;
        synchronized (this) {
            List list;
            el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "addBlockInfo");
            String a = dcVar.a();
            List list2 = (List) this.c.get(str);
            if (list2 == null) {
                el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "New Data Key");
                LinkedList linkedList = new LinkedList();
                int i = 1;
            } else {
                list = list2;
            }
            list.add(a);
            if (list.size() > a.intValue()) {
                b((String) list.get(0));
                list.remove(0);
            }
            this.c.put(str, list);
            a(str, list);
            if (i != 0) {
                c();
            }
        }
    }

    void a(String str) {
        this.c = new LinkedHashMap();
        this.b = str + "Main";
        List e = e(this.b);
        if (e != null) {
            Iterator it = e.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                List e2 = e(str2);
                if (e2 != null) {
                    this.c.put(str2, e2);
                }
            }
        }
    }

    public boolean a(String str, String str2) {
        List list = (List) this.c.get(str2);
        boolean z = false;
        if (list != null) {
            b(str);
            z = list.remove(str);
        }
        if (list == null || list.isEmpty()) {
            d(str2);
        } else {
            this.c.put(str2, list);
            a(str2, list);
        }
        return z;
    }

    void b() {
        a(dl.a().b().getFileStreamPath(".FlurrySenderIndex.info." + this.b));
    }

    boolean b(String str) {
        return new dc(str).c();
    }

    public List c(String str) {
        return (List) this.c.get(str);
    }

    public synchronized boolean d(String str) {
        boolean a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "discardOutdatedBlocksForDataKey(ID) running on the MAIN thread!");
        }
        File fileStreamPath = dl.a().b().getFileStreamPath(".FlurrySenderIndex.info." + str);
        List c = c(str);
        if (c != null) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + c.size());
            int i = 0;
            while (i < c.size()) {
                String str2 = (String) c.get(i);
                b(str2);
                el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "discardOutdatedBlocksForDataKey: removed block = " + str2);
                i++;
            }
        }
        this.c.remove(str);
        a = a(fileStreamPath);
        c();
        return a;
    }
}