package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.r;
import com.google.android.gms.maps.model.internal.g;
import com.google.android.gms.maps.model.internal.g.a;

public final class TileOverlayOptions implements SafeParcelable {
    public static final TileOverlayOptionsCreator CREATOR;
    private float PP;
    private boolean PQ;
    private g Qt;
    private TileProvider Qu;
    private boolean Qv;
    private final int wj;

    class AnonymousClass_2 extends a {
        final /* synthetic */ TileProvider Qy;

        AnonymousClass_2(TileProvider tileProvider) {
            this.Qy = tileProvider;
        }

        public Tile getTile(int i, int i2, int i3) {
            return this.Qy.getTile(i, i2, i3);
        }
    }

    static {
        CREATOR = new TileOverlayOptionsCreator();
    }

    public TileOverlayOptions() {
        this.PQ = true;
        this.Qv = true;
        this.wj = 1;
    }

    TileOverlayOptions(int i, IBinder iBinder, boolean z, float f, boolean z2) {
        this.PQ = true;
        this.Qv = true;
        this.wj = i;
        this.Qt = a.au(iBinder);
        this.Qu = this.Qt == null ? null : new TileProvider() {
            private final g Qw;

            {
                this.Qw = TileOverlayOptions.this.Qt;
            }

            public Tile getTile(int i, int i2, int i3) {
                try {
                    return this.Qw.getTile(i, i2, i3);
                } catch (RemoteException e) {
                    return null;
                }
            }
        };
        this.PQ = z;
        this.PP = f;
        this.Qv = z2;
    }

    public int describeContents() {
        return 0;
    }

    public TileOverlayOptions fadeIn(boolean z) {
        this.Qv = z;
        return this;
    }

    public boolean getFadeIn() {
        return this.Qv;
    }

    public TileProvider getTileProvider() {
        return this.Qu;
    }

    int getVersionCode() {
        return this.wj;
    }

    public float getZIndex() {
        return this.PP;
    }

    IBinder hh() {
        return this.Qt.asBinder();
    }

    public boolean isVisible() {
        return this.PQ;
    }

    public TileOverlayOptions tileProvider(TileProvider tileProvider) {
        this.Qu = tileProvider;
        this.Qt = this.Qu == null ? null : new AnonymousClass_2(tileProvider);
        return this;
    }

    public TileOverlayOptions visible(boolean z) {
        this.PQ = z;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            j.a(this, parcel, i);
        } else {
            TileOverlayOptionsCreator.a(this, parcel, i);
        }
    }

    public TileOverlayOptions zIndex(float f) {
        this.PP = f;
        return this;
    }
}