package com.google.a.a;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.DisplayMetrics;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public abstract class c implements b {
    protected DisplayMetrics a;
    protected i b;
    private j c;

    protected c(Context context, i iVar, j jVar) {
        this.b = iVar;
        this.c = jVar;
        try {
            this.a = context.getResources().getDisplayMetrics();
        } catch (UnsupportedOperationException e) {
            this.a = new DisplayMetrics();
            this.a.density = 1.0f;
        }
    }

    private void a() {
        this.c.a();
    }

    private byte[] b() {
        return this.c.b();
    }

    private String c_(Context context) {
        int i = GoogleScorer.CLIENT_ALL;
        try {
            synchronized (this) {
                a();
                b(context);
                byte[] b = b();
            }
            if (b.length == 0) {
                return Integer.toString(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
            }
            byte[] bArr;
            if (b.length > 239) {
                a();
                a((int)MMException.DISPLAY_AD_NOT_READY, 1);
                b = b();
            }
            if (b.length < 239) {
                bArr = new byte[(239 - b.length)];
                new SecureRandom().nextBytes(bArr);
                b = ByteBuffer.allocate(240).put((byte) b.length).put(b).put(bArr).array();
            } else {
                b = ByteBuffer.allocate(240).put((byte) b.length).put(b).array();
            }
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(b);
            b = ByteBuffer.allocate(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY).put(instance.digest()).put(b).array();
            bArr = new byte[256];
            new a().a(b, bArr);
            return this.b.a(bArr);
        } catch (NoSuchAlgorithmException e) {
            return Integer.toString(i);
        } catch (UnsupportedEncodingException e2) {
            return Integer.toString(i);
        } catch (IOException e3) {
            return Integer.toString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        }
    }

    public final String a(Context context) {
        return c(context);
    }

    protected final void a(int i, long j) {
        this.c.a(i, j);
    }

    protected final void a(int i, String str) {
        this.c.a(i, str);
    }

    protected abstract void b(Context context);
}