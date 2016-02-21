package com.yanex.emoticons.gui;

import android.widget.LinearLayout;
import com.actionbarsherlock.view.MenuItem;
import java.util.List;

public final class b {
    private final ActionView[] a;
    private LinearLayout b;

    public b(LinearLayout linearLayout) {
        this.a = new ActionView[6];
        this.b = linearLayout;
        this.a[0] = (ActionView) this.b.findViewById(2131099703);
        this.a[1] = (ActionView) this.b.findViewById(2131099704);
        this.a[2] = (ActionView) this.b.findViewById(2131099705);
        this.a[3] = (ActionView) this.b.findViewById(2131099706);
        this.a[4] = (ActionView) this.b.findViewById(2131099707);
        this.a[5] = (ActionView) this.b.findViewById(2131099708);
    }

    public final void a(int i) {
        int i2 = 0;
        while (i2 < 6) {
            this.a[i2].a(i2 == i);
            i2++;
        }
    }

    public final void a(List list) {
        int min = Math.min(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT, list.size());
        int i = 0;
        while (i < min) {
            a aVar = (a) list.get(i);
            ActionView actionView = this.a[i];
            actionView.setImageResource(aVar.a);
            actionView.setOnClickListener(new c(this, aVar));
            if (aVar.b.length() > 0) {
                actionView.setOnLongClickListener(new d(this, aVar, actionView));
            } else {
                actionView.setOnLongClickListener(null);
            }
            this.a[i].setVisibility(0);
            i++;
        }
        int i2 = min;
        while (i2 < 6) {
            this.a[i2].setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            i2++;
        }
        this.a[0].a(true);
        i2 = min > 0;
        if (i2 != 0 && this.b.getVisibility() != 0) {
            this.b.setVisibility(0);
        } else if (i2 == 0 && this.b.getVisibility() != 8) {
            this.b.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
    }

    public final void b_(int i) {
        ActionView[] actionViewArr = this.a;
        int length = actionViewArr.length;
        int i2 = 0;
        while (i2 < length) {
            actionViewArr[i2].a(i);
            i2++;
        }
    }
}