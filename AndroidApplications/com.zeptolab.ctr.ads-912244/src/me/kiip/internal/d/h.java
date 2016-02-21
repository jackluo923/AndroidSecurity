package me.kiip.internal.d;

import com.brightcove.player.media.MediaService;
import com.zeptolab.utils.HTMLEncoder;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicReference;

public final class h {
    public static final byte[] a;
    public static final String[] b;
    public static final Charset c;
    public static final Charset d;
    public static final Charset e;
    private static AtomicReference f;

    final class AnonymousClass_1 implements ThreadFactory {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.a);
            thread.setDaemon(true);
            return thread;
        }
    }

    static {
        a = new byte[0];
        b = new String[0];
        c = Charset.forName("ISO-8859-1");
        d = Charset.forName("US-ASCII");
        e = Charset.forName(HTMLEncoder.ENCODE_NAME_DEFAULT);
        f = new AtomicReference();
    }

    public static int a(InputStream inputStream) {
        byte[] bArr = new byte[1];
        return inputStream.read(bArr, 0, 1) != -1 ? bArr[0] & 255 : -1;
    }

    public static int a(String str) {
        if (MediaService.DEFAULT_MEDIA_DELIVERY.equalsIgnoreCase(str)) {
            return 80;
        }
        return "https".equalsIgnoreCase(str) ? 443 : -1;
    }

    private static int a(String str, int i) {
        return i != -1 ? i : a(str);
    }

    public static int a(URI uri) {
        return a(uri.getScheme(), uri.getPort());
    }

    public static int a(URL url) {
        return a(url.getProtocol(), url.getPort());
    }

    public static long a(InputStream inputStream, long j) {
        long j2 = 0;
        if (j != 0) {
            Object obj;
            byte[] bArr = (byte[]) f.getAndSet(null);
            if (bArr == null) {
                obj = new Object[4096];
            }
            while (j2 < j) {
                int min = (int) Math.min(j - j2, (long) obj.length);
                int read = inputStream.read(obj, 0, min);
                if (read != -1) {
                    j2 += (long) read;
                    if (read < min) {
                        break;
                    }
                } else {
                    break;
                }
            }
            f.set(obj);
        }
        return j2;
    }

    public static List a(List list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static void a(int i, int i2, int i3) {
        if ((i2 | i3) < 0 || i2 > i || i - i2 < i3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void a(Closeable closeable, Closeable closeable2) {
        Object obj = null;
        try {
            closeable.close();
        } catch (Throwable th) {
            obj = th;
        }
        try {
            closeable2.close();
        } catch (Throwable th2) {
            th = th2;
            if (obj == null) {
                Throwable th3;
                Throwable th4 = th3;
            }
        }
        if (obj != null) {
            if (obj instanceof IOException) {
                throw ((IOException) obj);
            } else if (obj instanceof RuntimeException) {
                throw ((RuntimeException) obj);
            } else if (obj instanceof Error) {
                throw ((Error) obj);
            } else {
                throw new AssertionError(obj);
            }
        }
    }

    public static void a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            File file2 = listFiles[i];
            if (file2.isDirectory()) {
                a(file2);
            }
            if (file2.delete()) {
                i++;
            } else {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public static void a(InputStream inputStream, byte[] bArr) {
        a(inputStream, bArr, 0, bArr.length);
    }

    public static void a(InputStream inputStream, byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            if (inputStream == null) {
                throw new NullPointerException("in == null");
            } else if (bArr == null) {
                throw new NullPointerException("dst == null");
            } else {
                a(bArr.length, i, i2);
                while (i2 > 0) {
                    int read = inputStream.read(bArr, i, i2);
                    if (read < 0) {
                        throw new EOFException();
                    }
                    i += read;
                    i2 -= read;
                }
            }
        }
    }

    public static void a(OutputStream outputStream, int i) {
        outputStream.write(new byte[]{(byte) (i & 255)});
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static ThreadFactory b(String str) {
        return new AnonymousClass_1(str);
    }

    public static void b(InputStream inputStream) {
        do {
            inputStream.skip(Long.MAX_VALUE);
        } while (inputStream.read() != -1);
    }

    public static String c(InputStream inputStream) {
        StringBuilder stringBuilder = new StringBuilder(80);
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                throw new EOFException();
            } else if (read == 10) {
                read = stringBuilder.length();
                if (read > 0 && stringBuilder.charAt(read - 1) == '\r') {
                    stringBuilder.setLength(read - 1);
                }
                return stringBuilder.toString();
            } else {
                stringBuilder.append((char) read);
            }
        }
    }
}