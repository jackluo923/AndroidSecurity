package com.andymstone.accuratecompass;

import android.support.v4.widget.DrawerLayout;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;

class c implements OnClickListener {
    final /* synthetic */ a a;
    private final /* synthetic */ MenuItem b;
    private final /* synthetic */ DrawerLayout c;

    c(a aVar, MenuItem menuItem, DrawerLayout drawerLayout) {
        this.a = aVar;
        this.b = menuItem;
        this.c = drawerLayout;
    }

    public void onClick(View view) {
        this.a.onMenuItemSelected(0, this.b);
        this.c.b();
    }
}