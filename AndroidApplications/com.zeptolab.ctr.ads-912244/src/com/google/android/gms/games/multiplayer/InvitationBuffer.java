package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class InvitationBuffer extends d {
    public InvitationBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    protected /* synthetic */ Object c(int i, int i2) {
        return getEntry(i, i2);
    }

    protected Invitation getEntry(int i, int i2) {
        return new b(this.zU, i, i2);
    }

    protected String getPrimaryDataMarkerColumn() {
        return "external_invitation_id";
    }
}