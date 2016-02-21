package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class SafeBundleAdConfigFactory {
    @Inject
    AdConfig a;

    public c get() {
        return new c(new b[]{this.a.a});
    }

    public c merge(AdConfig... adConfigArr) {
        int i = 0;
        b[] bVarArr = null;
        if (adConfigArr != null) {
            b[] bVarArr2 = new b[adConfigArr.length];
            int length = adConfigArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i3;
                AdConfig adConfig = adConfigArr[i2];
                if (adConfig != null) {
                    i3 = i + 1;
                    bVarArr2[i] = adConfig.a;
                } else {
                    i3 = i;
                }
                i2++;
                i = i3;
            }
            bVarArr = bVarArr2;
        }
        return new c(bVarArr);
    }
}