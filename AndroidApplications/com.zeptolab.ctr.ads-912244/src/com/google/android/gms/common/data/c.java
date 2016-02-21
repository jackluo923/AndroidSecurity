package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class c extends DataBuffer {
    private static final String[] zY;
    private final Creator zZ;

    static {
        zY = new String[]{i.a};
    }

    public c(DataHolder dataHolder, Creator creator) {
        super(dataHolder);
        this.zZ = creator;
    }

    public SafeParcelable H(int i) {
        byte[] byteArray = this.zU.getByteArray(i.a, i, 0);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(byteArray, 0, byteArray.length);
        obtain.setDataPosition(0);
        SafeParcelable safeParcelable = (SafeParcelable) this.zZ.createFromParcel(obtain);
        obtain.recycle();
        return safeParcelable;
    }

    public /* synthetic */ Object get(int i) {
        return H(i);
    }
}