package com.google.android.gms.appstate;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class AppStateBuffer extends DataBuffer {
    public AppStateBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public AppState get(int i) {
        return new b(this.zU, i);
    }
}