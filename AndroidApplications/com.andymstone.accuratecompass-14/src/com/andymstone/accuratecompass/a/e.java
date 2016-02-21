package com.andymstone.accuratecompass.a;

import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import com.andymstone.core.c;
import com.andymstone.core.o;

public abstract class e extends c {
    private DrawerLayout Y;

    public void G() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("showDrawerArg", true);
        g(bundle);
    }

    protected void H() {
        if (this.Y != null) {
            this.Y.d((int)o.MyAlertDialog_MAD_titleStyle);
        }
    }

    boolean I() {
        Bundle j = j();
        return j != null ? j.getBoolean("showDrawerArg") : false;
    }

    public void d(Bundle bundle) {
        super.d(bundle);
        this.Y = (DrawerLayout) k().findViewById(com.andymstone.accuratecompass.o.drawer_layout);
        if (this.Y != null && I()) {
            this.Y.c((int)o.MyAlertDialog_MAD_titleStyle);
        }
    }
}