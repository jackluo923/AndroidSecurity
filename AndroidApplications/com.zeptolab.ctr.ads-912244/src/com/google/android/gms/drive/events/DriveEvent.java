package com.google.android.gms.drive.events;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public interface DriveEvent extends SafeParcelable {
    public static final int TYPE_CHANGE = 1;

    public static interface Listener {
        void onEvent(DriveEvent driveEvent);
    }

    int getType();
}