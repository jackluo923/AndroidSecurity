package com.vungle.publisher.env;

import android.content.Context;
import com.vungle.log.Logger;
import com.vungle.publisher.ay;
import com.vungle.publisher.bi;
import com.vungle.publisher.cd;
import com.vungle.publisher.event.ClientEventListenerAdapter.Factory;
import com.vungle.publisher.inject.annotations.VungleServiceClass;
import java.util.EnumSet;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class SdkConfig {
    public ay a;
    public boolean b;
    public Set c;
    public int d;
    @Inject
    public Factory e;
    @Inject
    public Context f;
    @VungleServiceClass
    @Inject
    public Class g;

    SdkConfig() {
        this.c = EnumSet.noneOf(bi.class);
    }

    public final void a(bi... biVarArr) {
        Logger.d(Logger.CONFIG_TAG, new StringBuilder("setting ad streaming connectivity types ").append(cd.b(biVarArr)).toString());
        this.c.clear();
        if (biVarArr != null) {
            int length = biVarArr.length;
            int i = 0;
            while (i < length) {
                Object obj = biVarArr[i];
                if (obj != null) {
                    this.c.add(obj);
                }
                i++;
            }
        }
    }
}