package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.utils.HTMLEncoder;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URLEncoder;

public final class fi implements Runnable {
    private /* synthetic */ Throwable a;
    private /* synthetic */ pp b;
    private /* synthetic */ String c;

    public fi(Throwable th, pp ppVar, String str) {
        this.a = th;
        this.b = ppVar;
        this.c = str;
    }

    public final void run() {
        try {
            String str = "0";
            ei.b();
            String c = ei.c();
            String toString = this.a.getClass().toString();
            Writer stringWriter = new StringWriter();
            this.a.printStackTrace(new PrintWriter(stringWriter));
            String str2 = AdTrackerConstants.BLANK;
            try {
                str2 = URLEncoder.encode(stringWriter.toString(), HTMLEncoder.ENCODE_NAME_DEFAULT);
            } catch (UnsupportedEncodingException e) {
                b.a;
            }
            try {
                new ma(this.b, new fj(this)).a(new ac("0", this.c, 179, c, str, toString, 3, str2));
            } catch (Throwable th) {
                b.a;
            }
        } catch (Throwable th2) {
        }
    }
}