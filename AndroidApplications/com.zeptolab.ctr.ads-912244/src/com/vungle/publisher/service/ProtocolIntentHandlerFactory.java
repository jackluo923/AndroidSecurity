package com.vungle.publisher.service;

import com.millennialmedia.android.MMException;
import com.vungle.publisher.bv;
import com.vungle.publisher.bv.a;
import com.vungle.publisher.bw;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class ProtocolIntentHandlerFactory extends a {
    @Inject
    ProtocolIntentHandlerFactory() {
    }

    public final bv a(String str, bw.a... aVarArr) {
        return super.a(str, 1, MMException.REQUEST_BAD_RESPONSE, aVarArr);
    }
}