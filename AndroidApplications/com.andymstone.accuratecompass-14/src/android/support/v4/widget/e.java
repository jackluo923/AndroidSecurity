package android.support.v4.widget;

import android.view.View;
import com.andymstone.core.o;

class e extends ad {
    final /* synthetic */ DrawerLayout a;
    private final int b;
    private aa c;
    private final Runnable d;

    public e(DrawerLayout drawerLayout, int i) {
        this.a = drawerLayout;
        this.d = new f(this);
        this.b = i;
    }

    private void b() {
        int i = o.MyAlertDialog_MAD_titleStyle;
        if (this.b == 3) {
            i = o.MyAlertDialog_MAD_textAppearanceMedium;
        }
        View a = this.a.a(i);
        if (a != null) {
            this.a.i(a);
        }
    }

    private void c() {
        View view;
        int i;
        int i2 = 0;
        int b = this.c.b();
        int i3 = this.b == 3;
        if (i3 != 0) {
            View a = this.a.a((int)o.MyAlertDialog_MAD_titleStyle);
            if (a != null) {
                i2 = -a.getWidth();
            }
            i2 += b;
            view = a;
            i = i2;
        } else {
            i2 = this.a.getWidth() - b;
            view = this.a.a((int)o.MyAlertDialog_MAD_textAppearanceMedium);
            i = i2;
        }
        if (view == null) {
            return;
        }
        if (((i3 != 0 && view.getLeft() < i) || (i3 == 0 && view.getLeft() > i)) && this.a.a(view) == 0) {
            c cVar = (c) view.getLayoutParams();
            this.c.a(view, i, view.getTop());
            cVar.c = true;
            this.a.invalidate();
            b();
            this.a.c();
        }
    }

    public int a(View view) {
        return view.getWidth();
    }

    public int a(View view, int i, int i2) {
        if (this.a.a(view, (int)o.MyAlertDialog_MAD_titleStyle)) {
            return Math.max(-view.getWidth(), Math.min(i, 0));
        }
        int width = this.a.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i, width));
    }

    public void a() {
        this.a.removeCallbacks(this.d);
    }

    public void a(int i) {
        this.a.a(this.b, i, this.c.c());
    }

    public void a(int i, int i2) {
        this.a.postDelayed(this.d, 160);
    }

    public void a(aa aaVar) {
        this.c = aaVar;
    }

    public void a(View view, float f, float f2) {
        int width;
        float d = this.a.d(view);
        int width2 = view.getWidth();
        if (!this.a.a(view, (int)o.MyAlertDialog_MAD_titleStyle)) {
            width = this.a.getWidth();
            if (f < 0.0f || (f == 0.0f && d < 0.5f)) {
                width -= width2;
            }
        } else if (f > 0.0f || (f == 0.0f && d > 0.5f)) {
            width = 0;
        } else {
            width = -width2;
        }
        this.c.a(width, view.getTop());
        this.a.invalidate();
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        float width;
        int width2 = view.getWidth();
        width = this.a.a(view, (int)o.MyAlertDialog_MAD_titleStyle) ? ((float) (width2 + i)) / ((float) width2) : ((float) (this.a.getWidth() - i)) / ((float) width2);
        this.a.b(view, width);
        view.setVisibility(width == 0.0f ? o.MyAlertDialog_MAD_buttonBarStyle : 0);
        this.a.invalidate();
    }

    public boolean a(View view, int i) {
        return this.a.g(view) && this.a.a(view, this.b) && this.a.a(view) == 0;
    }

    public int b(View view, int i, int i2) {
        return view.getTop();
    }

    public void b(int i, int i2) {
        View a = (i & 1) == 1 ? this.a.a((int)o.MyAlertDialog_MAD_titleStyle) : this.a.a((int)o.MyAlertDialog_MAD_textAppearanceMedium);
        if (a != null && this.a.a(a) == 0) {
            this.c.a(a, i2);
        }
    }

    public void b(View view, int i) {
        ((c) view.getLayoutParams()).c = false;
        b();
    }

    public boolean b(int i) {
        return false;
    }
}