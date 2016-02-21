package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.CollectionMetadataField;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.a;
import com.google.android.gms.drive.metadata.internal.e;
import com.google.android.gms.drive.metadata.internal.g;
import com.google.android.gms.drive.metadata.internal.i;
import com.google.android.gms.drive.metadata.internal.j;
import com.google.android.gms.plus.PlusShare;

public class fs {
    public static final MetadataField EA;
    public static final MetadataField EB;
    public static final MetadataField EC;
    public static final MetadataField ED;
    public static final MetadataField El;
    public static final MetadataField Em;
    public static final MetadataField En;
    public static final MetadataField Eo;
    public static final MetadataField Ep;
    public static final CollectionMetadataField Eq;
    public static final MetadataField Er;
    public static final MetadataField Es;
    public static final MetadataField Et;
    public static final MetadataField Eu;
    public static final MetadataField Ev;
    public static final MetadataField Ew;
    public static final MetadataField Ex;
    public static final MetadataField Ey;
    public static final MetadataField Ez;
    public static final MetadataField IS_PINNED;
    public static final MetadataField MIME_TYPE;
    public static final CollectionMetadataField PARENTS;
    public static final MetadataField STARRED;
    public static final MetadataField TITLE;
    public static final MetadataField TRASHED;

    final class AnonymousClass_1 extends a {
        AnonymousClass_1(String str, int i) {
            super(str, i);
        }

        protected /* synthetic */ Object b(DataHolder dataHolder, int i, int i2) {
            return d(dataHolder, i, i2);
        }

        protected Boolean d(DataHolder dataHolder, int i, int i2) {
            return Boolean.valueOf(dataHolder.getInteger(getName(), i, i2) != 0);
        }
    }

    static {
        El = fu.EI;
        TITLE = new j(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, 4100000);
        MIME_TYPE = new j("mimeType", 4100000);
        STARRED = new a("starred", 4100000);
        TRASHED = new AnonymousClass_1("trashed", 4100000);
        Em = new a("isEditable", 4100000);
        IS_PINNED = new a("isPinned", 4100000);
        En = new a("isAppData", 4300000);
        Eo = new a("isShared", 4300000);
        PARENTS = new g("parents", 4100000);
        Ep = new j("alternateLink", 4300000);
        Eq = new i("ownerNames", 4300000);
        Er = new j(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, 4300000);
        Es = new a("isCopyable", 4300000);
        Et = new j("embedLink", 4300000);
        Eu = new j("fileExtension", 4300000);
        Ev = new e("fileSize", 4300000);
        Ew = new a("isViewed", 4300000);
        Ex = new a("isRestricted", 4300000);
        Ey = new j("originalFilename", 4300000);
        Ez = new e("quotaBytesUsed", 4300000);
        EA = new j("webContentLink", 4300000);
        EB = new j("webViewLink", 4300000);
        EC = new j("indexableText", 4300000);
        ED = new a("hasThumbnail", 4300000);
    }
}