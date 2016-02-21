package com.vungle.publisher.service;

import com.vungle.publisher.bv;
import com.vungle.publisher.bv.a;
import com.vungle.publisher.bw;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DownloadIntentHandlerFactory extends a {
    @Inject
    DownloadIntentHandlerFactory() {
    }

    public final bv a(String str, bw.a... aVarArr) {
        return super.a(str, GoogleScorer.CLIENT_PLUS, R.styleable.MapAttrs_uiZoomControls, aVarArr);
    }
}