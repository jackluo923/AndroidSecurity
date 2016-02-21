package com.IQzone.postitial.obfuscated;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class op implements oo {
    private static final ql a;

    static {
        a = new ql();
    }

    private static byte[] a(InputStream inputStream) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fh.a(inputStream, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            try {
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new om("<InputStreamConverter><3>, Couldn't convert", e);
            }
        } catch (IOException e2) {
            Exception exception = e2;
            ql qlVar = a;
            throw new om("<InputStreamConverter><2>, Couldn't convert", exception);
        } catch (Throwable th) {
            try {
            } catch (IOException e3) {
                throw new om("<InputStreamConverter><3>, Couldn't convert", e3);
            }
        }
    }

    public final /* synthetic */ Object a(Object obj) {
        return new ByteArrayInputStream((byte[]) obj);
    }

    public final /* synthetic */ Object b(Object obj) {
        return a((InputStream) obj);
    }
}