package com.google.android.gms.maps;

import android.location.Location;

public interface LocationSource {

    public static interface OnLocationChangedListener {
        void onLocationChanged(Location location);
    }

    void activate(OnLocationChangedListener onLocationChangedListener);

    void deactivate();
}