package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class c extends b implements Parcelable {
    public static final Creator CREATOR;
    static final Orientation c;

    static {
        c = Orientation.matchVideo;
        CREATOR = new Creator() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new c(new b[0]).a(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new c[i];
            }
        };
    }

    public c(b... bVarArr) {
        if (bVarArr != null) {
            int length = bVarArr.length;
            int i = 0;
            while (i < length) {
                b bVar = bVarArr[i];
                if (bVar != null) {
                    this.a.putAll(bVar.a);
                    this.b.putAll(bVar.b);
                }
                i++;
            }
        }
    }

    protected final c a(Parcel parcel) {
        ClassLoader classLoader = c.class.getClassLoader();
        this.a = parcel.readBundle(classLoader);
        this.b = parcel.readBundle(classLoader);
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public String getIncentivizedCancelDialogBodyText() {
        String string = this.a.getString("incentivizedCancelDialogBodyText");
        return string == null ? "Closing this video early will prevent you from earning your reward. Are you sure?" : string;
    }

    public String getIncentivizedCancelDialogCloseButtonText() {
        String string = this.a.getString("incentivizedCancelDialogNegativeButtonText");
        return string == null ? "Close video" : string;
    }

    public String getIncentivizedCancelDialogKeepWatchingButtonText() {
        String string = this.a.getString("incentivizedCancelDialogPositiveButtonText");
        return string == null ? "Keep watching" : string;
    }

    public String getIncentivizedCancelDialogTitle() {
        String string = this.a.getString("incentivizedCancelDialogTitle");
        return string == null ? "Close video?" : string;
    }

    public Orientation getOrientation() {
        Orientation orientation = (Orientation) this.a.getParcelable("orientation");
        return orientation == null ? c : orientation;
    }

    public boolean isBackButtonImmediatelyEnabled() {
        return this.a.getBoolean("isBackButtonEnabled", false);
    }

    public boolean isImmersiveMode() {
        return this.a.getBoolean("isImmersiveMode", false);
    }

    public boolean isIncentivized() {
        return this.a.getBoolean("isIncentivized", false);
    }

    public boolean isSoundEnabled() {
        return this.a.getBoolean("isSoundEnabled", true);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.a);
        parcel.writeBundle(this.b);
    }
}