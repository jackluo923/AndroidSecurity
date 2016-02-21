package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class dl {
    private static by a(by byVar) {
        try {
            return new by(di.r(bO(di.j((a) byVar.getObject()))), byVar.jr());
        } catch (UnsupportedEncodingException e) {
            bh.c("Escape URI: unsupported encoding", e);
            return byVar;
        }
    }

    private static by a(by byVar, int i) {
        if (q((a) byVar.getObject())) {
            switch (i) {
                case R.styleable.MapAttrs_useViewLifecycle:
                    return a(byVar);
                default:
                    bh.t("Unsupported Value Escaping: " + i);
                    return byVar;
            }
        } else {
            bh.t("Escaping can only be applied to strings.");
            return byVar;
        }
    }

    static by a(by byVar, int... iArr) {
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            byVar = a(byVar, iArr[i]);
            i++;
        }
        return byVar;
    }

    static String bO(String str) {
        return URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT).replaceAll("\\+", "%20");
    }

    private static boolean q(a aVar) {
        return di.o(aVar) instanceof String;
    }
}