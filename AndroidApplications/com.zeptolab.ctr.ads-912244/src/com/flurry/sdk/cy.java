package com.flurry.sdk;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class cy {
    private int a;
    private String b;
    private Map c;
    private long d;
    private boolean e;
    private boolean f;
    private long g;

    public cy(int i, String str, Map map, long j, boolean z) {
        this.a = i;
        this.b = str;
        this.c = map;
        this.d = j;
        this.e = z;
        if (this.e) {
            this.f = false;
        } else {
            this.f = true;
        }
    }

    public void a(long j) {
        this.f = true;
        this.g = j - this.d;
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, "FlurryAgent", "Ended event '" + this.b + "' (" + this.d + ") after " + this.g + "ms");
    }

    public void a(Map map) {
        if (this.c == null || this.c.size() == 0) {
            this.c = map;
        } else {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (this.c.containsKey(entry.getKey())) {
                    this.c.remove(entry.getKey());
                    this.c.put(entry.getKey(), entry.getValue());
                } else {
                    this.c.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public boolean a() {
        return this.e;
    }

    public boolean a(String str) {
        return this.e && this.g == 0 && this.b.equals(str);
    }

    public void b(Map map) {
        this.c = map;
    }

    public boolean b() {
        return this.f;
    }

    public Map c() {
        return this.c;
    }

    public int d() {
        return e().length;
    }

    public byte[] e() {
        Throwable th;
        Closeable closeable = null;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Closeable dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(this.a);
                dataOutputStream.writeUTF(this.b);
                if (this.c == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(this.c.size());
                    Iterator it = this.c.entrySet().iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        dataOutputStream.writeUTF(fb.a((String) entry.getKey()));
                        dataOutputStream.writeUTF(fb.a((String) entry.getValue()));
                    }
                }
                dataOutputStream.writeLong(this.d);
                dataOutputStream.writeLong(this.g);
                dataOutputStream.flush();
                toByteArray = byteArrayOutputStream.toByteArray();
                fb.a(dataOutputStream);
                return toByteArray;
            } catch (IOException e) {
                closeable = dataOutputStream;
                try {
                    toByteArray = new byte[0];
                    fb.a(closeable);
                    return toByteArray;
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = closeable;
                    fb.a(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fb.a(dataOutputStream);
                throw th;
            }
        } catch (IOException e2) {
            byte[] toByteArray2;
            Closeable closeable2;
            closeable2 = closeable;
            toByteArray2 = new byte[0];
            fb.a(closeable2);
            return toByteArray2;
        } catch (Throwable th4) {
            dataOutputStream = closeable;
            th = th4;
            fb.a(dataOutputStream);
            throw th;
        }
    }
}