package com.google.android.gms.analytics;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

class ab {
    private final Map tW;
    private final Map tX;
    private final boolean tY;
    private final String tZ;

    ab(String str, boolean z) {
        this.tW = new HashMap();
        this.tX = new HashMap();
        this.tY = z;
        this.tZ = str;
    }

    void c(String str, int i) {
        if (this.tY) {
            Integer num = (Integer) this.tW.get(str);
            if (num == null) {
                num = Integer.valueOf(0);
            }
            this.tW.put(str, Integer.valueOf(num.intValue() + i));
        }
    }

    String cn() {
        if (!this.tY) {
            return AdTrackerConstants.BLANK;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.tZ);
        Iterator it = this.tW.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            stringBuilder.append("&").append(str).append("=").append(this.tW.get(str));
        }
        it = this.tX.keySet().iterator();
        while (it.hasNext()) {
            str = (String) it.next();
            stringBuilder.append("&").append(str).append("=").append((String) this.tX.get(str));
        }
        return stringBuilder.toString();
    }
}