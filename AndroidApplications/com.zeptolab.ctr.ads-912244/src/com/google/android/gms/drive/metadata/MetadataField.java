package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.er;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class MetadataField {
    private final String Eg;
    private final Set Eh;
    private final int Ei;

    protected MetadataField(Object obj, int i) {
        this.Eg = (String) er.b(obj, (Object)"fieldName");
        this.Eh = Collections.singleton(obj);
        this.Ei = i;
    }

    protected MetadataField(Object obj, Collection collection, int i) {
        this.Eg = (String) er.b(obj, (Object)"fieldName");
        this.Eh = Collections.unmodifiableSet(new HashSet(collection));
        this.Ei = i;
    }

    protected abstract void a(Bundle bundle, Object obj);

    public final void a(Object obj, Object obj2, int i, int i2) {
        er.b(obj, (Object)"dataHolder");
        er.b(obj2, (Object)"bundle");
        obj2.b(this, c(obj, i, i2));
    }

    public final void a(Object obj, Bundle bundle) {
        er.b((Object)bundle, (Object)"bundle");
        if (obj == null) {
            bundle.putString(getName(), null);
        } else {
            a(bundle, obj);
        }
    }

    protected abstract Object b(DataHolder dataHolder, int i, int i2);

    public final Object c(DataHolder dataHolder, int i, int i2) {
        Iterator it = this.Eh.iterator();
        while (it.hasNext()) {
            if (dataHolder.hasNull((String) it.next(), i, i2)) {
                return null;
            }
        }
        return b(dataHolder, i, i2);
    }

    public final Object d(Object obj) {
        er.b(obj, (Object)"bundle");
        return obj.get(getName()) != null ? e(obj) : null;
    }

    protected abstract Object e(Bundle bundle);

    public final Collection ff() {
        return this.Eh;
    }

    public final String getName() {
        return this.Eg;
    }

    public final int getVersionAdded() {
        return this.Ei;
    }

    public String toString() {
        return this.Eg;
    }
}