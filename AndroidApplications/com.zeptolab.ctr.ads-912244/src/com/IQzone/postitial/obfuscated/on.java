package com.IQzone.postitial.obfuscated;

import com.zeptolab.ctr.scorer.GoogleScorer;
import java.nio.ByteBuffer;

public class on implements oo {
    static {
    }

    public final /* synthetic */ Object a(Object obj) {
        return ByteBuffer.allocate(GoogleScorer.CLIENT_APPSTATE).putInt(((Integer) obj).intValue()).array();
    }

    public final /* synthetic */ Object b(Object obj) {
        int i = 0;
        byte[] bArr = (byte[]) obj;
        int i2 = 0;
        while (i < bArr.length) {
            i2 = i2 << 8 + bArr[i] & 255;
            i++;
        }
        return Integer.valueOf(i2);
    }
}