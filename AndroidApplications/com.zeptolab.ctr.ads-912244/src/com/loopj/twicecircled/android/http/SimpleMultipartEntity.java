package com.loopj.twicecircled.android.http;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class SimpleMultipartEntity implements HttpEntity {
    private static final char[] MULTIPART_CHARS;
    private String boundary;
    boolean isSetFirst;
    boolean isSetLast;
    ByteArrayOutputStream out;

    static {
        MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    public SimpleMultipartEntity() {
        int i = 0;
        this.boundary = null;
        this.out = new ByteArrayOutputStream();
        this.isSetLast = false;
        this.isSetFirst = false;
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random();
        while (i < 30) {
            stringBuffer.append(MULTIPART_CHARS[random.nextInt(MULTIPART_CHARS.length)]);
            i++;
        }
        this.boundary = stringBuffer.toString();
    }

    public void addPart(String str, File file, boolean z) {
        try {
            addPart(str, file.getName(), new FileInputStream(file), z);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void addPart(String str, String str2) {
        writeFirstBoundaryIfNeeds();
        try {
            this.out.write(new StringBuilder("Content-Disposition: form-data; name=\"").append(str).append("\"\r\n\r\n").toString().getBytes());
            this.out.write(str2.getBytes());
            this.out.write(new StringBuilder("\r\n--").append(this.boundary).append("\r\n").toString().getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void addPart(String str, String str2, InputStream inputStream, String str3, boolean z) {
        writeFirstBoundaryIfNeeds();
        try {
            String toString = new StringBuilder("Content-Type: ").append(str3).append("\r\n").toString();
            this.out.write(new StringBuilder("Content-Disposition: form-data; name=\"").append(str).append("\"; filename=\"").append(str2).append("\"\r\n").toString().getBytes());
            this.out.write(toString.getBytes());
            this.out.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    if (!z) {
                        this.out.write(new StringBuilder("\r\n--").append(this.boundary).append("\r\n").toString().getBytes());
                    }
                    this.out.flush();
                    try {
                        inputStream.close();
                        return;
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                } else {
                    this.out.write(bArr, 0, read);
                }
            }
        } catch (IOException e2) {
            try {
                e2.printStackTrace();
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    public void addPart(String str, String str2, InputStream inputStream, boolean z) {
        addPart(str, str2, inputStream, "application/octet-stream", z);
    }

    public void consumeContent() {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    public InputStream getContent() {
        return new ByteArrayInputStream(this.out.toByteArray());
    }

    public Header getContentEncoding() {
        return null;
    }

    public long getContentLength() {
        writeLastBoundaryIfNeeds();
        return (long) this.out.toByteArray().length;
    }

    public Header getContentType() {
        return new BasicHeader("Content-Type", new StringBuilder("multipart/form-data; boundary=").append(this.boundary).toString());
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeFirstBoundaryIfNeeds() {
        if (!this.isSetFirst) {
            try {
                this.out.write(new StringBuilder("--").append(this.boundary).append("\r\n").toString().getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        this.isSetFirst = true;
    }

    public void writeLastBoundaryIfNeeds() {
        if (!this.isSetLast) {
            try {
                this.out.write(new StringBuilder("\r\n--").append(this.boundary).append("--\r\n").toString().getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.isSetLast = true;
        }
    }

    public void writeTo(OutputStream outputStream) {
        outputStream.write(this.out.toByteArray());
    }
}