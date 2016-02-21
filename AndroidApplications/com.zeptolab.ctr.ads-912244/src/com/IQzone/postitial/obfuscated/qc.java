package com.IQzone.postitial.obfuscated;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Collection;
import java.util.Iterator;

public final class qc {
    static {
        String str = "yyyy-MM-dd HH:mm:ss.S";
        str = "MM-dd-yyyy";
        str = "MM/dd HH:mm";
    }

    public static String a(Collection collection, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            stringBuilder.append(it.next().toString()).append(str);
        }
        return collection.size() == 0 ? AdTrackerConstants.BLANK : stringBuilder.substring(0, stringBuilder.lastIndexOf(str));
    }
}