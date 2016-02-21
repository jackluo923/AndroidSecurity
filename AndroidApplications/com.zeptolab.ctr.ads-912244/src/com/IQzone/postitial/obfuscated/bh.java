package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Environment;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class bh implements Runnable {
    private static final ql a;
    private static final Set b;
    private final Context c;
    private final px d;
    private final am e;

    static {
        a = new ql();
        Set hashSet = new HashSet();
        b = hashSet;
        hashSet.add("venture".toLowerCase(Locale.getDefault()));
        b.add("HTC Wildfire S".toLowerCase(Locale.getDefault()));
        b.add("htc wildfire".toLowerCase(Locale.getDefault()));
        b.add("Prism".toLowerCase(Locale.getDefault()));
        b.add("C5120".toLowerCase(Locale.getDefault()));
        b.add("LG-VS700".toLowerCase(Locale.getDefault()));
        b.add("SPH-M580".toLowerCase(Locale.getDefault()));
        b.add("SPH-M820-BST".toLowerCase(Locale.getDefault()));
        b.add("Blade S".toLowerCase(Locale.getDefault()));
        b.add("HUAWEI-M920".toLowerCase(Locale.getDefault()));
    }

    public bh(Context context, am amVar, px pxVar) {
        this.d = pxVar;
        this.c = context;
        this.e = amVar;
    }

    public static void a(OutputStream outputStream, String str) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        try {
            bufferedInputStream = new BufferedInputStream(new URL(str).openStream());
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                }
                outputStream.flush();
                bufferedInputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
    }

    public static boolean a() {
        String toLowerCase = Build.MODEL.toLowerCase(Locale.getDefault());
        ql qlVar = a;
        new StringBuilder("Phone model:").append(toLowerCase).toString();
        if (!b.contains(toLowerCase)) {
            return false;
        }
        ql qlVar2 = a;
        return true;
    }

    public void run() {
        if (!this.e.g()) {
            ql qlVar = a;
            try {
                String str;
                String replace;
                File file;
                Context context = this.c;
                String str2 = (String) this.d.a();
                try {
                    List arrayList = new ArrayList();
                    arrayList.add("close.png");
                    File a = d.a("postitial-configuration/postitial-assets", context, AccessibilityNodeInfoCompat.ACTION_PASTE);
                    a.mkdirs();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        str = (String) it.next();
                        replace = str.replace(".png", AdTrackerConstants.BLANK);
                        file = new File(a, replace);
                        if (file.exists()) {
                            if (file.length() == 0) {
                                file.delete();
                            } else if (BitmapFactory.decodeFile(file.getAbsolutePath()) == null) {
                                file.delete();
                            }
                        }
                        a(new FileOutputStream(file), str2 + str);
                        if (new File(a, replace).length() == 0) {
                            throw new Exception(new StringBuilder("<AssetsRunnable><7>, failed to download: ").append(str).toString());
                        } else if (BitmapFactory.decodeFile(file.getAbsolutePath()) == null) {
                            throw new Exception(new StringBuilder("<AssetsRunnable><8>, failed to convert: ").append(str).toString());
                        }
                    }
                } catch (Exception e) {
                    qlVar = a;
                }
                str2 = (String) this.d.a();
                List arrayList2 = new ArrayList();
                arrayList2.add("forward_demo.png");
                arrayList2.add("info_demo.png");
                arrayList2.add("pause_demo.png");
                arrayList2.add("play_demo.png");
                arrayList2.add("rewind_demo.png");
                arrayList2.add("sound_demo.png");
                arrayList2.add("sound_on_demo.png");
                File file2 = new File(Environment.getExternalStorageDirectory().getPath() + "/postitial/images");
                file2.mkdirs();
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    str = (String) it2.next();
                    replace = str.replace(".png", AdTrackerConstants.BLANK);
                    file = new File(file2, replace);
                    if (file.exists()) {
                        if (file.length() == 0) {
                            file.delete();
                        } else if (BitmapFactory.decodeFile(file.getAbsolutePath()) == null) {
                            file.delete();
                        }
                    }
                    a(new FileOutputStream(file), str2 + str);
                    if (new File(file2, replace).length() == 0) {
                        ql qlVar2 = a;
                        new StringBuilder("<AssetsRunnable><1>, ERROR DOWNLOADING : ").append(str).toString();
                        throw new Exception(new StringBuilder("<AssetsRunnable><2>, failed to download: ").append(str).append(" from:").append(str2).append(str).toString());
                    } else if (BitmapFactory.decodeFile(file.getAbsolutePath()) == null) {
                        throw new Exception(new StringBuilder("<AssetsRunnable><3>, failed to convert: ").append(str).toString());
                    }
                }
                arrayList2 = new ArrayList();
                file2 = d.a("postitial-configuration/postitial-assets", this.c, AccessibilityNodeInfoCompat.ACTION_PASTE);
                file2.mkdirs();
                it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    str = (String) it2.next();
                    File file3 = new File(file2, str);
                    if (file3.exists()) {
                        if (file3.length() == 0) {
                            file3.delete();
                        } else if (System.currentTimeMillis() - file3.lastModified() > 259200000) {
                            file3.delete();
                        }
                    }
                    a(new FileOutputStream(file3), str2 + str);
                    if (new File(file2, str).length() == 0) {
                        throw new Exception(new StringBuilder("<AssetsRunnable><4>, failed to download: ").append(str).append(" from:").append(str2).append(str).toString());
                    }
                }
                this.e.d(true);
            } catch (Exception e2) {
                qlVar = a;
                this.e.d(false);
            }
        }
    }
}