package com.vungle.publisher.service;

import com.millennialmedia.android.MMException;
import com.vungle.publisher.bv;
import com.vungle.publisher.bv.a;
import com.vungle.publisher.bw;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class ExternalHttpIntentHandlerFactory extends a {
    @Inject
    ExternalHttpIntentHandlerFactory() {
    }

    public final bv a(String str, bw.a... aVarArr) {
        return super.a(str, GoogleScorer.CLIENT_PLUS, MMException.DISPLAY_AD_NOT_READY, aVarArr);
    }
}