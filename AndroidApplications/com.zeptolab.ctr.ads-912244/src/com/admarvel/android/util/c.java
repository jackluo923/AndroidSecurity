package com.admarvel.android.util;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class c {
    private String[] a;
    private String b;

    public c(String[] strArr, String str) {
        this.a = strArr;
        this.b = str;
    }

    public void a() {
        int i = 0;
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(this.b)));
            byte[] bArr = new byte[2048];
            while (i < this.a.length) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.a[i]), 2048);
                zipOutputStream.putNextEntry(new ZipEntry(this.a[i].substring(this.a[i].lastIndexOf("/") + 1)));
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
                    if (read == -1) {
                        break;
                    }
                    zipOutputStream.write(bArr, 0, read);
                }
                bufferedInputStream.close();
                i++;
            }
            zipOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}