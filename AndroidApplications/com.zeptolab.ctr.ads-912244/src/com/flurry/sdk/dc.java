package com.flurry.sdk;

import android.os.Looper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

public class dc {
    private static final String d;
    String a;
    long b;
    int c;
    private File e;

    static {
        d = dc.class.getSimpleName();
    }

    public dc() {
        this.a = null;
        this.b = -1;
        this.c = -1;
        this.e = null;
        this.a = UUID.randomUUID().toString();
        this.e = dl.a().b().getFileStreamPath(".flurrydatasenderblock." + this.a);
    }

    public dc(String str) {
        this.a = null;
        this.b = -1;
        this.c = -1;
        this.e = null;
        this.a = str;
        this.e = dl.a().b().getFileStreamPath(".flurrydatasenderblock." + this.a);
    }

    public String a() {
        return this.a;
    }

    public boolean a(byte[] bArr) {
        Closeable dataOutputStream;
        Throwable th;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "setData(byte[]) running on the MAIN thread!");
        }
        el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "Writing FlurryDataSenderBlockInfo: " + this.e.getAbsolutePath());
        Closeable closeable = null;
        try {
            if (fa.a(this.e)) {
                dataOutputStream = new DataOutputStream(new FileOutputStream(this.e));
                try {
                    int length = bArr.length;
                    dataOutputStream.writeShort(length);
                    dataOutputStream.write(bArr);
                    dataOutputStream.writeShort(0);
                    this.c = length;
                    this.b = System.currentTimeMillis();
                    fb.a(dataOutputStream);
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, AdTrackerConstants.BLANK, th);
                    fb.a(dataOutputStream);
                    return false;
                }
            } else {
                fb.a(closeable);
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = closeable;
            fb.a(dataOutputStream);
            throw th;
        }
    }

    public byte[] b() {
        Closeable dataInputStream;
        Throwable th;
        Throwable th2;
        byte[] bArr = null;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "getData() running on the MAIN thread!");
        }
        if (this.e.exists()) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "Reading FlurryDataSenderBlockInfo: " + this.e.getAbsolutePath());
            try {
                dataInputStream = new DataInputStream(new FileInputStream(this.e));
                try {
                    int readUnsignedShort = dataInputStream.readUnsignedShort();
                    if (readUnsignedShort == 0) {
                        fb.a(dataInputStream);
                    } else {
                        bArr = new byte[readUnsignedShort];
                        dataInputStream.readFully(bArr);
                        if (dataInputStream.readUnsignedShort() == 0) {
                            fb.a(dataInputStream);
                        } else {
                            fb.a(dataInputStream);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "Error when loading persistent file", th);
                    fb.a(dataInputStream);
                    return bArr;
                }
            } catch (Throwable th4) {
                dataInputStream = null;
                th2 = th4;
                fb.a(dataInputStream);
                throw th2;
            }
        } else {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "Agent cache file doesn't exist.");
        }
        return bArr;
    }

    public boolean c() {
        if (this.e.exists() && this.e.delete()) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, d, "Deleted persistence file");
            this.b = -1;
            this.c = -1;
            return true;
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, d, "Cannot delete persistence file");
        }
        return false;
    }
}