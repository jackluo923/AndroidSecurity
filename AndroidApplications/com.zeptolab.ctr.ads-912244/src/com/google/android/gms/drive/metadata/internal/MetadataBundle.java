package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class MetadataBundle implements SafeParcelable {
    public static final Creator CREATOR;
    final Bundle Ek;
    final int wj;

    static {
        CREATOR = new f();
    }

    MetadataBundle(int i, Bundle bundle) {
        this.wj = i;
        this.Ek = (Bundle) er.f(bundle);
        this.Ek.setClassLoader(getClass().getClassLoader());
        List arrayList = new ArrayList();
        Iterator it = this.Ek.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (c.ar(str) == null) {
                arrayList.add(str);
                Log.w("MetadataBundle", "Ignored unknown metadata field in bundle: " + str);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.Ek.remove((String) it2.next());
        }
    }

    private MetadataBundle(Bundle bundle) {
        this(1, bundle);
    }

    public static MetadataBundle a(MetadataField metadataField, Object obj) {
        MetadataBundle fh = fh();
        fh.b(metadataField, obj);
        return fh;
    }

    public static MetadataBundle a(MetadataBundle metadataBundle) {
        return new MetadataBundle(new Bundle(metadataBundle.Ek));
    }

    public static MetadataBundle fh() {
        return new MetadataBundle(new Bundle());
    }

    public Object a(MetadataField metadataField) {
        return metadataField.d(this.Ek);
    }

    public void b(MetadataField metadataField, Object obj) {
        if (c.ar(metadataField.getName()) == null) {
            throw new IllegalArgumentException("Unregistered field: " + metadataField.getName());
        }
        metadataField.a(obj, this.Ek);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(MetadataBundle metadataBundle) {
        if (this == metadataBundle) {
            return true;
        }
        if (!(metadataBundle instanceof MetadataBundle)) {
            return false;
        }
        metadataBundle = metadataBundle;
        Set keySet = this.Ek.keySet();
        if (!keySet.equals(metadataBundle.Ek.keySet())) {
            return false;
        }
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!ep.equal(this.Ek.get(str), metadataBundle.Ek.get(str))) {
                return false;
            }
        }
        return true;
    }

    public Set fi() {
        Set hashSet = new HashSet();
        Iterator it = this.Ek.keySet().iterator();
        while (it.hasNext()) {
            hashSet.add(c.ar((String) it.next()));
        }
        return hashSet;
    }

    public int hashCode() {
        Iterator it = this.Ek.keySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            i *= 31;
            i = this.Ek.get((String) it.next()).hashCode() + i;
        }
        return i;
    }

    public String toString() {
        return "MetadataBundle [values=" + this.Ek + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}