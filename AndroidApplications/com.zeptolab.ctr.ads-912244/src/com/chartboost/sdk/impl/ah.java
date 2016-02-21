package com.chartboost.sdk.impl;

import com.zeptolab.utils.HTMLEncoder;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;

public class ah {
    public static final BigInteger a;
    public static final BigInteger b;
    public static final BigInteger c;
    public static final BigInteger d;
    public static final BigInteger e;
    public static final BigInteger f;
    public static final BigInteger g;
    public static final BigInteger h;
    public static final File[] i;
    private static final Charset j;

    static {
        a = BigInteger.valueOf(1024);
        b = a.multiply(a);
        c = a.multiply(b);
        d = a.multiply(c);
        e = a.multiply(d);
        f = a.multiply(e);
        g = BigInteger.valueOf(1024).multiply(BigInteger.valueOf(1152921504606846976L));
        h = a.multiply(g);
        i = new File[0];
        j = Charset.forName(HTMLEncoder.ENCODE_NAME_DEFAULT);
    }

    public static FileOutputStream a(File file, boolean z) {
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (!(parentFile == null || parentFile.mkdirs() || parentFile.isDirectory())) {
                throw new IOException("Directory '" + parentFile + "' could not be created");
            }
        } else if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        } else if (!file.canWrite()) {
            throw new IOException("File '" + file + "' cannot be written to");
        }
        return new FileOutputStream(file, z);
    }

    public static void a(File file, byte[] bArr) {
        a(file, bArr, false);
    }

    public static void a(File file, byte[] bArr, boolean z) {
        OutputStream outputStream = null;
        outputStream = a(file, z);
        outputStream.write(bArr);
        outputStream.close();
        ai.a(outputStream);
    }
}