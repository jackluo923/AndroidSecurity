package com.IQzone.postitial.obfuscated;

import java.io.File;
import java.io.InputStream;
import java.util.Map.Entry;

final class pf extends of {
    private /* synthetic */ Entry a;

    pf(pd pdVar, InputStream inputStream, Entry entry) {
        this.a = entry;
        super(inputStream);
    }

    public final void close() {
        super.close();
        ((File) this.a.getValue()).delete();
    }
}