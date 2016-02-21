package com.admarvel.android.ads;

import android.os.AsyncTask;
import android.os.Environment;
import java.io.File;

public class e extends AsyncTask {
    private static long a;

    static {
        a = 864000000;
    }

    protected Object doInBackground(Object... objArr) {
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(Environment.getExternalStorageDirectory(), "/" + Utils.encodeString("adm_tracker_dir"));
                if (file.exists()) {
                    File[] listFiles = file.listFiles();
                    int length = listFiles.length;
                    int i = 0;
                    while (i < length) {
                        File file2 = listFiles[i];
                        if (System.currentTimeMillis() - file2.lastModified() > a) {
                            file2.delete();
                        }
                        i++;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}