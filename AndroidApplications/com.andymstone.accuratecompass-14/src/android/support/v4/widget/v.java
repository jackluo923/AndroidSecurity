package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class v implements Creator {
    v() {
    }

    public SavedState a(Parcel parcel) {
        return new SavedState(parcel, null);
    }

    public SavedState[] a(int i) {
        return new SavedState[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}