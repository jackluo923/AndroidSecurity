package me.kiip.internal.l;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import com.brightcove.player.media.ErrorFields;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import me.kiip.sdk.Notification;
import me.kiip.sdk.Notification.OnDismissListener;
import me.kiip.sdk.Notification.OnShowListener;
import org.json.JSONObject;

public class b extends Notification implements OnClickListener {
    private static final LayoutParams h;
    String a;
    String b;
    String c;
    int d;
    int e;
    Bitmap f;
    boolean g;
    private boolean i;
    private WindowManager j;
    private FrameLayout k;
    private LayoutParams l;
    private View m;
    private Animation n;
    private Animation o;
    private Handler p;
    private Runnable q;
    private Runnable r;
    private OnShowListener s;
    private Notification.OnClickListener t;
    private OnDismissListener u;

    private static class a extends FrameLayout {
        public a(Context context) {
            super(context);
        }
    }

    static {
        h = new LayoutParams(-2, -2, 0, 0, 2, 40, -3);
    }

    private b(String str, String str2, String str3, int i, int i2) {
        this.q = new Runnable() {
            public void run() {
                b.this.a(false);
            }
        };
        this.g = false;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = i2;
    }

    static b a(JSONObject jSONObject) {
        int i = ApiEventType.API_MRAID_HIDE_VIDEO;
        String optString = jSONObject.optString("position");
        if (!optString.toLowerCase().equals("top") && optString.toLowerCase().equals("bottom")) {
            i = 80;
        }
        return new b(jSONObject.getString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE), jSONObject.getString(ErrorFields.MESSAGE), jSONObject.optString("icon_url", null), i, jSONObject.optInt("timeout", R.styleable.MapAttrs_uiZoomControls) * 1000);
    }

    private void c() {
        this.k.removeAllViews();
        this.m = null;
        if (this.k.getParent() != null) {
            this.j.removeView(this.k);
        }
        this.i = false;
    }

    public View a() {
        return this.m;
    }

    void a(Context context) {
        this.k = new a(context);
        this.k.setOnClickListener(this);
    }

    void a(Context context, boolean z, Runnable runnable) {
        if (!this.i) {
            float f;
            this.i = true;
            this.p = new Handler();
            this.j = (WindowManager) context.getSystemService("window");
            this.r = runnable;
            this.l = new LayoutParams();
            this.l.copyFrom(h);
            this.l.setTitle("[Kiip] Notification");
            this.l.gravity = (this.d & 48) | (this.d & 80);
            ViewGroup.LayoutParams layoutParams = this.m.getLayoutParams();
            if (layoutParams != null) {
                this.l.width = layoutParams.width;
            }
            f = ((this.d & 48) == 48 ? 1 : 0) != 0 ? GroundOverlayOptions.NO_DIMENSION : 1.0f;
            this.n = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, f, 1, 0.0f);
            this.o = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, f);
            this.n.setDuration(300);
            this.o.setDuration(300);
            if (this.s != null) {
                this.s.onShow(this);
            }
            this.k.addView(this.m);
            this.j.addView(this.k, this.l);
            if (z) {
                this.m.startAnimation(this.n);
            }
            if (this.e > 0) {
                this.p.postDelayed(this.q, (long) this.e);
            }
        }
    }

    void a(boolean z) {
        if (this.i) {
            this.p.removeCallbacks(this.q);
            if (z) {
                c();
            } else {
                this.m.startAnimation(this.o);
                this.m.postDelayed(new Runnable() {
                    public void run() {
                        b.this.c();
                        if (b.this.u != null) {
                            b.this.u.onDismiss(b.this);
                        }
                        b.this.r.run();
                    }
                }, this.o.getDuration());
            }
        }
    }

    ViewGroup b_() {
        return this.k;
    }

    public int getGravity() {
        return this.d;
    }

    public Bitmap getIcon() {
        return this.f;
    }

    public String getMessage() {
        return this.b;
    }

    public String getTitle() {
        return this.a;
    }

    public boolean isShowing() {
        return this.i;
    }

    public void onClick(View view) {
        this.g = true;
        if (this.t != null) {
            this.t.onClick(this);
        }
        a(false);
    }

    public void setContentView(View view) {
        this.m = view;
    }

    public void setGravity(int i) {
        this.d = i;
    }

    public void setIcon(Bitmap bitmap) {
        this.f = bitmap;
    }

    public void setMessage(String str) {
        this.b = str;
    }

    public void setOnClickListener(Notification.OnClickListener onClickListener) {
        this.t = onClickListener;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.u = onDismissListener;
    }

    public void setOnShowListener(OnShowListener onShowListener) {
        this.s = onShowListener;
    }

    public void setTitle(String str) {
        this.a = str;
    }
}