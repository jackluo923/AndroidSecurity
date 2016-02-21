package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

class ParcelableCompatCreatorHoneycombMR2 implements ClassLoaderCreator {
    private final ParcelableCompatCreatorCallbacks mCallbacks;

    public ParcelableCompatCreatorHoneycombMR2(ParcelableCompatCreatorCallbacks parcelableCompatCreatorCallbacks) {
        this.mCallbacks = parcelableCompatCreatorCallbacks;
    }

    public Object createFromParcel(Parcel parcel) {
        return this.mCallbacks.createFromParcel(parcel, null);
    }

    public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.mCallbacks.createFromParcel(parcel, classLoader);
    }

    public Object[] newArray(int i) {
        return this.mCallbacks.newArray(i);
    }
}