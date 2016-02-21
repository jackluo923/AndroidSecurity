package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class LeaderboardBuffer extends d {
    public LeaderboardBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    protected /* synthetic */ Object c(int i, int i2) {
        return getEntry(i, i2);
    }

    protected Leaderboard getEntry(int i, int i2) {
        return new b(this.zU, i, i2);
    }

    protected String getPrimaryDataMarkerColumn() {
        return "external_leaderboard_id";
    }
}