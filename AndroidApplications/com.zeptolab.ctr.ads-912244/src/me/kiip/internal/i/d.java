package me.kiip.internal.i;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.os.Handler;
import android.text.format.DateUtils;
import com.facebook.ads.internal.AdWebViewUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.SSLContext;
import me.kiip.internal.a.i;
import me.kiip.internal.a.l;
import me.kiip.internal.a.m;
import me.kiip.internal.a.n;
import me.kiip.internal.a.n.b;
import me.kiip.internal.a.s;
import me.kiip.internal.b.e;
import me.kiip.internal.c.g;
import me.kiip.internal.i.a.a;
import me.kiip.internal.l.e.c;
import me.kiip.sdk.Kiip;
import me.kiip.sdk.Kiip.Callback;
import me.kiip.sdk.Kiip.KiipAdapter;
import me.kiip.sdk.Kiip.OnContentListener;
import me.kiip.sdk.Kiip.OnPromoListener;
import me.kiip.sdk.Kiip.OnSwarmListener;
import me.kiip.sdk.KiipRuntimeException;
import me.kiip.sdk.Poptart;
import me.kiip.sdk.Promo;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class d extends Kiip {
    private static final String[] d;
    private static Long r;
    Handler a;
    a b;
    me.kiip.internal.l.d c;
    private boolean e;
    private LinkedList f;
    private int g;
    private LinkedList h;
    private final Runnable i;
    private Callback j;
    private final Runnable k;
    private Context l;
    private final SharedPreferences m;
    private g n;
    private m o;
    private int p;
    private long q;

    class AnonymousClass_3 implements a {
        final /* synthetic */ Callback a;

        AnonymousClass_3(Callback callback) {
            this.a = callback;
        }

        public void a(Exception exception) {
            if (this.a != null) {
                this.a.onFailed(d.this, exception);
            }
        }

        public void a(JSONObject jSONObject) {
            d.this.a(jSONObject, new me.kiip.internal.l.d.a() {
                public void a(me.kiip.internal.l.d dVar, Poptart poptart, Exception exception) {
                    if (exception != null) {
                    }
                    if (AnonymousClass_3.this != null) {
                        AnonymousClass_3.this.onFinished(AnonymousClass_3.this.b, poptart);
                    }
                }
            });
        }
    }

    class AnonymousClass_4 implements a {
        final /* synthetic */ Callback a;

        AnonymousClass_4(Callback callback) {
            this.a = callback;
        }

        public void a(Exception exception) {
            if (this.a != null) {
                this.a.onFailed(d.this, exception);
            }
        }

        public void a(JSONObject jSONObject) {
            d.this.a(jSONObject, new me.kiip.internal.l.d.a() {
                public void a(me.kiip.internal.l.d dVar, Poptart poptart, Exception exception) {
                    if (exception != null) {
                    }
                    if (AnonymousClass_4.this != null) {
                        AnonymousClass_4.this.onFinished(AnonymousClass_4.this.b, poptart);
                    }
                }
            });
        }
    }

    class AnonymousClass_5 implements b {
        final /* synthetic */ c a;
        final /* synthetic */ Context b;
        final /* synthetic */ OnPromoListener c;

        AnonymousClass_5(c cVar, Context context, OnPromoListener onPromoListener) {
            this.a = cVar;
            this.b = context;
            this.c = onPromoListener;
        }

        public void a(Bitmap bitmap) {
            this.a.a(bitmap);
            Promo promo = new Promo(this.b);
            promo.setParams(this.a);
            this.c.onPromo(d.this, promo);
            d.this.a(d.this.m.edit(), d.this.h, true);
        }
    }

    class AnonymousClass_6 implements n.a {
        final /* synthetic */ Context a;
        final /* synthetic */ OnPromoListener b;

        AnonymousClass_6(Context context, OnPromoListener onPromoListener) {
            this.a = context;
            this.b = onPromoListener;
        }

        public void a(s sVar) {
            d.this.getPromo(this.a, this.b);
        }
    }

    class AnonymousClass_7 implements a {
        final /* synthetic */ Callback a;

        AnonymousClass_7(Callback callback) {
            this.a = callback;
        }

        public void a(Exception exception) {
            if (this.a != null) {
                this.a.onFailed(d.this, exception);
            }
        }

        public void a(JSONObject jSONObject) {
            if (this.a != null) {
                this.a.onFinished(d.this, null);
            }
        }
    }

    class AnonymousClass_8 extends l {
        AnonymousClass_8(int i, String str, n.a aVar) {
            super(i, str, aVar);
        }

        protected n a(i iVar) {
            return n.a(iVar.b, e.a(iVar));
        }

        protected void a(byte[] bArr) {
        }
    }

    static {
        d = new String[]{Kiip.CAPABILITY_REAL, Kiip.CAPABILITY_SHARE, Kiip.CAPABILITY_PROMOS};
        r = Long.valueOf(0);
    }

    private d(Context context, String str, String str2) {
        this.e = true;
        this.f = new LinkedList();
        this.g = 0;
        this.h = new LinkedList();
        this.i = new Runnable() {
            public void run() {
                d.this.a(null);
            }
        };
        this.k = new Runnable() {
            public void run() {
                d.this.b(d.this.j);
                d.this.j = null;
            }
        };
        this.p = 0;
        this.l = context;
        this.a = new Handler();
        this.m = context.getSharedPreferences("me.kiip.sdk", 0);
        this.n = new g();
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            instance.init(null, null, null);
            this.n.a(instance.getSocketFactory());
            this.o = me.kiip.internal.b.l.a(context, new me.kiip.internal.n.c(this.n));
            l.a(false);
            try {
                this.n.a(new me.kiip.internal.c.e(new File(context.getCacheDir(), "me.kiip.sdk/http"), 4194304));
            } catch (IOException e) {
            }
            me.kiip.internal.o.a.a(this.n);
            this.b = new a(context, "http://api.kiip.me/2.0", Kiip.VERSION, str, str2, this.o);
            this.c = new me.kiip.internal.l.d(this.b);
            me.kiip.internal.l.e.a(this.b);
            this.a.postDelayed(this.i, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            a(false);
            a();
        } catch (GeneralSecurityException e2) {
            throw new AssertionError();
        }
    }

    public static Kiip a(Application application, String str, String str2) {
        return new d(application, str, str2);
    }

    private void a() {
        List arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(d));
        if (this.c.d() != null) {
            arrayList.add(Kiip.CAPABILITY_SWARM);
        }
        if (this.c.e() != null) {
            arrayList.add(Kiip.CAPABILITY_VIRTUAL);
        }
        this.b.a((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    private void a(Editor editor, List list, boolean z) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((c) it.next()).e());
            }
            a(editor, jSONArray, z);
        } catch (me.kiip.internal.l.e.a e) {
        } catch (JSONException e2) {
        }
    }

    private void a(Editor editor, JSONArray jSONArray, boolean z) {
        editor.putString(Kiip.CAPABILITY_PROMOS, jSONArray != null ? jSONArray.toString() : null);
        if (z) {
            editor.commit();
        }
    }

    private void a(String str) {
        if (Uri.parse(str).getHost() != null) {
            this.o.a(new AnonymousClass_8(0, str, null));
        }
    }

    private void a(String str, Double d, Callback callback) {
        if (!this.e) {
            callback.onFailed(this, new KiipRuntimeException("This application has been disabled"));
        } else if (this.f == null || !this.f.contains(str)) {
            this.b.a(str, d, new AnonymousClass_4(callback));
        } else {
            callback.onFailed(this, new KiipRuntimeException("This moment has been disabled"));
        }
    }

    private void a(Callback callback) {
        this.b.a(new AnonymousClass_3(callback));
    }

    private void a(JSONObject jSONObject) {
        boolean z;
        JSONArray optJSONArray;
        String str = null;
        JSONObject optJSONObject = jSONObject.optJSONObject("moments");
        z = optJSONObject == null || optJSONObject.optBoolean("enabled", true);
        optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("blacklist") : null;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("urls");
        JSONArray optJSONArray3 = jSONObject.optJSONArray(Kiip.CAPABILITY_PROMOS);
        int optInt = jSONObject.optInt("quiet_period", 0);
        Editor edit = this.m.edit();
        edit.putBoolean("moments.enabled", z);
        edit.putString("moments.blacklist", optJSONArray != null ? optJSONArray.toString() : null);
        String str2 = "urls";
        if (optJSONArray2 != null) {
            str = optJSONArray2.toString();
        }
        edit.putString(str2, str);
        edit.putInt("quiet.period", optInt);
        edit.putLong("last.saved.time.milliseconds", b().longValue());
        a(edit, optJSONArray3, false);
        edit.commit();
    }

    private void a(boolean z) {
        int i = 0;
        this.e = this.m.getBoolean("moments.enabled", true);
        r = Long.valueOf(this.m.getLong("last.saved.time.milliseconds", 0));
        try {
            JSONArray jSONArray = new JSONArray(this.m.getString("moments.blacklist", AdTrackerConstants.BLANK));
            int length = jSONArray.length();
            int i2 = 0;
            while (i2 < length) {
                this.f.add(jSONArray.optString(i2));
                i2++;
            }
        } catch (JSONException e) {
        }
        if (z) {
            try {
                jSONArray = new JSONArray(this.m.getString("urls", AdTrackerConstants.BLANK));
                length = jSONArray.length();
                i2 = 0;
                while (i2 < length) {
                    a(jSONArray.optString(i2));
                    i2++;
                }
            } catch (JSONException e2) {
            }
        }
        try {
            this.h.clear();
            this.g = 0;
            JSONArray jSONArray2 = new JSONArray(this.m.getString(Kiip.CAPABILITY_PROMOS, AdTrackerConstants.BLANK));
            int length2 = jSONArray2.length();
            while (i < length2) {
                try {
                    c a = c.a(jSONArray2.optJSONObject(i));
                    if (a.a(this.l)) {
                        if (z) {
                            a(a.a());
                        }
                        this.h.add(a);
                    }
                } catch (me.kiip.internal.l.e.a e3) {
                }
                i++;
            }
        } catch (JSONException e4) {
        }
    }

    private boolean a(int i) {
        Long b = b();
        Long valueOf = Long.valueOf(Long.valueOf((long) i).longValue() * 60000);
        return !DateUtils.isToday(r.longValue()) || b.longValue() - r.longValue() > valueOf.longValue();
    }

    private Long b() {
        return Long.valueOf(System.currentTimeMillis());
    }

    private void b(Callback callback) {
        this.b.a("session_end", Long.valueOf(this.q), Long.valueOf(System.currentTimeMillis()), null);
        this.b.b(new AnonymousClass_7(callback));
        this.b.a(null);
    }

    void a(JSONObject jSONObject, me.kiip.internal.l.d.a aVar) {
        if (jSONObject != null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("cache");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("view");
            if (optJSONObject != null) {
                a(optJSONObject);
                a(true);
            }
            if (optJSONObject2 != null) {
                this.c.a(optJSONObject2, aVar);
            } else {
                aVar.a(null, null, null);
            }
        } else {
            aVar.a(null, null, null);
        }
    }

    public boolean endSession(Callback callback) {
        this.p--;
        if (this.p <= 0) {
            this.p = 0;
            this.j = callback;
            this.a.postDelayed(this.k, 2000);
            return true;
        } else if (callback == null) {
            return false;
        } else {
            callback.onFinished(null, null);
            return false;
        }
    }

    public String getAlias() {
        return this.c.c();
    }

    public Date getBirthday() {
        return this.b.g();
    }

    public String[] getCapabilities() {
        return this.b.e();
    }

    public String getDeviceIdentifier() {
        return this.b.c();
    }

    public String getEmail() {
        return this.c.b();
    }

    public String getGender() {
        return this.b.f();
    }

    public void getPromo(Context context, OnPromoListener onPromoListener) {
        if (context == null) {
            throw new RuntimeException(AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        } else if (onPromoListener == null) {
            throw new RuntimeException("listener cannot be null");
        } else if (this.h.size() <= 0 || this.g >= this.h.size()) {
            this.b.a("cross_promo_none", null, null, null);
            onPromoListener.onPromo(this, null);
            a(this.m.edit(), this.h, true);
        } else {
            c cVar = (c) this.h.get(this.g);
            if ((cVar.c() || cVar.d()) && (cVar.b() == 0 || context.getResources().getConfiguration().orientation == cVar.b())) {
                this.h.remove(this.g);
                if (cVar.c() || !cVar.d()) {
                    this.o.a(new me.kiip.internal.n.a(cVar.a(), new AnonymousClass_5(cVar, context, onPromoListener), 0, 0, Config.ARGB_8888, new AnonymousClass_6(context, onPromoListener)));
                } else {
                    getPromo(context, onPromoListener);
                }
            } else {
                this.g++;
                getPromo(context, onPromoListener);
            }
        }
    }

    public void saveMoment(String str, double d, Callback callback) {
        a(str, Double.valueOf(d), callback);
    }

    public void saveMoment(String str, Callback callback) {
        a(str, null, callback);
    }

    public void setAdapter(KiipAdapter kiipAdapter) {
        this.c.a(kiipAdapter);
    }

    public void setAlias(String str) {
        this.c.b(str);
    }

    public void setBirthday(Date date) {
        this.b.a(date);
    }

    public void setCapabilities(String[] strArr) {
        this.b.a(strArr);
    }

    public void setEmail(String str) {
        this.c.a(str);
    }

    public void setGender(String str) {
        this.b.c(str);
    }

    public void setOnContentListener(OnContentListener onContentListener) {
        this.c.a(onContentListener);
        a();
    }

    public void setOnSwarmListener(OnSwarmListener onSwarmListener) {
        this.c.a(onSwarmListener);
        a();
    }

    public void setWrapper(String str) {
        this.b.b(str);
    }

    public boolean startSession(Callback callback) {
        this.p++;
        if (this.p <= 1) {
            if (this.j != null) {
                this.j.onFinished(null, null);
                this.j = null;
            }
            this.a.removeCallbacks(this.i);
            this.a.removeCallbacks(this.k);
            if (this.b.d() != null) {
                callback.onFinished(null, null);
                return false;
            } else {
                this.b.a(a.a());
                this.q = b().longValue();
                this.b.a("session_start", Long.valueOf(this.q), null, null);
                int i = this.m.getInt("quiet.period", 0);
                if (i == 0 || a(i)) {
                    a(callback);
                }
                return true;
            }
        } else if (callback == null) {
            return false;
        } else {
            callback.onFinished(null, null);
            return false;
        }
    }
}