package com.heyzap.http;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class u implements HttpEntity {
    private static final String a = "SimpleMultipartEntity";
    private static final String b = "application/octet-stream";
    private static final byte[] c;
    private static final byte[] d;
    private static final char[] e;
    private String f;
    private byte[] g;
    private byte[] h;
    private boolean i;
    private List j;
    private ByteArrayOutputStream k;
    private ResponseHandlerInterface l;
    private int m;
    private int n;

    private class a {
        public File a;
        public byte[] b;

        public a(String str, File file, String str2) {
            this.b = a(str, file.getName(), str2);
            this.a = file;
        }

        private byte[] a_(String str, String str2, String str3) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(u.this.g);
                byteArrayOutputStream.write(u.this.b(str, str2));
                byteArrayOutputStream.write(u.this.a(str3));
                byteArrayOutputStream.write(d);
                byteArrayOutputStream.write(c);
            } catch (IOException e) {
                Log.e(a, "createHeader ByteArrayOutputStream exception", e);
            }
            return byteArrayOutputStream.toByteArray();
        }

        public long a_() {
            return this.a.length() + ((long) this.b.length);
        }

        public void a_(OutputStream outputStream) {
            outputStream.write(this.b);
            u.this.a(this.b.length);
            FileInputStream fileInputStream = new FileInputStream(this.a);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                    u.this.a(read);
                } else {
                    outputStream.write(c);
                    u.this.a(c.length);
                    outputStream.flush();
                    try {
                        fileInputStream.close();
                        return;
                    } catch (IOException e) {
                        Log.w(a, "Cannot close input stream", e);
                    }
                }
            }
        }
    }

    static {
        c = "\r\n".getBytes();
        d = "Content-Transfer-Encoding: binary\r\n".getBytes();
        e = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    public u(ResponseHandlerInterface responseHandlerInterface) {
        int i = 0;
        this.i = false;
        this.j = new ArrayList();
        this.k = new ByteArrayOutputStream();
        StringBuilder stringBuilder = new StringBuilder();
        Random random = new Random();
        while (i < 30) {
            stringBuilder.append(e[random.nextInt(e.length)]);
            i++;
        }
        this.f = stringBuilder.toString();
        this.g = ("--" + this.f + "\r\n").getBytes();
        this.h = ("--" + this.f + "--\r\n").getBytes();
        this.l = responseHandlerInterface;
    }

    private void a(int i) {
        this.m += i;
        this.l.sendProgressMessage(this.m, this.n);
    }

    private byte[] a(String str) {
        return ("Content-Type: " + str + "\r\n").getBytes();
    }

    private byte[] b(String str) {
        return ("Content-Disposition: form-data; name=\"" + str + "\"\r\n").getBytes();
    }

    private byte[] b(String str, String str2) {
        return ("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"\r\n").getBytes();
    }

    public void a(String str, File file) {
        a(str, file, null);
    }

    public void a(String str, File file, String str2) {
        if (str2 == null) {
            str2 = b;
        }
        this.j.add(new a(str, file, str2));
    }

    public void a(String str, String str2) {
        a(str, str2, "text/plain; charset=UTF-8");
    }

    public void a(String str, String str2, InputStream inputStream, String str3) {
        if (str3 == null) {
            str3 = b;
        }
        this.k.write(this.g);
        this.k.write(b(str, str2));
        this.k.write(a(str3));
        this.k.write(d);
        this.k.write(c);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                this.k.write(bArr, 0, read);
            } else {
                this.k.write(c);
                this.k.flush();
                try {
                    inputStream.close();
                    return;
                } catch (IOException e) {
                    Log.w(a, "Cannot close input stream", e);
                }
            }
        }
    }

    public void a(String str, String str2, String str3) {
        try {
            this.k.write(this.g);
            this.k.write(b(str));
            this.k.write(a(str3));
            this.k.write(c);
            this.k.write(str2.getBytes());
            this.k.write(c);
        } catch (IOException e) {
            Log.e(a, "addPart ByteArrayOutputStream exception", e);
        }
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void consumeContent() {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    public InputStream getContent() {
        throw new UnsupportedOperationException("getContent() is not supported. Use writeTo() instead.");
    }

    public Header getContentEncoding() {
        return null;
    }

    public long getContentLength() {
        long size = (long) this.k.size();
        Iterator it = this.j.iterator();
        long j = size;
        while (it.hasNext()) {
            long a = ((a) it.next()).a();
            if (a < 0) {
                return -1;
            }
            j += a;
        }
        return j + ((long) this.h.length);
    }

    public Header getContentType() {
        return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + this.f);
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isRepeatable() {
        return this.i;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) {
        this.m = 0;
        this.n = (int) getContentLength();
        this.k.writeTo(outputStream);
        a(this.k.size());
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(outputStream);
        }
        outputStream.write(this.h);
        a(this.h.length);
    }
}