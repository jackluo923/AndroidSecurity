package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataBuffer;

public final class ParticipantBuffer extends DataBuffer {
    public Participant get(int i) {
        return new d(this.zU, i);
    }
}