package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class t implements Creator {
    t() {
    }

    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new SavedState(parcel, (byte) 0);
    }

    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new SavedState[i];
    }
}