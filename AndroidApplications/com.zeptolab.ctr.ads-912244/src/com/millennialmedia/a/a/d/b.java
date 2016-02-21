package com.millennialmedia.a.a.d;

import com.millennialmedia.a.a.b.a.f;
import com.millennialmedia.a.a.b.r;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;

final class b extends r {
    b() {
    }

    public void a(a aVar) {
        if (aVar instanceof f) {
            ((f) aVar).o();
        } else {
            int a = aVar.J;
            if (a == 0) {
                a = aVar.o();
            }
            if (a == 13) {
                aVar.J = ZBuildConfig.$minsdk;
            } else if (a == 12) {
                aVar.J = IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED;
            } else if (a == 14) {
                aVar.J = R.styleable.MapAttrs_uiZoomControls;
            } else {
                throw new IllegalStateException("Expected a name but was " + aVar.f() + " " + " at line " + aVar.u() + " column " + aVar.v());
            }
        }
    }
}