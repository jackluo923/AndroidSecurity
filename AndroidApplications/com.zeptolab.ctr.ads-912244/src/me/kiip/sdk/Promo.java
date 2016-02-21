package me.kiip.sdk;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import me.kiip.internal.l.e;
import me.kiip.internal.l.e.c;

public final class Promo implements DialogInterface {
    private e a;

    public static abstract class PromoParams {
    }

    public Promo(Context context) {
        this.a = new e(context, this);
    }

    public void cancel() {
    }

    public void dismiss() {
        this.a.c();
    }

    public PromoParams getParams() {
        return this.a.a();
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.a.a(onDismissListener);
    }

    public void setOnShowListener(OnShowListener onShowListener) {
        this.a.a(onShowListener);
    }

    public void setParams(PromoParams promoParams) {
        this.a.a((c) promoParams);
    }

    public void show() {
        this.a.b();
    }
}