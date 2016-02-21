package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import com.andymstone.core.o;

public class a {
    private static final c a;
    private final Object b;

    static {
        if ("JellyBeanMR2".equals(VERSION.CODENAME)) {
            a = new e();
        } else if (VERSION.SDK_INT >= 16) {
            a = new d();
        } else if (VERSION.SDK_INT >= 14) {
            a = new b();
        } else {
            a = new f();
        }
    }

    public a(Object obj) {
        this.b = obj;
    }

    public static a a_(a aVar) {
        return a(a.a(aVar.b));
    }

    static a a_(Object obj) {
        return obj != null ? new a(obj) : null;
    }

    private static String b(int i) {
        switch (i) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                return "ACTION_FOCUS";
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                return "ACTION_CLEAR_FOCUS";
            case o.MyAlertDialog_MAD_buttonBarStyle:
                return "ACTION_SELECT";
            case o.MyAlertDialog_MAD_messagePadding:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }

    public Object a_() {
        return this.b;
    }

    public void a_(int i) {
        a.a(this.b, i);
    }

    public void a_(Rect rect) {
        a.a(this.b, rect);
    }

    public void a_(View view) {
        a.c(this.b, view);
    }

    public void a_(CharSequence charSequence) {
        a.c(this.b, charSequence);
    }

    public void a_(boolean z) {
        a.c(this.b, z);
    }

    public int b() {
        return a.b(this.b);
    }

    public void b(Rect rect) {
        a.c(this.b, rect);
    }

    public void b(View view) {
        a.a(this.b, view);
    }

    public void b(CharSequence charSequence) {
        a.a(this.b, charSequence);
    }

    public void b(boolean z) {
        a.d(this.b, z);
    }

    public void c(Rect rect) {
        a.b(this.b, rect);
    }

    public void c(View view) {
        a.b(this.b, view);
    }

    public void c(CharSequence charSequence) {
        a.b(this.b, charSequence);
    }

    public void c(boolean z) {
        a.g(this.b, z);
    }

    public boolean c() {
        return a.g(this.b);
    }

    public void d(Rect rect) {
        a.d(this.b, rect);
    }

    public void d(boolean z) {
        a.h(this.b, z);
    }

    public boolean d() {
        return a.h(this.b);
    }

    public void e(boolean z) {
        a.f(this.b, z);
    }

    public boolean e() {
        return a.k(this.b);
    }

    public boolean equals(a aVar) {
        if (this == aVar) {
            return true;
        }
        if (aVar == null) {
            return false;
        }
        if (getClass() != aVar.getClass()) {
            return false;
        }
        aVar = aVar;
        if (this.b == null) {
            return aVar.b == null;
        } else if (this.b.equals(aVar.b)) {
            return true;
        } else {
            return false;
        }
    }

    public void f(boolean z) {
        a.a(this.b, z);
    }

    public boolean f() {
        return a.l(this.b);
    }

    public void g(boolean z) {
        a.e(this.b, z);
    }

    public boolean g() {
        return a.r(this.b);
    }

    public void h(boolean z) {
        a.b(this.b, z);
    }

    public boolean h() {
        return a.s(this.b);
    }

    public int hashCode() {
        return this.b == null ? 0 : this.b.hashCode();
    }

    public boolean i() {
        return a.p(this.b);
    }

    public boolean j() {
        return a.i(this.b);
    }

    public boolean k() {
        return a.m(this.b);
    }

    public boolean l() {
        return a.j(this.b);
    }

    public boolean m() {
        return a.n(this.b);
    }

    public boolean n() {
        return a.o(this.b);
    }

    public CharSequence o() {
        return a.e(this.b);
    }

    public CharSequence p() {
        return a.c(this.b);
    }

    public CharSequence q() {
        return a.f(this.b);
    }

    public CharSequence r() {
        return a.d(this.b);
    }

    public void s() {
        a.q(this.b);
    }

    public String t() {
        return a.t(this.b);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        stringBuilder.append("; boundsInParent: " + rect);
        c(rect);
        stringBuilder.append("; boundsInScreen: " + rect);
        stringBuilder.append("; packageName: ").append(o());
        stringBuilder.append("; className: ").append(p());
        stringBuilder.append("; text: ").append(q());
        stringBuilder.append("; contentDescription: ").append(r());
        stringBuilder.append("; viewId: ").append(t());
        stringBuilder.append("; checkable: ").append(c());
        stringBuilder.append("; checked: ").append(d());
        stringBuilder.append("; focusable: ").append(e());
        stringBuilder.append("; focused: ").append(f());
        stringBuilder.append("; selected: ").append(i());
        stringBuilder.append("; clickable: ").append(j());
        stringBuilder.append("; longClickable: ").append(k());
        stringBuilder.append("; enabled: ").append(l());
        stringBuilder.append("; password: ").append(m());
        stringBuilder.append("; scrollable: " + n());
        stringBuilder.append("; [");
        int b = b();
        while (b != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(b);
            b &= numberOfTrailingZeros ^ -1;
            stringBuilder.append(b(numberOfTrailingZeros));
            if (b != 0) {
                stringBuilder.append(", ");
            }
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}