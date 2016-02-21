package com.google.a.a;

import com.google.c.a;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.ByteArrayOutputStream;

final class l implements j {
    private a a;
    private ByteArrayOutputStream b;

    public l() {
        a();
    }

    public final void a() {
        this.b = new ByteArrayOutputStream();
        this.a = a.a(this.b);
    }

    public final void a(int i, long j) {
        a aVar = this.a;
        aVar.a(i, 0);
        while ((-128 & j) != 0) {
            aVar.a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        aVar.a((int) j);
    }

    public final void a(int i, String str) {
        a aVar = this.a;
        aVar.a(i, (int)GoogleScorer.CLIENT_PLUS);
        byte[] bytes = str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT);
        aVar.b(bytes.length);
        aVar.a(bytes, bytes.length);
    }

    public final byte[] b() {
        this.a.a();
        return this.b.toByteArray();
    }
}