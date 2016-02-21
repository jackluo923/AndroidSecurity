package com.IQzone.postitial.obfuscated;

import java.io.File;
import java.util.Comparator;

final class oy implements Comparator {
    oy(ox oxVar) {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return (int) (((File) obj2).lastModified() - ((File) obj).lastModified());
    }
}