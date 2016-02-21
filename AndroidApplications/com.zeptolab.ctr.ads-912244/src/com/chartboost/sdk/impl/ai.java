package com.chartboost.sdk.impl;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;

public class ai {
    public static final char a;
    public static final String b;

    static {
        a = File.separatorChar;
        Writer akVar = new ak(4);
        PrintWriter printWriter = new PrintWriter(akVar);
        printWriter.println();
        b = akVar.toString();
        printWriter.close();
    }

    public static int a(InputStream inputStream, OutputStream outputStream) {
        long b = b(inputStream, outputStream);
        return b > 2147483647L ? -1 : (int) b;
    }

    public static long a(InputStream inputStream, OutputStream outputStream, byte[] bArr) {
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(Closeable closeable) {
        a(closeable);
    }

    public static byte[] a(InputStream inputStream) {
        OutputStream ajVar = new aj();
        a(inputStream, ajVar);
        return ajVar.a();
    }

    public static long b(InputStream inputStream, OutputStream outputStream) {
        return a(inputStream, outputStream, new byte[4096]);
    }
}