package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class ce {
    private static ce VS;
    private volatile String TM;
    private volatile a VT;
    private volatile String VU;
    private volatile String VV;

    enum a {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG;

        static {
            VW = new a("NONE", 0);
            VX = new a("CONTAINER", 1);
            VY = new a("CONTAINER_DEBUG", 2);
            VZ = new a[]{VW, VX, VY};
        }
    }

    ce() {
        clear();
    }

    private String bt(String str) {
        return str.split("&")[0].split("=")[1];
    }

    private String g(Uri uri) {
        return uri.getQuery().replace("&gtm_debug=x", AdTrackerConstants.BLANK);
    }

    static ce ju() {
        ce ceVar;
        synchronized (ce.class) {
            if (VS == null) {
                VS = new ce();
            }
            ceVar = VS;
        }
        return ceVar;
    }

    void clear() {
        this.VT = a.VW;
        this.VU = null;
        this.TM = null;
        this.VV = null;
    }

    synchronized boolean f(Uri uri) {
        boolean z = true;
        synchronized (this) {
            try {
                String decode = URLDecoder.decode(uri.toString(), HTMLEncoder.ENCODE_NAME_DEFAULT);
                if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                    bh.v("Container preview url: " + decode);
                    if (decode.matches(".*?&gtm_debug=x$")) {
                        this.VT = a.VY;
                    } else {
                        this.VT = a.VX;
                    }
                    this.VV = g(uri);
                    if (this.VT == a.VX || this.VT == a.VY) {
                        this.VU = "/r?" + this.VV;
                    }
                    this.TM = bt(this.VV);
                } else {
                    if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                        bh.w("Invalid preview uri: " + decode);
                        z = false;
                    } else if (bt(uri.getQuery()).equals(this.TM)) {
                        bh.v("Exit preview mode for container: " + this.TM);
                        this.VT = a.VW;
                        this.VU = null;
                    } else {
                        z = false;
                    }
                }
            } catch (UnsupportedEncodingException e) {
                z = false;
            }
        }
        return z;
    }

    String getContainerId() {
        return this.TM;
    }

    a jv() {
        return this.VT;
    }

    String jw() {
        return this.VU;
    }
}