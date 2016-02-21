package android.support.v4.b;

import android.os.Parcel;
import android.os.Parcelable.Creator;

// compiled from: ProGuard
class b implements Creator {
    final c a;

    public b(c cVar) {
        this.a = cVar;
    }

    public Object createFromParcel(Parcel parcel) {
        return this.a.a(parcel, null);
    }

    public Object[] newArray(int i) {
        return this.a.a(i);
    }
}