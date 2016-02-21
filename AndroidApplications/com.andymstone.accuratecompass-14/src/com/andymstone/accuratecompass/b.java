package com.andymstone.accuratecompass;

import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.view.View.OnClickListener;
import com.andymstone.core.o;

class b implements OnClickListener {
    final /* synthetic */ a a;
    private final /* synthetic */ DrawerLayout b;

    b(a aVar, DrawerLayout drawerLayout) {
        this.a = aVar;
        this.b = drawerLayout;
    }

    public void onClick(View view) {
        this.b.c((int)o.MyAlertDialog_MAD_titleStyle);
    }
}