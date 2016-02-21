package com.google.android.gms.internal;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public abstract class i implements h {
    protected MotionEvent jY;
    protected DisplayMetrics jZ;
    protected n ka;
    private o kb;

    protected i(Context context, n nVar, o oVar) {
        this.ka = nVar;
        this.kb = oVar;
        try {
            this.jZ = context.getResources().getDisplayMetrics();
        } catch (UnsupportedOperationException e) {
            this.jZ = new DisplayMetrics();
            this.jZ.density = 1.0f;
        }
    }

    private String a(Context context, String str, boolean z) {
        int i = GoogleScorer.CLIENT_ALL;
        try {
            synchronized (this) {
                t();
                if (z) {
                    c(context);
                } else {
                    b(context);
                }
                byte[] u = u();
            }
            return u.length == 0 ? Integer.toString(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR) : a(u, str);
        } catch (NoSuchAlgorithmException e) {
            return Integer.toString(i);
        } catch (UnsupportedEncodingException e2) {
            return Integer.toString(i);
        } catch (IOException e3) {
            return Integer.toString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        }
    }

    private void t() {
        this.kb.reset();
    }

    private byte[] u() {
        return this.kb.z();
    }

    public String a(Context context) {
        return a(context, null, false);
    }

    public String a(Context context, String str) {
        return a(context, str, true);
    }

    String a(byte[] bArr, String str) {
        byte[] bArr2;
        if (bArr.length > 239) {
            t();
            a((int)MMException.DISPLAY_AD_NOT_READY, 1);
            bArr = u();
        }
        if (bArr.length < 239) {
            bArr2 = new byte[(239 - bArr.length)];
            new SecureRandom().nextBytes(bArr2);
            bArr2 = ByteBuffer.allocate(240).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            bArr2 = ByteBuffer.allocate(240).put((byte) bArr.length).put(bArr).array();
        }
        MessageDigest instance = MessageDigest.getInstance("MD5");
        instance.update(bArr2);
        bArr2 = ByteBuffer.allocate(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY).put(instance.digest()).put(bArr2).array();
        byte[] bArr3 = new byte[256];
        new f().a(bArr2, bArr3);
        if (str != null && str.length() > 0) {
            a(str, bArr3);
        }
        return this.ka.a(bArr3, true);
    }

    public void a(int i, int i2, int i3) {
        if (this.jY != null) {
            this.jY.recycle();
        }
        this.jY = MotionEvent.obtain(0, (long) i3, 1, ((float) i) * this.jZ.density, ((float) i2) * this.jZ.density, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, 0);
    }

    protected void a(int i, long j) {
        this.kb.b(i, j);
    }

    protected void a(int i, String str) {
        this.kb.b(i, str);
    }

    public void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.jY != null) {
                this.jY.recycle();
            }
            this.jY = MotionEvent.obtain(motionEvent);
        }
    }

    void a(String str, byte[] bArr) {
        if (str.length() > 32) {
            str = str.substring(0, ApiEventType.API_MRAID_PLAY_AUDIO);
        }
        new jx(str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT)).m(bArr);
    }

    protected abstract void b(Context context);

    protected abstract void c(Context context);
}