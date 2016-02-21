package com.andymstone.core;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class c extends f {
    protected abstract int E();

    protected abstract int F();

    protected void H() {
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = super.a(layoutInflater, viewGroup, bundle);
        b(E());
        a(a(F()), true);
        a(a(m.ok), new d(this));
        b(a(m.email_stonekick), new e(this));
        return a;
    }
}