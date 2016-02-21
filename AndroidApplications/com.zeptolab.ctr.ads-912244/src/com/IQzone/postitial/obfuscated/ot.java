package com.IQzone.postitial.obfuscated;

import java.io.IOException;

public final class ot implements oo {
    private static Object a(byte[] bArr) {
        try {
            return qa.a(bArr);
        } catch (IOException e) {
            throw new om(new StringBuilder("<SerializingConverter><2>, ").append(e).toString());
        } catch (ClassNotFoundException e2) {
            throw new om(new StringBuilder("<SerializingConverter><3>, ").append(e2).toString());
        }
    }

    private static byte[] c(Object obj) {
        try {
            return qa.a(obj);
        } catch (IOException e) {
            throw new om(new StringBuilder("<SerializingConverter><1>, ").append(e).toString());
        }
    }

    public final /* synthetic */ Object b(Object obj) {
        return c(obj);
    }
}