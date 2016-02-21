package me.kiip.internal.l;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.sdk.VunglePub.Gender;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.ref.WeakReference;
import java.text.ParseException;
import me.kiip.sdk.Promo;
import me.kiip.sdk.Promo.PromoParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class e {
    private static me.kiip.internal.i.a a;
    private final Context b;
    private final Promo c;
    private c d;
    private Dialog e;
    private OnShowListener f;
    private OnDismissListener g;
    private me.kiip.internal.i.a h;
    private long i;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    private static class b extends me.kiip.internal.i.b {
        OnClickListener a;
        private RelativeLayout b;
        private ImageView c;
        private Button d;
        private Button e;
        private RectF f;
        private RectF g;
        private Matrix h;
        private RectF i;
        private RectF j;
        private int k;
        private Bitmap l;
        private RectF m;
        private RectF n;
        private Handler o;
        private Message p;
        private Message q;

        class AnonymousClass_2 extends ImageView {
            AnonymousClass_2(Context context) {
                super(context);
            }

            protected boolean setFrame(int i, int i2, int i3, int i4) {
                boolean frame = super.setFrame(i, i2, i3, i4);
                b.this.c();
                return frame;
            }
        }

        private static final class a extends Handler {
            private WeakReference a;

            public a(DialogInterface dialogInterface) {
                this.a = new WeakReference(dialogInterface);
            }

            public void handleMessage(Message message) {
                switch (message.what) {
                    case ConfigException.MISSING_CONFIG_CHANGES:
                    case ConfigException.MISSING_ACTIVITY_DECLARATION:
                    case Gender.UNKNOWN:
                        ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.a.get(), message.what);
                    case GoogleScorer.CLIENT_GAMES:
                        ((DialogInterface) message.obj).dismiss();
                    default:
                        break;
                }
            }
        }

        public b(Context context) {
            super(context);
            this.a = new OnClickListener() {
                public void onClick(View view) {
                    Message message = null;
                    if (view == b.this.d && b.this.p != null) {
                        message = Message.obtain(b.this.p);
                    } else if (view == b.this.e && b.this.q != null) {
                        message = Message.obtain(b.this.q);
                    }
                    if (message != null) {
                        message.sendToTarget();
                    }
                    b.this.o.obtainMessage(1, b.this).sendToTarget();
                }
            };
            a();
        }

        private void a() {
            Context context = getContext();
            this.o = new a(this);
            this.f = new RectF();
            this.g = new RectF();
            this.h = new Matrix();
            this.m = new RectF();
            this.n = new RectF();
            this.i = new RectF();
            this.j = new RectF();
            this.b = new RelativeLayout(context);
            this.c = new AnonymousClass_2(context);
            this.d = new Button(context);
            this.e = new Button(context);
            this.b.addView(this.c);
            this.b.addView(this.d);
            this.b.addView(this.e);
        }

        private void b_() {
            Context context = getContext();
            int identifier = context.getResources().getIdentifier("promo", AnalyticsEvent.EVENT_ID, context.getPackageName());
            if (identifier != 0) {
                this.b.setId(identifier);
            }
            this.b.setGravity(ZBuildConfig.$targetsdk);
            this.c.setScaleType(ScaleType.FIT_CENTER);
            this.c.setImageBitmap(this.l);
            this.d.setId(16908313);
            this.d.setOnClickListener(this.a);
            this.e.setId(16908314);
            this.e.setOnClickListener(this.a);
            this.d.setBackgroundColor(0);
            this.e.setBackgroundColor(0);
        }

        private void c() {
            Drawable drawable = this.c.getDrawable();
            if (drawable != null) {
                int width = this.c.getWidth() - this.c.getPaddingLeft() - this.c.getPaddingRight();
                int height = this.c.getHeight() - this.c.getPaddingTop() - this.c.getPaddingBottom();
                this.f.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
                this.g.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) width, (float) height);
                this.h.setRectToRect(this.f, this.g, ScaleToFit.CENTER);
                this.h.mapRect(this.i, this.m);
                this.h.mapRect(this.j, this.n);
                LayoutParams layoutParams = (LayoutParams) this.d.getLayoutParams();
                layoutParams.leftMargin = (int) this.i.left;
                layoutParams.topMargin = (int) this.i.top;
                layoutParams.width = (int) this.i.width();
                layoutParams.height = (int) this.i.height();
                this.b.updateViewLayout(this.d, layoutParams);
                layoutParams = (LayoutParams) this.e.getLayoutParams();
                layoutParams.leftMargin = (int) this.j.left;
                layoutParams.topMargin = (int) this.j.top;
                layoutParams.width = (int) this.j.width();
                layoutParams.height = (int) this.j.height();
                this.b.updateViewLayout(this.e, layoutParams);
            }
        }

        public void a(int i) {
            this.k = i;
        }

        public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
            if (message == null && onClickListener != null) {
                message = this.o.obtainMessage(i, onClickListener);
            }
            switch (i) {
                case ConfigException.MISSING_ACTIVITY_DECLARATION:
                    this.q = message;
                case Gender.UNKNOWN:
                    this.p = message;
                default:
                    throw new IllegalArgumentException("Button does not exist");
            }
        }

        public void a(Bitmap bitmap) {
            this.l = bitmap;
        }

        public void a(Rect rect, DialogInterface.OnClickListener onClickListener) {
            this.m.set(rect);
            a(-1, null, onClickListener, null);
        }

        public void b_(Rect rect, DialogInterface.OnClickListener onClickListener) {
            this.n.set(rect);
            a(ConfigException.MISSING_ACTIVITY_DECLARATION, null, onClickListener, null);
        }

        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(this.b);
            b();
        }

        public void show() {
            super.show();
            Animation animation = null;
            switch (this.k) {
                case GoogleScorer.CLIENT_GAMES:
                case GoogleScorer.CLIENT_APPSTATE:
                    animation = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    animation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    animation = new AlphaAnimation(0.0f, 1.0f);
                    break;
            }
            if (animation != null) {
                animation.setDuration(300);
                this.b.startAnimation(animation);
            }
        }
    }

    public static final class c extends PromoParams {
        private static final me.kiip.internal.j.a l;
        protected String a;
        protected String b;
        protected String c;
        protected String d;
        protected int e;
        protected long f;
        protected long g;
        protected int h;
        protected Rect i;
        protected Rect j;
        protected Bitmap k;

        static {
            l = new me.kiip.internal.j.a();
        }

        private c() {
        }

        private static int a(String str) {
            if (str.toLowerCase().equals(DeviceInfo.ORIENTATION_PORTRAIT)) {
                return 1;
            }
            if (str.toLowerCase().equals(DeviceInfo.ORIENTATION_LANDSCAPE)) {
                return GoogleScorer.CLIENT_PLUS;
            }
            if (str.toLowerCase().equals("universal")) {
                return 0;
            }
            throw new me.kiip.internal.l.e.a("Invalid orientation: " + str);
        }

        private static Rect a(JSONArray jSONArray) {
            if (jSONArray.length() != 4) {
                throw new me.kiip.internal.l.e.a("Invalid array size. Expecting 4, got " + jSONArray.length());
            }
            int i = jSONArray.getInt(0);
            int i2 = jSONArray.getInt(1);
            return new Rect(i, i2, jSONArray.getInt(GoogleScorer.CLIENT_PLUS) + i, jSONArray.getInt(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) + i2);
        }

        private static String a(int i) {
            switch (i) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return "universal";
                case GoogleScorer.CLIENT_GAMES:
                    return DeviceInfo.ORIENTATION_PORTRAIT;
                case GoogleScorer.CLIENT_PLUS:
                    return DeviceInfo.ORIENTATION_LANDSCAPE;
                default:
                    throw new me.kiip.internal.l.e.a("Invalid orientation: " + i);
            }
        }

        public static me.kiip.internal.l.e.c a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                me.kiip.internal.l.e.c cVar = new me.kiip.internal.l.e.c();
                cVar.a = jSONObject.getString(AnalyticsEvent.EVENT_ID);
                cVar.b = jSONObject.getString("image_url");
                cVar.c = jSONObject.getString("app_url");
                cVar.d = jSONObject.getString("package_name");
                cVar.e = a(jSONObject.getString("orientation"));
                cVar.h = 0;
                String optString = jSONObject.optString("animation_type");
                if (optString.equals("slide_from_left")) {
                    cVar.h = 1;
                } else if (optString.equals("slide_from_top")) {
                    cVar.h = 2;
                } else if (optString.equals("fade_in")) {
                    cVar.h = 3;
                } else if (optString.equals("slide_from_left_3d")) {
                    cVar.h = 4;
                } else if (optString.equals("slide_from_top_3d")) {
                    cVar.h = 5;
                }
                cVar.f = l.parse(jSONObject.getString("start_date")).getTime();
                cVar.g = l.parse(jSONObject.getString("end_date")).getTime();
                cVar.i = a(jSONObject.getJSONArray("open_rect"));
                cVar.j = a(jSONObject.getJSONArray("close_rect"));
                return cVar;
            } catch (JSONException e) {
                throw new me.kiip.internal.l.e.a(e.getMessage());
            } catch (ParseException e2) {
                throw new me.kiip.internal.l.e.a(e2.getMessage());
            } catch (me.kiip.internal.l.e.a e3) {
                throw new me.kiip.internal.l.e.a(e3.getMessage());
            }
        }

        private static JSONArray a(Rect rect) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(rect.left);
            jSONArray.put(rect.top);
            jSONArray.put(rect.width());
            jSONArray.put(rect.height());
            return jSONArray;
        }

        public String a() {
            return this.b;
        }

        public void a(Bitmap bitmap) {
            this.k = bitmap;
        }

        public boolean a(Context context) {
            return !d() && !me.kiip.internal.k.c.a(context, this.d);
        }

        public int b() {
            return this.e;
        }

        public boolean c_() {
            long currentTimeMillis = System.currentTimeMillis();
            return this.f < currentTimeMillis && currentTimeMillis < this.g;
        }

        public boolean d() {
            return this.g < System.currentTimeMillis();
        }

        public JSONObject e() {
            Object obj;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AnalyticsEvent.EVENT_ID, this.a);
            jSONObject.put("image_url", this.b);
            jSONObject.put("app_url", this.c);
            jSONObject.put("package_name", this.d);
            jSONObject.put("orientation", a(this.e));
            switch (this.h) {
                case GoogleScorer.CLIENT_GAMES:
                    obj = "slide_from_left";
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    obj = "slide_from_top";
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    obj = "fade_in";
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    obj = "slide_from_left_3d";
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    obj = "slide_from_top_3d";
                    break;
                default:
                    obj = null;
                    break;
            }
            if (obj != null) {
                jSONObject.put("animation_type", obj);
            }
            jSONObject.put("start_date", l.format(Long.valueOf(this.f)));
            jSONObject.put("end_date", l.format(Long.valueOf(this.g)));
            jSONObject.put("open_rect", a(this.i));
            jSONObject.put("close_rect", a(this.j));
            return jSONObject;
        }
    }

    public e(Context context, Promo promo) {
        this.h = a;
        this.b = context;
        this.c = promo;
    }

    private void a(String str, Long l, Long l2) {
        if (this.h != null) {
            Bundle bundle = new Bundle();
            bundle.putString("promo_id", this.d.a);
            this.h.a(str, l, l2, bundle);
        }
    }

    public static void a(me.kiip.internal.i.a aVar) {
        a = aVar;
    }

    public c a() {
        return this.d;
    }

    public void a(OnDismissListener onDismissListener) {
        this.g = onDismissListener;
    }

    public void a(OnShowListener onShowListener) {
        this.f = onShowListener;
    }

    public void a(c cVar) {
        this.d = cVar;
    }

    public void b() {
        if (this.d.c() && (this.d.b() == 0 || this.b.getResources().getConfiguration().orientation == this.d.b())) {
            if (this.e == null) {
                DialogInterface.OnClickListener anonymousClass_1 = new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        switch (i) {
                            case ConfigException.MISSING_ACTIVITY_DECLARATION:
                                e.this.a("cross_promo_close", Long.valueOf(e.this.i), Long.valueOf(System.currentTimeMillis()));
                            case Gender.UNKNOWN:
                                Context context = ((Dialog) dialogInterface).getContext();
                                try {
                                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + e.this.d.d)));
                                } catch (ActivityNotFoundException e) {
                                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + e.this.d.d)));
                                }
                                e.this.a("cross_promo_open", Long.valueOf(e.this.i), Long.valueOf(System.currentTimeMillis()));
                            default:
                                break;
                        }
                    }
                };
                Dialog bVar = new b(this.b);
                bVar.a(this.d.h);
                bVar.a(this.d.k);
                bVar.a(this.d.i, anonymousClass_1);
                bVar.b(this.d.j, anonymousClass_1);
                bVar.setOnShowListener(new OnShowListener() {
                    public void onShow(DialogInterface dialogInterface) {
                        e.this.i = System.currentTimeMillis();
                        e.this.a("cross_promo_show", Long.valueOf(e.this.i), null);
                        if (e.this.f != null) {
                            e.this.f.onShow(e.this.c);
                        }
                    }
                });
                bVar.setOnDismissListener(new OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                        if (e.this.g != null) {
                            e.this.g.onDismiss(e.this.c);
                        }
                    }
                });
                this.e = bVar;
            }
            this.e.show();
        } else if (this.g != null) {
            this.g.onDismiss(this.c);
        }
    }

    public void c() {
        this.e.dismiss();
    }
}