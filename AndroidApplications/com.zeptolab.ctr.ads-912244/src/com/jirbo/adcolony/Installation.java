package com.jirbo.adcolony;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.UUID;

class Installation {
    private static final String INSTALLATION = "INSTALLATION";
    private static String sID;

    static {
        sID = null;
    }

    Installation() {
    }

    public static synchronized String id(Context context) {
        String str;
        synchronized (Installation.class) {
            try {
                if (sID == null) {
                    File file = new File(context.getFilesDir(), INSTALLATION);
                    if (!file.exists()) {
                        writeInstallationFile(file);
                    }
                    sID = readInstallationFile(file);
                }
                str = sID;
            } catch (Exception e) {
                throw new AdColonyException(e.toString());
            } catch (Throwable th) {
            }
        }
        return str;
    }

    private static String readInstallationFile(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        byte[] bArr = new byte[((int) randomAccessFile.length())];
        randomAccessFile.readFully(bArr);
        randomAccessFile.close();
        return new String(bArr);
    }

    private static void writeInstallationFile(File file) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(UUID.randomUUID().toString().getBytes());
        fileOutputStream.close();
    }
}