package android.support.v4.widget;

import android.support.v4.widget.DrawerLayout.LayoutParams;
import android.view.View;

final class h extends aa {
    final /* synthetic */ DrawerLayout a;
    private final int b;
    private y c;
    private final Runnable d;

    public final void a() {
        this.a.removeCallbacks(this.d);
    }

    public final void a(int i) {
        DrawerLayout drawerLayout = this.a;
        int i2 = this.b;
        drawerLayout.a(i, this.c.c());
    }

    public final void a(int i, int i2) {
        View a = (i & 1) == 1 ? this.a.a((int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER) : this.a.a((int)FragmentManagerImpl.ANIM_STYLE_FADE_ENTER);
        if (a != null && this.a.a(a) == 0) {
            this.c.a(a, i2);
        }
    }

    public final void a(View view, float f) {
        int width;
        DrawerLayout drawerLayout = this.a;
        float b = DrawerLayout.b(view);
        int width2 = view.getWidth();
        drawerLayout = this.a;
        if (!DrawerLayout.a(view, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)) {
            width = this.a.getWidth();
            if (f < 0.0f || (f == 0.0f && b < 0.5f)) {
                width -= width2;
            }
        } else if (f > 0.0f || (f == 0.0f && b > 0.5f)) {
            width = 0;
        } else {
            width = -width2;
        }
        this.c.a(width, view.getTop());
        this.a.invalidate();
    }

    public final void a(View view, int i) {
        float width;
        int width2 = view.getWidth();
        DrawerLayout drawerLayout = this.a;
        width = DrawerLayout.a(view, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER) ? ((float) (width2 + i)) / ((float) width2) : ((float) (this.a.getWidth() - i)) / ((float) width2);
        this.a.a(view, width);
        view.setVisibility(width == 0.0f ? ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT : 0);
        this.a.invalidate();
    }

    public final boolean a(View view) {
        DrawerLayout drawerLayout = this.a;
        if (DrawerLayout.c(view)) {
            drawerLayout = this.a;
            if (DrawerLayout.a(view, this.b) && this.a.a(view) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int b(View view, int i) {
        DrawerLayout drawerLayout = this.a;
        if (DrawerLayout.a(view, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)) {
            return Math.max(-view.getWidth(), Math.min(i, 0));
        }
        int width = this.a.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i, width));
    }

    public final void b() {
        this.a.postDelayed(this.d, 160);
    }

    public final void b(View view) {
        ((LayoutParams) view.getLayoutParams()).c = false;
        View a = this.a.a(this.b == 3 ? FragmentManagerImpl.ANIM_STYLE_FADE_ENTER : 3);
        if (a != null) {
            this.a.d(a);
        }
    }

    public final int c(View view) {
        return view.getWidth();
    }

    public final int d(View view) {
        return view.getTop();
    }
}