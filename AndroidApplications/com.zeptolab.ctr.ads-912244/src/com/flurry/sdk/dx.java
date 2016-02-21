package com.flurry.sdk;

import android.os.Looper;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public final class dx {
    private static final String a;
    private static final Set b;
    private static String c;

    static {
        a = dx.class.getSimpleName();
        b = i();
    }

    public static synchronized String a() {
        String str;
        synchronized (dx.class) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Must be called from a background thread!");
            }
            if (TextUtils.isEmpty(c)) {
                c = g();
            }
            str = c;
        }
        return str;
    }

    private static String a(DataInput dataInput) {
        return 1 != dataInput.readInt() ? null : dataInput.readUTF();
    }

    private static void a(String str, DataOutput dataOutput) {
        dataOutput.writeInt(1);
        dataOutput.writeUTF(str);
    }

    static void a(String str, File file) {
        Throwable th;
        Closeable closeable = null;
        try {
            dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                a(str, (DataOutput)dataOutputStream);
                fb.a(dataOutputStream);
            } catch (Throwable th2) {
                th = th2;
                el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Error when saving phoneId", th);
                fb.a(dataOutputStream);
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = closeable;
            fb.a(dataOutputStream);
            throw th;
        }
    }

    static boolean a(String str) {
        return !TextUtils.isEmpty(str) && !c(str.toLowerCase(Locale.US));
    }

    static String b() {
        String string = Secure.getString(dl.a().b().getContentResolver(), "android_id");
        return a(string) ? "AND" + string : null;
    }

    private static String b(DataInput dataInput) {
        if (46586 != dataInput.readUnsignedShort() || 2 != dataInput.readUnsignedShort()) {
            return null;
        }
        dataInput.readUTF();
        return dataInput.readUTF();
    }

    static void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            File fileStreamPath = dl.a().b().getFileStreamPath(h());
            if (fa.a(fileStreamPath)) {
                a(str, fileStreamPath);
            }
        }
    }

    static String c() {
        String e = e();
        if (TextUtils.isEmpty(e)) {
            e = f();
            if (TextUtils.isEmpty(e)) {
                e = d();
            }
            b(e);
        }
        return e;
    }

    private static boolean c(String str) {
        return b.contains(str);
    }

    static String d() {
        return "ID" + Long.toString(Double.doubleToLongBits(Math.random()) + 37 * (System.nanoTime() + ((long) (du.c(dl.a().b()).hashCode() * 37))), MMException.REQUEST_NOT_PERMITTED);
    }

    static String e() {
        Closeable dataInputStream;
        File fileStreamPath = dl.a().b().getFileStreamPath(h());
        if (fileStreamPath == null || !fileStreamPath.exists()) {
            return null;
        }
        try {
            dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
            try {
                String a = a((DataInput)dataInputStream);
                fb.a(dataInputStream);
                return a;
            } catch (Throwable th) {
                th = th;
                el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Error when loading phoneId", th);
                fb.a(dataInputStream);
                return null;
            }
        } catch (Throwable th2) {
            dataInputStream = null;
            Throwable th3 = th2;
            fb.a(dataInputStream);
            throw th3;
        }
    }

    static String f() {
        File filesDir = dl.a().b().getFilesDir();
        if (filesDir == null) {
            return null;
        }
        String[] list = filesDir.list(new FilenameFilter() {
            public boolean accept(File file, String str) {
                return str.startsWith(".flurryagent.");
            }
        });
        if (list == null || list.length == 0) {
            return null;
        }
        filesDir = dl.a().b().getFileStreamPath(list[0]);
        if (filesDir == null || !filesDir.exists()) {
            return null;
        }
        try {
            dataInputStream = new DataInputStream(new FileInputStream(filesDir));
            try {
                String b = b((DataInput)dataInputStream);
                fb.a(dataInputStream);
                return b;
            } catch (Throwable th) {
                th = th;
                el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Error when loading phoneId", th);
                fb.a(dataInputStream);
                return null;
            }
        } catch (Throwable th2) {
            dataInputStream = null;
            Throwable th3 = th2;
            fb.a(dataInputStream);
            throw th3;
        }
    }

    private static String g() {
        Object b = b();
        return TextUtils.isEmpty(b) ? c() : b;
    }

    private static String h() {
        return ".flurryb.";
    }

    private static Set i() {
        Set hashSet = new HashSet();
        hashSet.add("null");
        hashSet.add("9774d56d682e549c");
        hashSet.add("dead00beef");
        return Collections.unmodifiableSet(hashSet);
    }
}