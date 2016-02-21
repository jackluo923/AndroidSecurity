package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.lang.ref.WeakReference;

class a extends AsyncTask {
    private final WeakReference a;
    private final File b;

    public a(Context context, File file) {
        this.a = new WeakReference(context);
        this.b = file;
    }

    void a_(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                a(listFiles[i]);
                i++;
            }
        }
        if (System.currentTimeMillis() - file.lastModified() > 2592000) {
            file.delete();
        }
    }

    protected Object doInBackground(Object... objArr) {
        if (((Context) this.a.get()) != null) {
            try {
                File file = new File(this.b, "/data/com.admarvel.android.admarvelcachedads/cachedads");
                if (file.exists()) {
                    File[] listFiles = file.listFiles();
                    int length = listFiles.length;
                    int i = 0;
                    while (i < length) {
                        a(listFiles[i]);
                        i++;
                    }
                }
            } catch (Exception e) {
            }
        }
        return null;
    }
}