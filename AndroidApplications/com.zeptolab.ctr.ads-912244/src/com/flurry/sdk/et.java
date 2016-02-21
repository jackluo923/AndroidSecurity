package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class et implements eu {
    public /* synthetic */ Object a(InputStream inputStream) {
        return b(inputStream);
    }

    public void a(OutputStream outputStream, byte[] bArr) {
        if (outputStream != null && bArr != null) {
            outputStream.write(bArr, 0, bArr.length);
        }
    }

    public byte[] b(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        fb.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}