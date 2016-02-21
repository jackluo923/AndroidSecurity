package com.mixpanel.android.mpmetrics;

import android.app.Activity;
import android.app.AlertDialog.Builder;

class s implements ab {
    final /* synthetic */ long a;
    final /* synthetic */ Activity b;
    final /* synthetic */ r c;

    s(r rVar, long j, Activity activity) {
        this.c = rVar;
        this.a = j;
        this.b = activity;
    }

    public void a(aa aaVar) {
        long currentTimeMillis = System.currentTimeMillis() - this.a;
        if (aaVar != null) {
            if (currentTimeMillis <= 2000) {
                r.a(this.c).d().a(aaVar, this.b);
            } else {
                Builder builder = new Builder(this.b);
                builder.setTitle("We'd love your feedback!");
                builder.setMessage("Mind taking a quick survey?");
                builder.setPositiveButton("Sure", new t(this, aaVar));
                builder.setNegativeButton("No, Thanks", new u(this, aaVar));
                this.b.runOnUiThread(new v(this, builder));
            }
        }
    }
}