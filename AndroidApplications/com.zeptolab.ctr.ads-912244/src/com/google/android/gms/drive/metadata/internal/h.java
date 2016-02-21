package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import java.util.Collection;

public abstract class h extends MetadataField {
    public h(String str, Collection collection, int i) {
        super(str, collection, i);
    }

    protected void a(Bundle bundle, Parcelable parcelable) {
        bundle.putParcelable(getName(), parcelable);
    }

    protected /* synthetic */ Object e(Bundle bundle) {
        return k(bundle);
    }

    protected Parcelable k(Bundle bundle) {
        return bundle.getParcelable(getName());
    }
}