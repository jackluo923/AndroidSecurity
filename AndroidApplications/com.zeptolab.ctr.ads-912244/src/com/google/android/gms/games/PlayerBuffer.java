package com.google.android.gms.games;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class PlayerBuffer extends DataBuffer {
    public PlayerBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public Player get(int i) {
        return new d(this.zU, i);
    }
}