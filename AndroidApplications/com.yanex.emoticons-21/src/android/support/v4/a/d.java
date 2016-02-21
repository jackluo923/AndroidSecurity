package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

final class d implements ClassLoaderCreator {
    private final c a;

    public d(c cVar) {
        this.a = cVar;
    }

    public final Object createFromParcel(Parcel parcel) {
        return this.a.a(parcel, null);
    }

    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.a.a(parcel, classLoader);
    }

    public final Object[] newArray(int i) {
        return this.a.a(i);
    }
}