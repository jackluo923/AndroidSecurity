package com.yanex.emoticons;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.actionbarsherlock.view.MenuItem;

final class m implements OnClickListener {
    final /* synthetic */ LinearLayout a;
    final /* synthetic */ MainActivity b;

    m(MainActivity mainActivity, LinearLayout linearLayout) {
        this.b = mainActivity;
        this.a = linearLayout;
    }

    public final void onClick(View view) {
        if (this.a.getVisibility() == 8) {
            this.a.setVisibility(0);
        } else {
            this.a.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        MainActivity.a(this.b);
    }
}