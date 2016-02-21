package com.google.android.gms.internal;

import com.google.android.gms.drive.metadata.OrderedMetadataField;
import com.google.android.gms.drive.metadata.internal.b;

public class ft {
    public static final OrderedMetadataField EE;
    public static final OrderedMetadataField EF;
    public static final OrderedMetadataField EG;
    public static final OrderedMetadataField EH;
    public static final OrderedMetadataField LAST_VIEWED_BY_ME;

    static {
        EE = new b("modified", 4100000);
        EF = new b("modifiedByMe", 4100000);
        EG = new b("created", 4100000);
        EH = new b("sharedWithMe", 4100000);
        LAST_VIEWED_BY_ME = new b("lastOpenedTime", 4300000);
    }
}