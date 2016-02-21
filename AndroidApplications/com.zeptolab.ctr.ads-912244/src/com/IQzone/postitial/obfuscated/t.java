package com.IQzone.postitial.obfuscated;

import android.app.KeyguardManager;
import android.os.Bundle;
import android.os.PowerManager;
import android.widget.ImageButton;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Iterator;
import java.util.Set;

public abstract class t extends na {
    private static final ql a;
    private final c b;
    private final Set c;

    static {
        a = new ql();
    }

    public t() {
        this.b = new qo(this);
        this.c = f();
    }

    private boolean g() {
        qr d = d();
        if (d == null) {
            return false;
        }
        int d2 = d.d();
        int intExtra = getIntent().getIntExtra("session", -1);
        ql qlVar = a;
        new StringBuilder("current overlay backing session: ").append(intExtra).toString();
        return d2 != -1 && d2 == intExtra;
    }

    protected final Set a() {
        Set muVar = new mu();
        qr d = d();
        if (g() && d != null) {
            muVar.add(d);
            Set e = e();
            if (e != null) {
                Iterator it = e.iterator();
                while (it.hasNext()) {
                    muVar.add((mq) it.next());
                }
            }
        }
        return muVar;
    }

    protected final Set b() {
        Set muVar = new mu();
        if (g()) {
            muVar.add(this.b);
            if (this.c != null) {
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    muVar.add((lx) it.next());
                }
            }
        }
        return muVar;
    }

    protected final void c() {
        qr d = d();
        if (d == null || !d.e()) {
            finish();
        } else if (g()) {
            setTheme(16973839);
            requestWindowFeature(1);
            setContentView(new bv(this).a());
            ImageButton imageButton = (ImageButton) findViewById(bt.c);
            if (imageButton != null) {
                imageButton.setOnClickListener(new qq(this));
            }
            imageButton.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        } else {
            finish();
        }
    }

    protected abstract qr d();

    protected abstract Set e();

    protected abstract Set f();

    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
    }

    protected void onPause() {
        super.onPause();
        mv mvVar = new mv();
        qr d = d();
        if (!isFinishing()) {
            boolean z;
            z = !((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode();
            boolean isScreenOn = ((PowerManager) getSystemService("power")).isScreenOn();
            if (isScreenOn && z) {
                mvVar.post(new qp(this, d));
            } else {
                ql qlVar = a;
                new StringBuilder("screenOn ").append(isScreenOn).append(" ").append(z).toString();
                finish();
                if (d != null) {
                    d.c();
                }
            }
        } else if (d != null) {
            d.c();
        }
    }

    protected void onResume() {
        super.onResume();
        boolean z = !((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        boolean isScreenOn = ((PowerManager) getSystemService("power")).isScreenOn();
        if (!isScreenOn || !z) {
            ql qlVar = a;
            new StringBuilder("screenOn2 ").append(isScreenOn).append(" ").append(z).toString();
            qr d = d();
            finish();
            if (d != null) {
                d.c();
            }
        }
    }
}