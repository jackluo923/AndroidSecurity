package com.jirbo.adcolony;

import java.io.File;

class ADCDir {
    ADCDir() {
    }

    public static boolean delete(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            int i = 0;
            while (i < listFiles.length) {
                if (listFiles[i].isDirectory()) {
                    delete(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
                i++;
            }
        }
        return file.delete();
    }
}