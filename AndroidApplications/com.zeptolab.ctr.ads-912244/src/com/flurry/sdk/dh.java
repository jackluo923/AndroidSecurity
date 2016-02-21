package com.flurry.sdk;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class dh {
    private static final String a;
    private boolean b;
    private List c;
    private long d;

    static {
        a = dh.class.getSimpleName();
    }

    public dh() {
        this.d = -1;
    }

    private static String a(String str) {
        if (str == null || str.length() <= 4) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length() - 4) {
            stringBuilder.append('*');
            i++;
        }
        stringBuilder.append(str.substring(str.length() - 4));
        return stringBuilder.toString();
    }

    private boolean a(String str, DataInputStream dataInputStream) {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "File version: " + readUnsignedShort);
        if (readUnsignedShort > 2) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Unknown agent file version: " + readUnsignedShort);
            throw new IOException("Unknown agent file version: " + readUnsignedShort);
        } else if (readUnsignedShort >= 2) {
            String readUTF = dataInputStream.readUTF();
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Loading API key: " + a(str));
            if (readUTF.equals(str)) {
                List arrayList = new ArrayList();
                dataInputStream.readUTF();
                boolean readBoolean = dataInputStream.readBoolean();
                long readLong = dataInputStream.readLong();
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Loading session reports");
                readUnsignedShort = 0;
                while (true) {
                    int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                    if (readUnsignedShort2 == 0) {
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Persistent file loaded");
                        a(readBoolean);
                        a(readLong);
                        a(arrayList);
                        return true;
                    } else {
                        byte[] bArr = new byte[readUnsignedShort2];
                        dataInputStream.readFully(bArr);
                        arrayList.add(0, new de(bArr));
                        readUnsignedShort++;
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Session report added: " + readUnsignedShort);
                    }
                }
            } else {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Api keys do not match, old: " + a(str) + ", new: " + a(readUTF));
                return false;
            }
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "Deleting old file version: " + readUnsignedShort);
            return false;
        }
    }

    public void a(long j) {
        this.d = j;
    }

    public void a(Closeable closeable, String str, String str2) {
        try {
            closeable.writeShort(46586);
            closeable.writeShort(GoogleScorer.CLIENT_PLUS);
            closeable.writeUTF(str);
            closeable.writeUTF(str2);
            closeable.writeBoolean(this.b);
            closeable.writeLong(this.d);
            int i = this.c.size() - 1;
            while (i >= 0) {
                byte[] a = ((de) this.c.get(i)).a();
                int length = a.length;
                if (length + 2 + closeable.size() > 50000) {
                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "discarded sessions: " + i);
                    break;
                } else {
                    closeable.writeShort(length);
                    closeable.write(a);
                    i--;
                }
            }
            closeable.writeShort(0);
            fb.a(closeable);
        } catch (Throwable th) {
        }
    }

    public void a(List list) {
        this.c = list;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public boolean a() {
        return this.b;
    }

    public boolean a(Closeable closeable, String str) {
        boolean z = false;
        try {
            int readUnsignedShort = closeable.readUnsignedShort();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "Magic: " + readUnsignedShort);
            if (readUnsignedShort == 46586) {
                z = a(str, (DataInputStream)closeable);
            } else {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Unexpected file type");
            }
            fb.a(closeable);
            return z;
        } catch (Throwable th) {
        }
    }

    public List b() {
        return this.c;
    }

    public long c() {
        return this.d;
    }
}