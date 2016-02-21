package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Menu;
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

public final class ag extends af {
    static boolean c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static String i;
    private static long j;

    static {
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = 0;
        c = false;
    }

    private ag(Context context) {
        super(context);
    }

    public static ag a(String str, Context context) {
        b(str, context);
        return new ag(context);
    }

    private static String a() {
        if (i != null) {
            return i;
        }
        throw new ah();
    }

    private static String a(byte[] bArr, String str) {
        try {
            return new String(ak.a(bArr, str), "UTF-8");
        } catch (al e) {
            throw new ah(e);
        } catch (am e2) {
            throw new ah(e2);
        } catch (UnsupportedEncodingException e3) {
            throw new ah(e3);
        }
    }

    private static ArrayList a(MotionEvent motionEvent, DisplayMetrics displayMetrics) {
        if (g == null || motionEvent == null) {
            throw new ah();
        }
        try {
            return (ArrayList) g.invoke(null, new Object[]{motionEvent, displayMetrics});
        } catch (IllegalAccessException e) {
            throw new ah(e);
        } catch (InvocationTargetException e2) {
            throw new ah(e2);
        }
    }

    private static Long b() {
        if (d == null) {
            throw new ah();
        }
        try {
            return (Long) d.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new ah(e);
        } catch (InvocationTargetException e2) {
            throw new ah(e2);
        }
    }

    private static synchronized void b(String str, Context context) {
        int i = 0;
        synchronized (ag.class) {
            if (!c) {
                try {
                    i = str;
                    byte[] a = an.a("ARuhFl7nBw/97YxsDjOCIqF0d9D2SpkzcWN42U/KR6Q=");
                    if (a.length != 32) {
                        throw new al();
                    }
                    byte[] bArr = new byte[16];
                    ByteBuffer.wrap(a, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, Menu.CATEGORY_SHIFT).get(bArr);
                    while (i < bArr.length) {
                        bArr[i] = (byte) (bArr[i] ^ 68);
                        i++;
                    }
                    a = ak.a(bArr, "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");
                    File cacheDir = context.getCacheDir();
                    if (cacheDir == null) {
                        cacheDir = context.getDir("dex", 0);
                        if (cacheDir == null) {
                            throw new ah();
                        }
                    }
                    File createTempFile = File.createTempFile("ads", ".jar", cacheDir);
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    fileOutputStream.write(a, 0, a.length);
                    fileOutputStream.close();
                    DexClassLoader dexClassLoader = new DexClassLoader(createTempFile.getAbsolutePath(), cacheDir.getAbsolutePath(), null, context.getClassLoader());
                    Class loadClass = dexClassLoader.loadClass(a(bArr, "KXbn1K9Cz2ZgeOTJa+Veo9TtqgqFQ49etShsU9z+UAP37syBIxS/qy9gK8yB2kKw"));
                    Class loadClass2 = dexClassLoader.loadClass(a(bArr, "XRMsX/JQwPQGX7sOWjvg2nQVjUMO7xUcwxz6xwHRTKyo/tTIVco9OqenUPNGgQDi"));
                    Class loadClass3 = dexClassLoader.loadClass(a(bArr, "/XHxH5XHwv8SxKlJV4XyYOIB7MuqmSwqMacPj1bbgbS8IA8tETEArriXswHCehFP"));
                    Class loadClass4 = dexClassLoader.loadClass(a(bArr, "H7bkbmrRKL7RuC3umfv5Gfu9Jh+fRNmOXlqAhgMuKVVZSJvQgYyRy7HjcKaVodcc"));
                    Class loadClass5 = dexClassLoader.loadClass(a(bArr, "XONjIhr7f5+v7VYE2sRnrybwgpe9YIOqpcEHDUiel7EzNqAyI0RSFuWdEz2ratN+"));
                    d = loadClass.getMethod(a(bArr, "cbSAmn5ZqTUlLC/bgOZkEzXGEOY21uWifgdKJs9yk7A="), new Class[0]);
                    e = loadClass2.getMethod(a(bArr, "m02zlU+rWIGC8/SRFpMtHvda14INo+uzPhZo7qXgVHk="), new Class[0]);
                    f = loadClass3.getMethod(a(bArr, "Jil+B/2MHKx+6dpy/2xm493DojzmiB3wB5+eGz7hPDU="), new Class[]{Context.class});
                    g = loadClass4.getMethod(a(bArr, "o/Z2yPrC7bUJNorc5zvYvC8KtIwAULd35yQfACbwNXc="), new Class[]{MotionEvent.class, DisplayMetrics.class});
                    h = loadClass5.getMethod(a(bArr, "LbZjxcpsz6RheqLbO48YwKTUVh9wQrFoY7gJK2jAZFI="), new Class[]{Context.class});
                    String name = createTempFile.getName();
                    createTempFile.delete();
                    new File(cacheDir, name.replace(".jar", ".dex")).delete();
                    j = b().longValue();
                    c = true;
                } catch (am e) {
                    throw new ah(e);
                } catch (FileNotFoundException e2) {
                    throw new ah(e2);
                } catch (IOException e3) {
                    throw new ah(e3);
                } catch (ClassNotFoundException e4) {
                    throw new ah(e4);
                } catch (al e5) {
                    throw new ah(e5);
                } catch (NoSuchMethodException e6) {
                    throw new ah(e6);
                } catch (NullPointerException e7) {
                    throw new ah(e7);
                } catch (ah e8) {
                } catch (UnsupportedOperationException e9) {
                }
            }
        }
    }

    private static String c() {
        if (e == null) {
            throw new ah();
        }
        try {
            return (String) e.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new ah(e);
        } catch (InvocationTargetException e2) {
            throw new ah(e2);
        }
    }

    private static String d(Context context) {
        if (h == null) {
            throw new ah();
        }
        try {
            String str = (String) h.invoke(null, new Object[]{context});
            if (str != null) {
                return str;
            }
            throw new ah();
        } catch (IllegalAccessException e) {
            throw new ah(e);
        } catch (InvocationTargetException e2) {
            throw new ah(e2);
        }
    }

    private static String e(Context context) {
        if (f == null) {
            throw new ah();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) f.invoke(null, new Object[]{context});
            if (byteBuffer != null) {
                return an.a(byteBuffer.array());
            }
            throw new ah();
        } catch (IllegalAccessException e) {
            throw new ah(e);
        } catch (InvocationTargetException e2) {
            throw new ah(e2);
        }
    }

    protected final void a(Context context) {
        try {
            a(1, c());
        } catch (ah e) {
        } catch (IOException e2) {
        }
        try {
            a(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, a());
        } catch (ah e3) {
        } catch (IOException e22) {
        }
        try {
            a(25, b().longValue());
        } catch (ah e4) {
        } catch (IOException e222) {
        }
        try {
            a(24, d(context));
        } catch (ah e5) {
        } catch (IOException e2222) {
        }
    }

    protected final void b(Context context) {
        try {
            a(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, a());
        } catch (ah e) {
        } catch (IOException e2) {
        }
        try {
            a(1, c());
        } catch (ah e3) {
        } catch (IOException e22) {
        }
        try {
            long longValue = b().longValue();
            a(25, longValue);
            if (j != 0) {
                a(17, longValue - j);
                a(23, j);
            }
        } catch (ah e4) {
        } catch (IOException e222) {
        }
        try {
            ArrayList a = a(this.a, this.b);
            a(14, ((Long) a.get(0)).longValue());
            a(15, ((Long) a.get(1)).longValue());
            if (a.size() >= 3) {
                a(Menu.CATEGORY_SHIFT, ((Long) a.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).longValue());
            }
        } catch (ah e5) {
        } catch (IOException e2222) {
        }
        try {
            a(27, e(context));
        } catch (ah e6) {
        } catch (IOException e22222) {
        }
    }
}