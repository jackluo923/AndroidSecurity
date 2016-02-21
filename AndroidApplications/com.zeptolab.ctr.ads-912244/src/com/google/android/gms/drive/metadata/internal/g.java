package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.drive.metadata.CollectionMetadataField;
import java.util.ArrayList;
import java.util.Collection;

public class g extends CollectionMetadataField {
    public g(String str, int i) {
        super(str, i);
    }

    protected void a(Bundle bundle, Collection collection) {
        bundle.putParcelableArrayList(getName(), new ArrayList(collection));
    }

    protected /* synthetic */ Object e(Bundle bundle) {
        return j(bundle);
    }

    protected Collection j(Bundle bundle) {
        return bundle.getParcelableArrayList(getName());
    }
}