package com.mologiq.analytics;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

class l {
    private final File a;
    private final File b;

    l(File file) {
        this.a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    FileOutputStream a() {
        if (this.a.exists()) {
            if (this.b.exists()) {
                this.a.delete();
            } else if (!this.a.renameTo(this.b)) {
                ac.a("Couldn't rename file " + this.a + " to backup file " + this.b);
            }
        }
        try {
            return new FileOutputStream(this.a);
        } catch (FileNotFoundException e) {
            File parentFile = this.a.getParentFile();
            if (parentFile.mkdir()) {
                FileUtils.setPermissions(parentFile.getPath(), 505, -1, -1);
                try {
                    return new FileOutputStream(this.a);
                } catch (FileNotFoundException e2) {
                    throw new IOException("Couldn't create " + this.a);
                }
            } else {
                throw new IOException("Couldn't create directory " + this.a);
            }
        }
    }

    void a(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
                this.b.delete();
            } catch (IOException e) {
                ac.a("finishWrite: Got exception:" + e.getStackTrace().toString());
            }
        }
    }

    FileInputStream b() {
        if (this.b.exists()) {
            this.a.delete();
            this.b.renameTo(this.a);
        }
        return new FileInputStream(this.a);
    }

    byte[] c() {
        int i = 0;
        FileInputStream b = b();
        Object obj = new Object[b.available()];
        while (true) {
            int read = b.read(obj, i, obj.length - i);
            if (read <= 0) {
                b.close();
                return obj;
            } else {
                Object obj2;
                read += i;
                i = b.available();
                if (i > obj.length - read) {
                    obj2 = new Object[(i + read)];
                    System.arraycopy(obj, 0, obj2, 0, read);
                } else {
                    obj2 = obj;
                }
                obj = obj2;
                i = read;
            }
        }
    }
}