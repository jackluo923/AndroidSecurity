package me.kiip.internal.a;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public abstract class l implements Comparable {
    private static boolean a;
    private final a b;
    private final int c;
    private final String d;
    private final int e;
    private final me.kiip.internal.a.n.a f;
    private Integer g;
    private m h;
    private boolean i;
    private boolean j;
    private boolean k;
    private long l;
    private p m;
    private me.kiip.internal.a.b.a n;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ long b;

        AnonymousClass_1(String str, long j) {
            this.a = str;
            this.b = j;
        }

        public void run() {
            l.this.b.a(this.a, this.b);
            l.this.b.a(toString());
        }
    }

    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE;

        static {
            a = new me.kiip.internal.a.l.a("LOW", 0);
            b = new me.kiip.internal.a.l.a("NORMAL", 1);
            c = new me.kiip.internal.a.l.a("HIGH", 2);
            d = new me.kiip.internal.a.l.a("IMMEDIATE", 3);
            e = new me.kiip.internal.a.l.a[]{a, b, c, d};
        }
    }

    static {
        a = true;
    }

    public l(int i, String str, me.kiip.internal.a.n.a aVar) {
        this.b = a.a ? new a() : null;
        this.i = a;
        this.j = false;
        this.k = false;
        this.l = 0;
        this.n = null;
        this.c = i;
        this.d = str;
        this.f = aVar;
        a(new d());
        this.e = TextUtils.isEmpty(str) ? 0 : Uri.parse(str).getHost().hashCode();
    }

    public static void a(boolean z) {
        a = z;
    }

    private byte[] a(Map map, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                stringBuilder.append(URLEncoder.encode((String) entry.getKey(), str));
                stringBuilder.append('=');
                stringBuilder.append(URLEncoder.encode((String) entry.getValue(), str));
                stringBuilder.append('&');
            }
            return stringBuilder.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    public int a() {
        return this.c;
    }

    public int a(l lVar) {
        a q = q();
        a q2 = lVar.q();
        return q == q2 ? this.g.intValue() - lVar.g.intValue() : q2.ordinal() - q.ordinal();
    }

    protected abstract n a(i iVar);

    protected s a(s sVar) {
        return sVar;
    }

    public final void a(int i) {
        this.g = Integer.valueOf(i);
    }

    protected abstract void a(Object obj);

    public void a(String str) {
        if (a.a) {
            this.b.a(str, Thread.currentThread().getId());
        } else if (this.l == 0) {
            this.l = SystemClock.elapsedRealtime();
        }
    }

    public void a(me.kiip.internal.a.b.a aVar) {
        this.n = aVar;
    }

    public void a(m mVar) {
        this.h = mVar;
    }

    public void a(p pVar) {
        this.m = pVar;
    }

    public int b() {
        return this.e;
    }

    void b(String str) {
        if (this.h != null) {
            this.h.b(this);
        }
        long id;
        if (a.a) {
            id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new AnonymousClass_1(str, id));
            } else {
                this.b.a(str, id);
                this.b.a(toString());
            }
        } else {
            if (SystemClock.elapsedRealtime() - this.l >= 3000) {
                t.b("%d ms: %s", new Object[]{Long.valueOf(id), toString()});
            }
        }
    }

    public void b(s sVar) {
        if (this.f != null) {
            this.f.a(sVar);
        }
    }

    public String c() {
        return this.d;
    }

    public /* synthetic */ int compareTo(Object obj) {
        return a((l) obj);
    }

    public String d() {
        return c();
    }

    public me.kiip.internal.a.b.a e() {
        return this.n;
    }

    public boolean f() {
        return this.j;
    }

    public Map g() {
        return Collections.emptyMap();
    }

    protected Map h() {
        return l();
    }

    protected String i() {
        return m();
    }

    public String j() {
        return n();
    }

    public byte[] k() {
        Map h = h();
        return (h == null || h.size() <= 0) ? null : a(h, i());
    }

    protected Map l_() {
        return null;
    }

    protected String m() {
        return HTMLEncoder.ENCODE_NAME_DEFAULT;
    }

    public String n() {
        return "application/x-www-form-urlencoded; charset=" + m();
    }

    public byte[] o() {
        Map l = l();
        return (l == null || l.size() <= 0) ? null : a(l, m());
    }

    public final boolean p() {
        return this.i;
    }

    public a q() {
        return a.b;
    }

    public final int r() {
        return this.m.a();
    }

    public p s() {
        return this.m;
    }

    public void t() {
        this.k = true;
    }

    public String toString() {
        return (this.j ? "[X] " : "[ ] ") + c() + " " + ("0x" + Integer.toHexString(b())) + " " + q() + " " + this.g;
    }

    public boolean u() {
        return this.k;
    }
}