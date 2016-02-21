package com.flurry.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public final class fa {
    private static String a;

    static {
        a = fa.class.getSimpleName();
    }

    public static File a(boolean z) {
        File file = null;
        Context b = dl.a().b();
        if (z && "mounted".equals(Environment.getExternalStorageState())) {
            if (VERSION.SDK_INT >= 19 || b.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                file = b.getExternalFilesDir(null);
            }
        }
        return file == null ? b.getFilesDir() : file;
    }

    @Deprecated
    public static void a(File file, String str) {
        Throwable th;
        if (file == null) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "No persistent file specified.");
        } else if (str == null) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "No data specified; deleting persistent file: " + file.getAbsolutePath());
            file.delete();
        } else {
            Closeable fileOutputStream;
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "Writing persistent data: " + file.getAbsolutePath());
            Closeable closeable = null;
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(str.getBytes());
                    fb.a(fileOutputStream);
                } catch (Throwable th2) {
                    th = th2;
                    el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Error writing persistent file", th);
                    fb.a(fileOutputStream);
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = closeable;
                fb.a(fileOutputStream);
                throw th;
            }
        }
    }

    public static boolean a(File file) {
        if (file == null || file.getAbsoluteFile() == null) {
            return false;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return true;
        }
        if (parentFile.mkdirs() || parentFile.isDirectory()) {
            return true;
        }
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Unable to create persistent dir: " + parentFile);
        return false;
    }

    public static File b(boolean z) {
        Context b = dl.a().b();
        File file = null;
        if (z && "mounted".equals(Environment.getExternalStorageState())) {
            if (VERSION.SDK_INT >= 19 || b.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                file = b.getExternalCacheDir();
            }
        }
        return file == null ? b.getCacheDir() : file;
    }

    public static boolean b(File file) {
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            int i = 0;
            while (i < list.length) {
                if (!b(new File(file, list[i]))) {
                    return false;
                }
                i++;
            }
        }
        return file.delete();
    }

    @Deprecated
    public static String c(File file) {
        Closeable fileInputStream;
        StringBuilder stringBuilder;
        Throwable th;
        Throwable th2;
        if (file == null || !file.exists()) {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "Persistent file doesn't exist.");
            return null;
        } else {
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "Loading persistent data: " + file.getAbsolutePath());
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    stringBuilder = new StringBuilder();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        stringBuilder.append(new String(bArr, 0, read));
                    }
                    fb.a(fileInputStream);
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Error when loading persistent file", th);
                        fb.a(fileInputStream);
                        stringBuilder = null;
                    } catch (Throwable th4) {
                        th2 = th4;
                        fb.a(fileInputStream);
                        throw th2;
                    }
                    if (stringBuilder != null) {
                    }
                }
            } catch (Throwable th5) {
                fileInputStream = null;
                th2 = th5;
                fb.a(fileInputStream);
                throw th2;
            }
            return stringBuilder != null ? stringBuilder.toString() : null;
        }
    }
}