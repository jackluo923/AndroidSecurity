package com.andymstone.accuratecompass;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.andymstone.core.f;

public class h extends f {
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = super.a(layoutInflater, viewGroup, bundle);
        a(a(q.upgrade_to_pro_title));
        a(a(q.upgrade_message), true);
        a(k().getString(q.upgrade_now), new i(this));
        b(k().getString(q.cancel_btn), new j(this));
        return a;
    }

    public void h_() {
        if (c() != null && o()) {
            c().setOnDismissListener(null);
        }
        super.h();
    }
}