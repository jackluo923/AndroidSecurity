package com.vungle.publisher.ad;

import android.content.Context;
import android.content.Intent;
import com.vungle.log.Logger;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.inject.annotations.VungleServiceClass;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AdPreparer {
    @Inject
    public Context a;
    @VungleServiceClass
    @Inject
    Class b;

    AdPreparer() {
    }

    public final Intent a() {
        return new Intent(VungleService.PREPARE_AD_ACTION, null, this.a, this.b);
    }

    public final void a(String str) {
        Logger.d(Logger.PREPARE_TAG, new StringBuilder("sending prepare ad request: ").append(str).toString());
        Intent a = a();
        a.putExtra(VungleService.AD_ID_EXTRA_KEY, str);
        this.a.startService(a);
    }
}