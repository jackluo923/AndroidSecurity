package com.andymstone.accuratecompass.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.andymstone.accuratecompass.q;
import com.andymstone.core.f;

public class a extends f {
    void E() {
        com.andymstone.accuratecompass.a aVar = (com.andymstone.accuratecompass.a) k();
        if (aVar != null) {
            aVar.l();
        }
    }

    void F() {
        com.andymstone.accuratecompass.a aVar = (com.andymstone.accuratecompass.a) k();
        if (aVar != null) {
            aVar.k();
        }
    }

    public View a_(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = super.a(layoutInflater, viewGroup, bundle);
        b(q.filtering_title);
        a(a(q.filtering_message), false);
        b(k().getString(q.filtering_off), new b(this));
        a(k().getString(q.filtering_on), new c(this));
        return a;
    }
}