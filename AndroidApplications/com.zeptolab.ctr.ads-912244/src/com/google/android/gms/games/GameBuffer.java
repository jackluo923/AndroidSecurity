package com.google.android.gms.games;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class GameBuffer extends DataBuffer {
    public GameBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public Game get(int i) {
        return new b(this.zU, i);
    }
}