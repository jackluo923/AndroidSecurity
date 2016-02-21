package com.google.a.a;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.monetization.internal.NativeAdResponse;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public abstract class e extends c {
    static boolean c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static Method k;
    private static String l;
    private static long m;
    private static k n;

    static class a extends Exception {
        public a(Throwable th) {
            super(th);
        }
    }

    static {
        m = 0;
        c = false;
    }

    protected e(Context context, i iVar, j jVar) {
        super(context, iVar, jVar);
    }

    private static Long a() {
        if (d == null) {
            throw new a();
        }
        try {
            return (Long) d.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    private static String a(byte[] bArr, String str) {
        try {
            return new String(n.a(bArr, str), HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (com.google.a.a.k.a e) {
            throw new a(e);
        } catch (UnsupportedEncodingException e2) {
            throw new a(e2);
        }
    }

    protected static synchronized void a(String str, Context context, i iVar) {
        synchronized (e.class) {
            if (!c) {
                try {
                    n = new k(iVar);
                    l = str;
                    byte[] a = n.a("FsFFY3gP0SaIPGCeETRMKEWPhLlmyYQxfsU/qPI2yUs=");
                    byte[] a2 = n.a(a, "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");
                    File cacheDir = context.getCacheDir();
                    if (cacheDir == null) {
                        cacheDir = context.getDir("dex", 0);
                        if (cacheDir == null) {
                            throw new a();
                        }
                    }
                    File file = cacheDir;
                    File createTempFile = File.createTempFile(NativeAdResponse.KEY_ADS, ".jar", file);
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    fileOutputStream.write(a2, 0, a2.length);
                    fileOutputStream.close();
                    DexClassLoader dexClassLoader = new DexClassLoader(createTempFile.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
                    Class loadClass = dexClassLoader.loadClass(a(a, "y9Uc0Eiy/ILt5sqGlnwK5s6JVspr7ssbCSksth1Stg8QpcwQRw3+RtmkLAcsbWW7"));
                    Class loadClass2 = dexClassLoader.loadClass(a(a, "Q6vLiyIaTcNLLLU/Tb5GmsVRIzvTp03zpSqTViWAnt6QLw7F5+BnTfERheJ/dDeN"));
                    Class loadClass3 = dexClassLoader.loadClass(a(a, "ADeBZGnatHPlIQXIIyhD5szA8MRD8NQd5J+q2b9pG4GPJY0iVz4ERD0yJoLWLBfR"));
                    Class loadClass4 = dexClassLoader.loadClass(a(a, "1ibHHkHcaBj9SY3tRkV/n7l7/Q2Q11Kx9IVybXiVv0GxgUuG2uU9jncVreshKXts"));
                    Class loadClass5 = dexClassLoader.loadClass(a(a, "3olW+iiCqNRqFqqmJSsvfy6amOxq5rbYJR+xR8YFFBco3eSk2lMeu1Nkp4VTUbeu"));
                    Class loadClass6 = dexClassLoader.loadClass(a(a, "No379CMHo9O3v40wqjd1OnHbIHdS0o/qUa8TdjX2gNcN7DXmRKPHCwS2nU1nyWiH"));
                    Class loadClass7 = dexClassLoader.loadClass(a(a, "xHsF0Xl//NXmHOGU3HzGIWELjNpch174xxC0scYhwDayzaBHqcVDQtQYu1pERXYi"));
                    Class loadClass8 = dexClassLoader.loadClass(a(a, "2IUL+h2XX6VMYQZYwY2DBbdeIQJSA75beakNvEr6LZbo4lL3JBfwIynxF0vaOMFq"));
                    d = loadClass.getMethod(a(a, "VjSzhHQl9ITgG6WWZZtHUYeEMH0345EAYuxgpyC2vOA="), new Class[0]);
                    e = loadClass2.getMethod(a(a, "Wg/ROuzoieqYr21RcMdHECMV0nbftaM0NCbDV/dcFv8="), new Class[0]);
                    f = loadClass3.getMethod(a(a, "rYy9vy7Yji3txmzoPCUUPO7JcacxOp7klzmoA11MpH0="), new Class[0]);
                    g = loadClass4.getMethod(a(a, "vVr9xNWZVbuN53uqke+hN+KSngf5NKWCchTFsaHBOHk="), new Class[]{Context.class});
                    h = loadClass5.getMethod(a(a, "YD+iDkKIKNKOZbkx2qHIn+fV/diHPXyqXwlrC0dRjs8="), new Class[]{MotionEvent.class, DisplayMetrics.class});
                    i = loadClass6.getMethod(a(a, "jYB33TloxjR2yCnc7f307zJOgiDvecxjtjafRNENxR0="), new Class[]{Context.class});
                    j = loadClass7.getMethod(a(a, "qwX1Cs9yPmlRoFMIji2Od5J0FkF5VgKMsirFNaG0IrY="), new Class[]{Context.class});
                    k = loadClass8.getMethod(a(a, "x8MiuvKVC9QP6CS4r49ZGXDj9Tc0bknmj2hGGlg5OBQ="), new Class[]{Context.class});
                    String name = createTempFile.getName();
                    createTempFile.delete();
                    new File(file, name.replace(".jar", ".dex")).delete();
                    m = a().longValue();
                    c = true;
                } catch (FileNotFoundException e) {
                    throw new a(e);
                } catch (IOException e2) {
                    throw new a(e2);
                } catch (ClassNotFoundException e3) {
                    throw new a(e3);
                } catch (com.google.a.a.k.a e4) {
                    throw new a(e4);
                } catch (NoSuchMethodException e5) {
                    throw new a(e5);
                } catch (NullPointerException e6) {
                    throw new a(e6);
                } catch (a e7) {
                } catch (UnsupportedOperationException e8) {
                } catch (Throwable th) {
                }
            }
        }
    }

    private static String b() {
        if (f == null) {
            throw new a();
        }
        try {
            return (String) f.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    private static Long c() {
        if (e == null) {
            throw new a();
        }
        try {
            return (Long) e.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    private static String c(Context context) {
        if (i == null) {
            throw new a();
        }
        try {
            String str = (String) i.invoke(null, new Object[]{context});
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

    private static ArrayList d(Context context) {
        if (k == null) {
            throw new a();
        }
        try {
            ArrayList arrayList = (ArrayList) k.invoke(null, new Object[]{context});
            if (arrayList != null && arrayList.size() == 2) {
                return arrayList;
            }
            throw new a();
        } catch (IllegalAccessException e) {
            throw new a(e);
        } catch (InvocationTargetException e2) {
            throw new a(e2);
        }
    }

    protected final void b(Context context) {
        try {
            a(1, b());
        } catch (a e) {
        } catch (IOException e2) {
        }
        try {
            if (l == null) {
                throw new a();
            }
            a(GoogleScorer.CLIENT_PLUS, l);
            try {
                a(MMException.AD_BROKEN_REFERENCE, a().longValue());
            } catch (a e3) {
            } catch (IOException e22) {
            }
            try {
                a(MMException.DISPLAY_AD_NOT_PERMITTED, c(context));
            } catch (a e4) {
            } catch (IOException e222) {
            }
            try {
                ArrayList d = d(context);
                a(ApiEventType.API_MRAID_ASYNC_PING, ((Long) d.get(0)).longValue());
                a(ApiEventType.API_MRAID_PLAY_AUDIO, ((Long) d.get(1)).longValue());
            } catch (a e5) {
            } catch (IOException e2222) {
            }
            try {
                a(ApiEventType.API_MRAID_MUTE_AUDIO, c().longValue());
            } catch (a e6) {
            } catch (IOException e22222) {
            }
        } catch (a e7) {
        } catch (IOException e222222) {
        }
    }
}