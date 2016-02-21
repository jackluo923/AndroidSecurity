package com.IQzone.postitial.obfuscated;

import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public final class pi implements ou {
    private final ou a;
    private final String b;

    public pi(ou ouVar) {
        this.b = HTMLEncoder.ENCODE_NAME_DEFAULT;
        this.a = ouVar;
    }

    private Object a(String str) {
        try {
            return this.a.a(URLEncoder.encode(str, this.b));
        } catch (UnsupportedEncodingException e) {
            throw new om(new StringBuilder("<KeyEncodingCache><1>, ").append(e).toString());
        }
    }

    public final void a() {
        this.a.a();
    }

    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        this.a.a((String) obj, obj2);
    }

    public final /* bridge */ /* synthetic */ boolean b(Object obj) {
        return this.a.b((String) obj);
    }

    public final /* bridge */ /* synthetic */ void c(Object obj) {
        this.a.c((String) obj);
    }
}