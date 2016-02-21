package com.IQzone.postitial.obfuscated;

import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class di implements Runnable {
    private /* synthetic */ dg a;

    di(dg dgVar) {
        this.a = dgVar;
    }

    public final void run() {
        this.a.d.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        this.a.a.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
    }
}