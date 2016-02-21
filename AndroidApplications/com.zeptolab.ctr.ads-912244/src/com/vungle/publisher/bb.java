package com.vungle.publisher;

import com.vungle.log.Logger;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public final class bb {

    public static interface a {
        void a_(File file, long j);
    }

    public static void a(File file, File file2, a... aVarArr) {
        Logger.d(Logger.FILE_TAG, new StringBuilder("extracting ").append(file).append(" to ").append(file2).toString());
        if (file2.isDirectory() || file2.mkdirs()) {
            OutputStream fileOutputStream;
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        File file3 = new File(file2, nextEntry.getName());
                        Logger.v(Logger.FILE_TAG, new StringBuilder("extracting ").append(file3).toString());
                        fileOutputStream = new FileOutputStream(file3);
                        long j = 0;
                        while (true) {
                            int read = zipInputStream.read(bArr);
                            if (read > 0) {
                                j += (long) read;
                                fileOutputStream.write(bArr, 0, read);
                            } else {
                                read = 0;
                                while (read <= 0) {
                                    aVarArr[read].a(file3, j);
                                    read++;
                                }
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e) {
                                    Logger.w(Logger.FILE_TAG, new StringBuilder("error closing file output stream ").append(file2).toString());
                                }
                            }
                        }
                    } else {
                        try {
                            zipInputStream.close();
                            return;
                        } catch (IOException e2) {
                            Logger.w(Logger.FILE_TAG, new StringBuilder("error closing zip input stream ").append(file).toString());
                        }
                    }
                }
            } catch (Throwable th) {
                try {
                    zipInputStream.close();
                } catch (IOException e3) {
                    Logger.w(Logger.FILE_TAG, new StringBuilder("error closing zip input stream ").append(file).toString());
                }
            }
        } else {
            throw new IOException(new StringBuilder("failed to create directories ").append(file2).toString());
        }
    }
}