package me.kiip.internal.l;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import me.kiip.internal.i.e;
import me.kiip.sdk.Modal;
import me.kiip.sdk.Notification;
import me.kiip.sdk.Poptart;
import org.json.JSONException;
import org.json.JSONObject;

final class c extends Poptart {
    private d a;
    private String b;
    private b c;
    private a d;
    private OnShowListener e;
    private OnDismissListener f;
    private boolean g;
    private long h;
    private long i;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ b a;
        final /* synthetic */ Context b;
        final /* synthetic */ boolean c;

        AnonymousClass_1(b bVar, Context context, boolean z) {
            this.a = bVar;
            this.b = context;
            this.c = z;
        }

        public void run() {
            if (this.a.g) {
                c.this.a("notification_click", Long.valueOf(c.this.h), Long.valueOf(System.currentTimeMillis()), c.this.a());
                c.this.a(this.b, this.c);
            } else {
                c.this.a("notification_dismiss", Long.valueOf(c.this.h), Long.valueOf(System.currentTimeMillis()), c.this.a());
                c.this.d();
            }
            c.this.c = null;
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ long a;

        AnonymousClass_2(long j) {
            this.a = j;
        }

        public void run() {
            c.this.a("modal_load", Long.valueOf(this.a), Long.valueOf(System.currentTimeMillis()), c.this.a());
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ a a;
        final /* synthetic */ long b;

        AnonymousClass_3(a aVar, long j) {
            this.a = aVar;
            this.b = j;
        }

        public void run() {
            e eVar = this.a.i;
            if (this.a.g) {
                c.this.a("modal_error", Long.valueOf(this.b), Long.valueOf(System.currentTimeMillis()), c.this.a());
            } else if (eVar != null) {
                c.this.a("modal_webview_error", Long.valueOf(this.b), Long.valueOf(System.currentTimeMillis()), c.this.a(), String.valueOf(eVar.a()), eVar.getMessage(), eVar.b());
            }
        }
    }

    class AnonymousClass_4 implements Runnable {
        final /* synthetic */ a a;

        AnonymousClass_4(a aVar) {
            this.a = aVar;
        }

        public void run() {
            if (this.a.f) {
                c.this.a("modal_cancel", Long.valueOf(c.this.i), Long.valueOf(System.currentTimeMillis()), c.this.a());
            } else {
                c.this.a("modal_dismiss", Long.valueOf(c.this.i), Long.valueOf(System.currentTimeMillis()), c.this.a());
                if (this.a.h) {
                    c.this.a("url_opened", Long.valueOf(c.this.i), Long.valueOf(System.currentTimeMillis()), c.this.a());
                }
            }
            c.this.d();
            c.this.d = null;
        }
    }

    private c(d dVar, String str, b bVar, a aVar) {
        this.a = dVar;
        this.b = str;
        this.c = bVar;
        this.d = aVar;
    }

    static c a(d dVar, JSONObject jSONObject) {
        b a;
        a aVar = null;
        JSONObject optJSONObject = jSONObject.optJSONObject("notification");
        JSONObject jSONObject2 = jSONObject.getJSONObject("modal");
        if (optJSONObject != null) {
            try {
                a = b.a(optJSONObject);
            } catch (JSONException e) {
                a = null;
            }
        } else {
            a = null;
        }
        if (jSONObject2 != null) {
            aVar = a.a(jSONObject2);
        }
        return new c(dVar, jSONObject.getString(AnalyticsEvent.EVENT_ID), a, aVar);
    }

    private void a(Context context, boolean z) {
        a aVar = this.d;
        if (aVar != null) {
            if (this.i <= 0) {
                this.i = System.currentTimeMillis();
                a("modal_show", Long.valueOf(this.i), null, a());
            }
            long currentTimeMillis = System.currentTimeMillis();
            aVar.e = this.a.a();
            aVar.a(context, z, new AnonymousClass_2(currentTimeMillis), new AnonymousClass_3(aVar, currentTimeMillis), new AnonymousClass_4(aVar));
        } else {
            d();
        }
    }

    private void a(String str, Long l, Long l2, String str2) {
        a(str, l, l2, str2, null, null, null);
    }

    private void a(String str, Long l, Long l2, String str2, String str3, String str4, String str5) {
        this.a.a(str, l, l2, str2, str3, str4, str5);
    }

    private void d() {
        this.g = false;
        if (this.f != null) {
            this.f.onDismiss(this);
        }
    }

    public String a() {
        return this.b;
    }

    public void a(boolean z) {
        if (this.g) {
            if (z) {
                this.g = false;
            }
            if (this.c != null) {
                this.c.a(z);
            } else if (this.d != null) {
                this.d.a(z);
            }
        }
    }

    public b b() {
        return this.c;
    }

    public a c_() {
        return this.d;
    }

    public void cancel() {
        a(true);
    }

    public void dismiss() {
        a(false);
    }

    public /* synthetic */ Modal getModal() {
        return c();
    }

    public /* synthetic */ Notification getNotification() {
        return b();
    }

    public boolean isShowing() {
        return this.g;
    }

    public void setNotification(Notification notification) {
        if (notification != null) {
            throw new RuntimeException("You may only set the notification to be null");
        }
        this.c = (b) notification;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.f = onDismissListener;
    }

    public void setOnShowListener(OnShowListener onShowListener) {
        this.e = onShowListener;
    }

    public void show(Context context) {
        show(context, true);
    }

    public void show(Context context, boolean z) {
        if (!this.g) {
            this.g = true;
            if (this.e != null) {
                this.e.onShow(this);
            }
            b bVar = this.c;
            if (bVar != null) {
                if (this.h <= 0) {
                    this.h = System.currentTimeMillis();
                    a("notification_show", Long.valueOf(this.h), null, a());
                }
                if (bVar.a() == null) {
                    bVar.a(context);
                    bVar.setContentView(this.a.a(context, this));
                }
                bVar.a(context, z, new AnonymousClass_1(bVar, context, z));
            } else {
                a(context, z);
            }
        }
    }
}