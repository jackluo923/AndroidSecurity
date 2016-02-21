package com.vungle.publisher;

import com.vungle.log.Logger;
import java.io.File;

public final class ba {
    public static String a(Object... objArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < 2) {
            Object obj = objArr[i];
            if (obj == null) {
                throw new IllegalArgumentException(new StringBuilder("null path element at index ").append(i).toString());
            }
            stringBuilder.append(obj);
            int length = stringBuilder.length();
            if (length > 0 && i + 1 < 2 && stringBuilder.charAt(length - 1) != File.separatorChar) {
                stringBuilder.append(File.separatorChar);
            }
            i++;
        }
        return stringBuilder.toString();
    }

    private static boolean a(File file) {
        boolean z;
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            int i = 0;
            z = true;
            while (i < length) {
                z = a(listFiles[i]) && i != 0;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && i != 0;
    }

    public static boolean a(String str) {
        boolean a = a(new File(str));
        if (a) {
            Logger.d(Logger.FILE_TAG, new StringBuilder("successfully deleted: ").append(str).toString());
        } else {
            Logger.w(Logger.FILE_TAG, new StringBuilder("could not delete: ").append(str).toString());
        }
        return a;
    }
}