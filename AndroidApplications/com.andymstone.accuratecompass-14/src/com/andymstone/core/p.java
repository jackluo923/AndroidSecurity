package com.andymstone.core;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class p extends f {
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String string = j().getString("app_name");
        View a = super.a(layoutInflater, viewGroup, bundle);
        a(String.format(k().getString(m.rate_me_dialog_dialog_title), new Object[]{string}));
        a(String.format(k().getString(m.rate_me_dialog_dialog_message), new Object[]{string}), false);
        a(k().getString(m.rate_me_dialog_rate_now), new q(this));
        b(k().getString(m.rate_me_dialog_never), new r(this));
        c(k().getString(m.rate_me_dialog_later), new s(this));
        return a;
    }
}