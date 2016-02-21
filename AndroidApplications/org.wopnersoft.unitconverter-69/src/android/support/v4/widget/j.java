package android.support.v4.widget;

import android.view.View;
import com.actionbarsherlock.R;

// compiled from: ProGuard
class j extends ah {
    final /* synthetic */ DrawerLayout a;
    private final int b;
    private af c;
    private final Runnable d;

    private void b() {
        int i = R.styleable.SherlockTheme_actionBarTabTextStyle;
        if (this.b == 3) {
            i = R.styleable.SherlockTheme_actionBarStyle;
        }
        View a = this.a.a(i);
        if (a != null) {
            this.a.i(a);
        }
    }

    public int a(View view) {
        return view.getWidth();
    }

    public int a(View view, int i, int i2) {
        if (this.a.a(view, (int)R.styleable.SherlockTheme_actionBarTabTextStyle)) {
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

    public void a(View view, float f, float f2) {
        int width;
        float d = this.a.d(view);
        int width2 = view.getWidth();
        if (!this.a.a(view, (int)R.styleable.SherlockTheme_actionBarTabTextStyle)) {
            width = this.a.getWidth();
            if (f < 0.0f || (f == 0.0f && d > 0.5f)) {
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
        width = this.a.a(view, (int)R.styleable.SherlockTheme_actionBarTabTextStyle) ? ((float) (width2 + i)) / ((float) width2) : ((float) (this.a.getWidth() - i)) / ((float) width2);
        this.a.b(view, width);
        view.setVisibility(width == 0.0f ? ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT : 0);
        this.a.invalidate();
    }

    public boolean a(View view, int i) {
        return this.a.g(view) && this.a.a(view, this.b) && this.a.a(view) == 0;
    }

    public int b(View view, int i, int i2) {
        return view.getTop();
    }

    public void b(int i, int i2) {
        View a = (i & 1) == 1 ? this.a.a((int)R.styleable.SherlockTheme_actionBarTabTextStyle) : this.a.a((int)R.styleable.SherlockTheme_actionBarStyle);
        if (a != null && this.a.a(a) == 0) {
            this.c.a(a, i2);
        }
    }

    public void b(View view, int i) {
        ((h) view.getLayoutParams()).c = false;
        b();
    }

    public boolean b(int i) {
        return false;
    }
}