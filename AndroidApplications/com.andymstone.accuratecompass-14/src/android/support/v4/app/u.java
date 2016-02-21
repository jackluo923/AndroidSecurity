package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class u implements Creator {
    u() {
    }

    public FragmentManagerState a(Parcel parcel) {
        return new FragmentManagerState(parcel);
    }

    public FragmentManagerState[] a(int i) {
        return new FragmentManagerState[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}