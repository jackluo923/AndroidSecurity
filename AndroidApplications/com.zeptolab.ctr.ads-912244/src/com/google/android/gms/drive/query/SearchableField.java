package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.CollectionMetadataField;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.OrderedMetadataField;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ft;

public class SearchableField {
    public static final OrderedMetadataField EH;
    public static final MetadataField IS_PINNED;
    public static final OrderedMetadataField LAST_VIEWED_BY_ME;
    public static final MetadataField MIME_TYPE;
    public static final OrderedMetadataField MODIFIED_DATE;
    public static final CollectionMetadataField PARENTS;
    public static final MetadataField STARRED;
    public static final MetadataField TITLE;
    public static final MetadataField TRASHED;

    static {
        TITLE = fs.TITLE;
        MIME_TYPE = fs.MIME_TYPE;
        TRASHED = fs.TRASHED;
        PARENTS = fs.PARENTS;
        EH = ft.EH;
        STARRED = fs.STARRED;
        MODIFIED_DATE = ft.EE;
        LAST_VIEWED_BY_ME = ft.LAST_VIEWED_BY_ME;
        IS_PINNED = fs.IS_PINNED;
    }
}