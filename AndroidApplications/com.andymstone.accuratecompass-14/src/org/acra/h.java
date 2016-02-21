package org.acra;

import java.io.File;
import java.io.FilenameFilter;

class h implements FilenameFilter {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    public boolean accept(File file, String str) {
        return str.endsWith(".stacktrace");
    }
}