package android.support.v13.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a implements Creator {
    a() {
    }

    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new SavedState(parcel, (byte) 0);
    }

    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new SavedState[i];
    }
}