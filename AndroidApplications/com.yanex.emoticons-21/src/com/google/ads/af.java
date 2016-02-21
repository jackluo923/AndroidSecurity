package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public abstract class af implements ae {
    protected MotionEvent a;
    protected DisplayMetrics b;
    private at c;
    private ByteArrayOutputStream d;

    protected af(Context context) {
        this.c = null;
        this.d = null;
        this.a = null;
        this.b = null;
        try {
            this.b = context.getResources().getDisplayMetrics();
        } catch (UnsupportedOperationException e) {
            this.b = new DisplayMetrics();
            this.b.density = 1.0f;
        }
    }

    private String a(Context context, String str, boolean z) {
        int i = 7;
        try {
            a();
            if (z) {
                b(context);
            } else {
                a(context);
            }
            byte[] b = b();
            if (b.length == 0) {
                return Integer.toString(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER);
            }
            byte[] bArr;
            if (b.length > 239) {
                a();
                a(20, 1);
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
            b = ByteBuffer.allocate(256).put(instance.digest()).put(b).array();
            bArr = new byte[256];
            new p().a(b, bArr);
            if (str != null && str.length() > 0) {
                if (str.length() > 32) {
                    str = str.substring(0, 32);
                }
                new ao(str.getBytes("UTF-8")).a(bArr);
            }
            return an.a(bArr);
        } catch (NoSuchAlgorithmException e) {
            return Integer.toString(i);
        } catch (UnsupportedEncodingException e2) {
            return Integer.toString(i);
        } catch (IOException e3) {
            return Integer.toString(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER);
        }
    }

    private void a() {
        this.d = new ByteArrayOutputStream();
        this.c = at.a(this.d);
    }

    private byte[] b() {
        this.c.a();
        return this.d.toByteArray();
    }

    public final String a(Context context, String str) {
        return a(context, str, true);
    }

    public final void a(int i, int i2, int i3) {
        if (this.a != null) {
            this.a.recycle();
        }
        this.a = MotionEvent.obtain(0, (long) i3, 1, ((float) i) * this.b.density, ((float) i2) * this.b.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
    }

    protected final void a(int i, long j) {
        at atVar = this.c;
        atVar.a(i, 0);
        while ((-128 & j) != 0) {
            atVar.a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        atVar.a((int) j);
    }

    protected final void a(int i, String str) {
        at atVar = this.c;
        atVar.a(i, (int)IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        byte[] bytes = str.getBytes("UTF-8");
        atVar.b(bytes.length);
        atVar.a(bytes, bytes.length);
    }

    protected abstract void a(Context context);

    public final void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.a != null) {
                this.a.recycle();
            }
            this.a = MotionEvent.obtain(motionEvent);
        }
    }

    protected abstract void b(Context context);

    public final String c(Context context) {
        return a(context, null, false);
    }
}