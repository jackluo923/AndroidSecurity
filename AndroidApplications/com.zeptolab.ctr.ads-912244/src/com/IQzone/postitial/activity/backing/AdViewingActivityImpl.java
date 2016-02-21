package com.IQzone.postitial.activity.backing;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.IQzone.postitial.b;
import com.IQzone.postitial.obfuscated.c;
import com.IQzone.postitial.obfuscated.fz;
import com.IQzone.postitial.obfuscated.ga;
import com.IQzone.postitial.obfuscated.mu;
import com.IQzone.postitial.obfuscated.na;
import com.IQzone.postitial.obfuscated.om;
import com.IQzone.postitial.obfuscated.pq;
import com.IQzone.postitial.obfuscated.ql;
import com.IQzone.postitial.obfuscated.qr;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class AdViewingActivityImpl extends na {
    private static final ql a;
    private final c b;

    static {
        a = new ql();
    }

    public AdViewingActivityImpl() {
        this.b = new fz(this);
    }

    private qr d() {
        b a = b.a(this);
        return a != null ? a.a().a() : null;
    }

    protected final Set a() {
        b a = b.a(this);
        if (a == null) {
            return new HashSet();
        }
        Set muVar = new mu();
        muVar.addAll(a.a().e());
        muVar.add(d());
        return muVar;
    }

    protected final Set b() {
        b a = b.a(this);
        Set muVar = new mu();
        if (a != null) {
            Iterator it = a.a().d().iterator();
            while (it.hasNext()) {
                try {
                    muVar.add(((pq) it.next()).a(this));
                } catch (om e) {
                    ql qlVar = a;
                }
            }
        }
        muVar.add(this.b);
        return muVar;
    }

    protected final void c() {
    }

    public void onBackPressed() {
        moveTaskToBack(true);
        finish();
    }

    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        View view = new View(this);
        view.setBackgroundColor(-16777216);
        setContentView(view);
    }

    protected void onPause() {
        super.onPause();
    }

    protected void onResume() {
        super.onResume();
    }

    protected void onStop() {
        super.onStop();
        qr d = d();
        if (d != null) {
            new Handler(Looper.getMainLooper()).postDelayed(new ga(this, d), 3000);
        }
    }
}