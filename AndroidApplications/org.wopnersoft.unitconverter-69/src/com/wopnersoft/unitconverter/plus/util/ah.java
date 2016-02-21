package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

// compiled from: ProGuard
class ah implements OnClickListener {
    final /* synthetic */ ag a;

    ah(ag agVar) {
        this.a = agVar;
    }

    public void onClick(View view) {
        String toString = ag.a(this.a).getText().toString();
        if (view.getId() == 2131034306) {
            if (!toString.contains("e")) {
                ag.a(this.a).append("e");
            }
        } else if (view.getId() == 2131034304) {
            if (toString.length() == 0) {
                ag.a(this.a).append("-");
            } else if (toString.startsWith("-")) {
                ag.a(this.a).setText(toString.subSequence(1, toString.length()));
            } else {
                ag.a(this.a).setText(new StringBuilder("-").append(toString).toString());
            }
        } else if (view.getId() == 2131034290) {
            this.a.getOwnerActivity().removeDialog(8888);
            return;
        } else if (view.getId() == 2131034291) {
            a = ag.b(this.a) == ai.a ? ag.a(this.a, ag.c(this.a)) : ag.a(this.a).getText().toString().trim();
            if (a.length() == 0) {
                a = "0";
            }
            ag.d(this.a).setText(a);
            if (ag.e(this.a) != null && ag.f(this.a).booleanValue()) {
                ag.e(this.a).performClick();
            }
            this.a.getOwnerActivity().removeDialog(8888);
            return;
        } else if (view.getId() == 2131034288) {
            a = ag.a(this.a).getText();
            if (a.length() == 0) {
                ag.a(this.a).setText("");
            } else {
                ag.a(this.a).setText(a.subSequence(0, a.length() - 1));
            }
        } else {
            ag.a(this.a).append(((Button) view).getText());
        }
        ag.g(this.a);
    }
}