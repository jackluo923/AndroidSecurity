package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class TurnBasedMatchBuffer extends d {
    public TurnBasedMatchBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    protected /* synthetic */ Object c(int i, int i2) {
        return getEntry(i, i2);
    }

    protected TurnBasedMatch getEntry(int i, int i2) {
        return new a(this.zU, i, i2);
    }

    protected String getPrimaryDataMarkerColumn() {
        return "external_match_id";
    }
}