package android.support.v4.content;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

final class c implements b {
    private final String a;
    private final HashMap b;

    public c(String str) {
        this.b = new HashMap();
        this.a = str;
    }

    public final File a(Uri uri) {
        String encodedPath = uri.getEncodedPath();
        int indexOf = encodedPath.indexOf(47, 1);
        String decode = Uri.decode(encodedPath.substring(1, indexOf));
        String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
        File file = (File) this.b.get(decode);
        if (file == null) {
            throw new IllegalArgumentException(new StringBuilder("Unable to find configured root for ").append(uri).toString());
        }
        File file2 = new File(file, decode2);
        try {
            File canonicalFile = file2.getCanonicalFile();
            if (canonicalFile.getPath().startsWith(file.getPath())) {
                return canonicalFile;
            }
            throw new SecurityException("Resolved path jumped beyond configured root");
        } catch (IOException e) {
            throw new IllegalArgumentException(new StringBuilder("Failed to resolve canonical path for ").append(file2).toString());
        }
    }

    public final void a(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Name must not be empty");
        }
        try {
            this.b.put(str, file.getCanonicalFile());
        } catch (IOException e) {
            throw new IllegalArgumentException(new StringBuilder("Failed to resolve canonical path for ").append(file).toString(), e);
        }
    }
}