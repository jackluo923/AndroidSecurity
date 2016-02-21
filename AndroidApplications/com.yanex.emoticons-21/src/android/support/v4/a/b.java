package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b implements Creator {
    final c a;

    public b(c cVar) {
        this.a = cVar;
    }

    public final Object createFromParcel(Parcel parcel) {
        return this.a.a(parcel, null);
    }

    public final Object[] newArray(int i) {
        return this.a.a(i);
    }
}