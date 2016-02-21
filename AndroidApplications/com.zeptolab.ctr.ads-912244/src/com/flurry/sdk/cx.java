package com.flurry.sdk;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class cx {
    private int a;
    private long b;
    private String c;
    private String d;
    private String e;
    private Throwable f;

    public cx(int i, long j, String str, String str2, String str3, Throwable th) {
        this.a = i;
        this.b = j;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = th;
    }

    public int a() {
        return b().length;
    }

    public byte[] b() {
        byte[] bytes;
        Throwable th;
        Closeable closeable = null;
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Closeable dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(this.a);
                dataOutputStream.writeLong(this.b);
                dataOutputStream.writeUTF(this.c);
                dataOutputStream.writeUTF(this.d);
                dataOutputStream.writeUTF(this.e);
                if (this.f != null) {
                    if (this.c == "uncaught") {
                        dataOutputStream.writeByte(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                    } else {
                        dataOutputStream.writeByte(GoogleScorer.CLIENT_PLUS);
                    }
                    dataOutputStream.writeByte(GoogleScorer.CLIENT_PLUS);
                    StringBuilder stringBuilder = new StringBuilder(AdTrackerConstants.BLANK);
                    String property = System.getProperty("line.separator");
                    StackTraceElement[] stackTrace = this.f.getStackTrace();
                    int length = stackTrace.length;
                    int i = 0;
                    while (i < length) {
                        stringBuilder.append(stackTrace[i]);
                        stringBuilder.append(property);
                        i++;
                    }
                    if (this.f.getCause() != null) {
                        stringBuilder.append(property);
                        stringBuilder.append("Caused by: ");
                        stackTrace = this.f.getCause().getStackTrace();
                        length = stackTrace.length;
                        i = 0;
                        while (i < length) {
                            stringBuilder.append(stackTrace[i]);
                            stringBuilder.append(property);
                            i++;
                        }
                    }
                    bytes = stringBuilder.toString().getBytes();
                    dataOutputStream.writeInt(bytes.length);
                    dataOutputStream.write(bytes);
                } else {
                    dataOutputStream.writeByte(1);
                    dataOutputStream.writeByte(0);
                }
                dataOutputStream.flush();
                bytes = byteArrayOutputStream.toByteArray();
                fb.a(dataOutputStream);
                return bytes;
            } catch (IOException e) {
                try {
                    bytes = new byte[0];
                    fb.a(dataOutputStream);
                    return bytes;
                } catch (Throwable th2) {
                    th = th2;
                    fb.a(dataOutputStream);
                    throw th;
                }
            }
        } catch (IOException e2) {
            dataOutputStream = closeable;
            bytes = new byte[0];
            fb.a(dataOutputStream);
            return bytes;
        } catch (Throwable th3) {
            dataOutputStream = closeable;
            th = th3;
            fb.a(dataOutputStream);
            throw th;
        }
    }

    public String c() {
        return this.c;
    }
}