package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

public abstract class CollectionMetadataField extends MetadataField {
    protected CollectionMetadataField(String str, int i) {
        super(str, i);
    }

    protected Collection a(DataHolder dataHolder, int i, int i2) {
        throw new UnsupportedOperationException("Cannot read collections from a dataHolder.");
    }

    protected /* synthetic */ Object b(DataHolder dataHolder, int i, int i2) {
        return a(dataHolder, i, i2);
    }
}