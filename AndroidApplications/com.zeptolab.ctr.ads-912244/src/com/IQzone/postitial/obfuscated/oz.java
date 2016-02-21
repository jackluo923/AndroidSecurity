package com.IQzone.postitial.obfuscated;

import java.io.File;
import java.io.InputStream;

final class oz extends of {
    private /* synthetic */ File a;

    oz(ox oxVar, InputStream inputStream, File file) {
        this.a = file;
        super(inputStream);
    }

    public final void close() {
        super.close();
        this.a.delete();
    }
}