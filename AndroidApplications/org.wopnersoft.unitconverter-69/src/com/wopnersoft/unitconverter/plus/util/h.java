package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

// compiled from: ProGuard
class h implements OnClickListener {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    public void onClick(View view) {
        i iVar = (i) view.getTag();
        g gVar;
        if (((CheckBox) view).isChecked()) {
            gVar = this.a;
            g.a(gVar, g.a(gVar) | iVar.a.longValue());
        } else {
            gVar = this.a;
            g.a(gVar, g.a(gVar) & (iVar.a.longValue() ^ -1));
        }
    }
}