package com.flurry.sdk;

import com.flurry.sdk.cu.a;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class de {
    private static final String b;
    byte[] a;

    static {
        b = de.class.getSimpleName();
    }

    public de(df dfVar) {
        Throwable th;
        Closeable closeable = null;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Closeable dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                Iterator it;
                int i;
                int i2;
                dataOutputStream.writeShort(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                dataOutputStream.writeUTF(dfVar.a());
                dataOutputStream.writeLong(dfVar.b());
                dataOutputStream.writeLong(dfVar.c());
                dataOutputStream.writeLong(dfVar.d());
                Map e = dfVar.e();
                if (e == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(e.size());
                    it = e.entrySet().iterator();
                    while (it.hasNext()) {
                        Entry entry = (Entry) it.next();
                        dataOutputStream.writeUTF((String) entry.getKey());
                        dataOutputStream.writeUTF((String) entry.getValue());
                        dataOutputStream.writeByte(0);
                    }
                }
                dataOutputStream.writeUTF(dfVar.f());
                dataOutputStream.writeUTF(dfVar.g());
                dataOutputStream.writeByte(dfVar.h());
                dataOutputStream.writeUTF(dfVar.i());
                if (dfVar.j() == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeDouble(a(dfVar.j().getLatitude()));
                    dataOutputStream.writeDouble(a(dfVar.j().getLongitude()));
                    dataOutputStream.writeFloat(dfVar.j().getAccuracy());
                }
                dataOutputStream.writeInt(dfVar.k());
                dataOutputStream.writeByte(-1);
                dataOutputStream.writeByte(-1);
                dataOutputStream.writeByte(dfVar.l());
                if (dfVar.m() == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeLong(dfVar.m().longValue());
                }
                e = dfVar.n();
                if (e == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(e.size());
                    it = e.entrySet().iterator();
                    while (it.hasNext()) {
                        entry = (Entry) it.next();
                        dataOutputStream.writeUTF((String) entry.getKey());
                        dataOutputStream.writeInt(((a) entry.getValue()).a);
                    }
                }
                List o = dfVar.o();
                if (o == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(o.size());
                    Iterator it2 = o.iterator();
                    while (it2.hasNext()) {
                        dataOutputStream.write(((cy) it2.next()).e());
                    }
                }
                dataOutputStream.writeBoolean(dfVar.p());
                List r = dfVar.r();
                if (r != null) {
                    i = 0;
                    int i3 = 0;
                    i2 = 0;
                    while (i < r.size()) {
                        i3 += ((cx) r.get(i)).a();
                        if (i3 > 160000) {
                            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, b, "Error Log size exceeded. No more event details logged.");
                            i = i2;
                            break;
                        } else {
                            i2++;
                            i++;
                        }
                    }
                    i = i2;
                } else {
                    i = 0;
                }
                dataOutputStream.writeInt(dfVar.q());
                dataOutputStream.writeShort(i);
                i2 = 0;
                while (i2 < i) {
                    dataOutputStream.write(((cx) r.get(i2)).b());
                    i2++;
                }
                dataOutputStream.writeInt(-1);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(0);
                this.a = byteArrayOutputStream.toByteArray();
                fb.a(dataOutputStream);
            } catch (IOException e2) {
                th = e2;
                closeable = dataOutputStream;
                try {
                    el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, b, AdTrackerConstants.BLANK, th);
                    throw th;
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
        } catch (IOException e3) {
            th = e3;
            el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, b, AdTrackerConstants.BLANK, th);
            throw th;
        } catch (Throwable th4) {
            th = th4;
            dataOutputStream = closeable;
            fb.a(dataOutputStream);
            throw th;
        }
    }

    public de(byte[] bArr) {
        this.a = bArr;
    }

    double a(double d) {
        return ((double) Math.round(d * 1000.0d)) / 1000.0d;
    }

    public byte[] a() {
        return this.a;
    }
}