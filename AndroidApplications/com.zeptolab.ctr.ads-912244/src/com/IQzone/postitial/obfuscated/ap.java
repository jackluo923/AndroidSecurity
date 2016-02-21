package com.IQzone.postitial.obfuscated;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.RelativeLayout;
import java.util.Locale;
import java.util.concurrent.Executors;

public class ap {
    private static final ql a;
    private final WindowManager b;
    private final be c;
    private final Handler d;
    private final Context e;
    private final OrientationEventListener f;
    private final RelativeLayout g;
    private volatile bf h;
    private volatile int i;
    private final mz j;
    private bc k;

    static {
        a = new ql();
    }

    @SuppressLint({"NewApi"})
    public ap(Context context, View view, bf bfVar, boolean z) {
        int i = 0;
        this.c = new be((byte) 0);
        this.j = new mz(new aq(this), new nr(Executors.newSingleThreadExecutor()), 500);
        this.k = bc.c;
        ql qlVar = a;
        new StringBuilder("overlay created ").append(this).toString();
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int length = stackTrace.length;
        while (i < length) {
            Object obj = stackTrace[i];
            ql qlVar2 = a;
            new StringBuilder("elem: ").append(obj).toString();
            i++;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new RuntimeException("<Overlay><1>, You must create the overlay in the main thread.");
        }
        this.h = bfVar;
        this.d = new mv();
        this.e = context;
        this.g = new RelativeLayout(context);
        c();
        this.g.addView(view, -1, -1);
        this.b = (WindowManager) context.getSystemService("window");
        this.i = this.b.getDefaultDisplay().getRotation();
        this.f = new au(this, context, context, true, Build.MODEL.toLowerCase(Locale.getDefault()));
    }

    static /* synthetic */ LayoutParams a(ap apVar, be beVar, bg bgVar) {
        LayoutParams layoutParams = new LayoutParams();
        if (apVar.h == bf.b || apVar.h != bf.c) {
            if (apVar.h == bf.d) {
                layoutParams.type = 2013;
                layoutParams.alpha = 0.0f;
            }
            layoutParams.type = 2002;
        } else {
            layoutParams.type = 2013;
            layoutParams.alpha = 1.0f;
        }
        layoutParams.width = beVar.b;
        layoutParams.height = beVar.a;
        layoutParams.screenOrientation = apVar.i;
        layoutParams.x = beVar.c - bgVar.b / 2;
        layoutParams.y = beVar.d - bgVar.a / 2;
        if (apVar.h == bf.c || apVar.h == bf.d) {
            layoutParams.flags = (layoutParams.flags | 8) | 16;
        }
        return layoutParams;
    }

    public static final void a(Context context, Handler handler, mx mxVar, px pxVar) {
        handler.post(new az(context, pxVar, mxVar, handler));
    }

    private void e() {
        ql qlVar = a;
        new StringBuilder("updating ").append(this.i).toString();
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new RuntimeException("<Overlay><5>, You can only manipulate an overlay from the main thread");
        } else if (this.c.e) {
            a(this.e, this.d, new ax(this), new ay(this));
        }
    }

    static /* synthetic */ boolean h(ap apVar) {
        int rotation = apVar.b.getDefaultDisplay().getRotation();
        int height = apVar.b.getDefaultDisplay().getHeight();
        int width = apVar.b.getDefaultDisplay().getWidth();
        if (rotation == 3 || rotation == 1) {
            return width < height;
        } else if (height >= width) {
            return false;
        } else {
            return true;
        }
    }

    public void a() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new RuntimeException("<Overlay><6>, You can only hide an overlay from the main thread");
        }
        this.c.e = false;
        this.f.disable();
        if (this.g != null) {
            try {
                this.b.removeViewImmediate(this.g);
            } catch (Throwable th) {
                ql qlVar = a;
            }
        }
    }

    public final void a(int i) {
        this.c.c = 0;
        e();
    }

    public void a(bc bcVar) {
        ql qlVar = a;
        new StringBuilder("LOCK PORTRAIT ").append(bcVar).append(" ").append(this).toString();
        this.k = bcVar;
        if (bcVar == bc.a) {
            if (!(this.i == 1 || this.i == 9)) {
                this.i = 1;
            }
        } else if (!(bcVar != bc.b || this.i == 0 || this.i == 8)) {
            this.i = 0;
        }
        qlVar = a;
        new StringBuilder("current orientation: ").append(this.i).toString();
        e();
    }

    public void a(mx mxVar) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new RuntimeException("<Overlay><3>, You can only show an overlay from the main thread");
        } else if (!this.c.e) {
            this.f.enable();
            this.c.e = true;
            a(this.e, this.d, new av(this, mxVar), new aw(this));
        } else if (mxVar != null) {
            mxVar.a(Boolean.valueOf(true));
        }
    }

    public void b() {
    }

    public final void b(int i) {
        this.c.d = 0;
        e();
    }

    @TargetApi(11)
    public final void c() {
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        if (Build.MODEL.toLowerCase(Locale.getDefault()).toLowerCase().equals("kfthwi")) {
            relativeLayout = this.g;
            relativeLayout2 = this.g;
            relativeLayout2 = this.g;
            relativeLayout.setSystemUiVisibility(1280);
        } else if (VERSION.SDK_INT >= 19) {
            relativeLayout = this.g;
            relativeLayout2 = this.g;
            relativeLayout2 = this.g;
            relativeLayout.setSystemUiVisibility(1028);
        } else if (VERSION.SDK_INT >= 19 || VERSION.SDK_INT <= 10) {
            int i = VERSION.SDK_INT;
        } else {
            relativeLayout = this.g;
            relativeLayout2 = this.g;
            relativeLayout2 = this.g;
            relativeLayout.setSystemUiVisibility(1028);
        }
    }

    public final void c(int i) {
        this.c.a = -1;
        e();
    }

    public final void d(int i) {
        this.c.b = -1;
        e();
    }

    public final void e(int i) {
        if (this.k == bc.c) {
            this.i = i;
        } else if (this.k == bc.a) {
            if (i == 9) {
                this.i = 9;
            } else {
                this.i = 1;
            }
        } else if (i == 8) {
            this.i = 8;
        } else {
            this.i = 0;
        }
    }
}