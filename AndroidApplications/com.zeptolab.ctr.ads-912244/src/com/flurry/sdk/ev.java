package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ev implements eu {
    public /* synthetic */ Object a(InputStream inputStream) {
        return b(inputStream);
    }

    public void a(OutputStream outputStream, String str) {
        if (outputStream != null && str != null) {
            byte[] bytes = str.getBytes("utf-8");
            outputStream.write(bytes, 0, bytes.length);
        }
    }

    public String b(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        fb.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toString();
    }
}