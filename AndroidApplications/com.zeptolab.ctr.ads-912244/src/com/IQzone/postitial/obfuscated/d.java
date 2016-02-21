package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;

public class d {
    private static final ql a;

    static {
        a = new ql();
    }

    public static File a(String str, Context context, int i) {
        ql qlVar = a;
        new StringBuilder("getting dir for ").append(str).toString();
        String[] split = str.split("/");
        File dir = context.getDir(split[0], AccessibilityNodeInfoCompat.ACTION_PASTE);
        int i2 = 1;
        while (i2 < split.length) {
            if (i2 == split.length - 1) {
                File file = new File(dir, split[i2]);
                qlVar = a;
                new StringBuilder("returning file ").append(file.getAbsolutePath()).toString();
                return file;
            } else {
                i2++;
                dir = new File(dir, split[i2]);
            }
        }
        qlVar = a;
        new StringBuilder("returning file ").append(dir.getAbsolutePath()).toString();
        return dir;
    }
}