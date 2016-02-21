package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.monetization.internal.NativeAdResponse;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public abstract class j extends i {
    private static Method kc;
    private static Method kd;
    private static Method ke;
    private static Method kf;
    private static Method kg;
    private static Method kh;
    private static String ki;
    private static p kj;
    static boolean kk;
    private static long startTime;

    static class a extends Exception {
        public a(Throwable th) {
            super(th);
        }
    }

    static {
        startTime = 0;
        kk = false;
    }

    protected j(Context context, n nVar, o oVar) {
        super(context, nVar, oVar);
    }

    static String a(Context context, n nVar) {
        if (ke == null) {
            throw new a();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) ke.invoke(null, new Object[]{context});
            if (byteBuffer != null) {
                return nVar.a(byteBuffer.array(), true);
            }
            throw new a();
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    static ArrayList a(MotionEvent motionEvent, DisplayMetrics displayMetrics) {
        if (kf == null || motionEvent == null) {
            throw new a();
        }
        try {
            return (ArrayList) kf.invoke(null, new Object[]{motionEvent, displayMetrics});
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    protected static synchronized void a(String str, Context context, n nVar) {
        synchronized (j.class) {
            if (!kk) {
                try {
                    kj = new p(nVar, null);
                    ki = str;
                    e(context);
                    startTime = w().longValue();
                    kk = true;
                } catch (a e) {
                } catch (UnsupportedOperationException e2) {
                }
            }
        }
    }

    static String b(Context context, n nVar) {
        if (kh == null) {
            throw new a();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) kh.invoke(null, new Object[]{context});
            if (byteBuffer != null) {
                return nVar.a(byteBuffer.array(), true);
            }
            throw new a();
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    private static String b(byte[] bArr, String str) {
        try {
            return new String(kj.c(bArr, str), HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (com.google.android.gms.internal.p.a e) {
            throw new a(e);
        } catch (UnsupportedEncodingException e2) {
            throw new a(e2);
        }
    }

    static String d(Context context) {
        if (kg == null) {
            throw new a();
        }
        try {
            String str = (String) kg.invoke(null, new Object[]{context});
            if (str != null) {
                return str;
            }
            throw new a();
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    private static void e(Context context) {
        try {
            byte[] d = kj.d(r.getKey());
            byte[] c = kj.c(d, r.A());
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                cacheDir = context.getDir("dex", 0);
                if (cacheDir == null) {
                    throw new a();
                }
            }
            File createTempFile = File.createTempFile(NativeAdResponse.KEY_ADS, ".jar", cacheDir);
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(c, 0, c.length);
            fileOutputStream.close();
            DexClassLoader dexClassLoader = new DexClassLoader(createTempFile.getAbsolutePath(), cacheDir.getAbsolutePath(), null, context.getClassLoader());
            Class loadClass = dexClassLoader.loadClass(b(d, r.B()));
            Class loadClass2 = dexClassLoader.loadClass(b(d, r.H()));
            Class loadClass3 = dexClassLoader.loadClass(b(d, r.F()));
            Class loadClass4 = dexClassLoader.loadClass(b(d, r.L()));
            Class loadClass5 = dexClassLoader.loadClass(b(d, r.D()));
            Class loadClass6 = dexClassLoader.loadClass(b(d, r.J()));
            kc = loadClass.getMethod(b(d, r.C()), new Class[0]);
            kd = loadClass2.getMethod(b(d, r.I()), new Class[0]);
            ke = loadClass3.getMethod(b(d, r.G()), new Class[]{Context.class});
            kf = loadClass4.getMethod(b(d, r.M()), new Class[]{MotionEvent.class, DisplayMetrics.class});
            kg = loadClass5.getMethod(b(d, r.E()), new Class[]{Context.class});
            kh = loadClass6.getMethod(b(d, r.K()), new Class[]{Context.class});
            String name = createTempFile.getName();
            createTempFile.delete();
            new File(cacheDir, name.replace(".jar", ".dex")).delete();
        } catch (FileNotFoundException e) {
            throw new a(e);
        } catch (IOException e2) {
            throw new a(e2);
        } catch (ClassNotFoundException e3) {
            throw new a(e3);
        } catch (com.google.android.gms.internal.p.a e4) {
            throw new a(e4);
        } catch (NoSuchMethodException e5) {
            throw new a(e5);
        } catch (NullPointerException e6) {
            throw new a(e6);
        }
    }

    static String v() {
        if (ki != null) {
            return ki;
        }
        throw new a();
    }

    static Long w() {
        if (kc == null) {
            throw new a();
        }
        try {
            return (Long) kc.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    static String x() {
        if (kd == null) {
            throw new a();
        }
        try {
            return (String) kd.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    protected void b(Context context) {
        try {
            a(1, x());
        } catch (a e) {
        } catch (IOException e2) {
        }
        try {
            a(GoogleScorer.CLIENT_PLUS, v());
        } catch (a e3) {
        } catch (IOException e22) {
        }
        try {
            a(MMException.AD_BROKEN_REFERENCE, w().longValue());
        } catch (a e4) {
        } catch (IOException e222) {
        }
        try {
            a(MMException.DISPLAY_AD_NOT_PERMITTED, d(context));
        } catch (a e5) {
        } catch (IOException e2222) {
        }
    }

    protected void c(Context context) {
        try {
            a(GoogleScorer.CLIENT_PLUS, v());
        } catch (a e) {
        } catch (IOException e2) {
        }
        try {
            a(1, x());
        } catch (a e3) {
        } catch (IOException e22) {
        }
        try {
            long longValue = w().longValue();
            a(MMException.AD_BROKEN_REFERENCE, longValue);
            if (startTime != 0) {
                a(ZBuildConfig.$targetsdk, longValue - startTime);
                a(MMException.DISPLAY_AD_ALREADY_DISPLAYED, startTime);
            }
        } catch (a e4) {
        } catch (IOException e222) {
        }
        try {
            ArrayList a = a(this.jY, this.jZ);
            a(MMException.REQUEST_NOT_FILLED, ((Long) a.get(0)).longValue());
            a(MMException.REQUEST_BAD_RESPONSE, ((Long) a.get(1)).longValue());
            if (a.size() >= 3) {
                a(MMException.REQUEST_NOT_PERMITTED, ((Long) a.get(GoogleScorer.CLIENT_PLUS)).longValue());
            }
        } catch (a e5) {
        } catch (IOException e2222) {
        }
        try {
            a(ApiEventType.API_MRAID_SEND_SMS, a(context, this.ka));
        } catch (a e6) {
        } catch (IOException e22222) {
        }
        try {
            a(ApiEventType.API_MRAID_MAKE_CALL, b(context, this.ka));
        } catch (a e7) {
        } catch (IOException e222222) {
        }
    }
}