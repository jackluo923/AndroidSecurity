package android.support.v4.b;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

class d implements ClassLoaderCreator {
    private final c a;

    public d(c cVar) {
        this.a = cVar;
    }

    public Object createFromParcel(Parcel parcel) {
        return this.a.a(parcel, null);
    }

    public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.a.a(parcel, classLoader);
    }

    public Object[] newArray(int i) {
        return this.a.a(i);
    }
}