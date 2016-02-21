package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.internal.er;
import java.util.ArrayList;

public final class TurnBasedMatchConfig {
    private final String[] JN;
    private final Bundle JO;
    private final int JZ;
    private final int Jv;

    public static final class Builder {
        Bundle JO;
        ArrayList JR;
        int JZ;
        int Jv;

        private Builder() {
            this.Jv = -1;
            this.JR = new ArrayList();
            this.JO = null;
            this.JZ = 2;
        }

        public com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder addInvitedPlayer(String str) {
            er.f(str);
            this.JR.add(str);
            return this;
        }

        public com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder addInvitedPlayers(ArrayList arrayList) {
            er.f(arrayList);
            this.JR.addAll(arrayList);
            return this;
        }

        public TurnBasedMatchConfig build() {
            return new TurnBasedMatchConfig(null);
        }

        public com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder setAutoMatchCriteria(Bundle bundle) {
            this.JO = bundle;
            return this;
        }

        public com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder setMinPlayers(int i) {
            this.JZ = i;
            return this;
        }

        public com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder setVariant(int i) {
            boolean z;
            z = i == -1 || i > 0;
            er.b(z, (Object)"Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY");
            this.Jv = i;
            return this;
        }
    }

    private TurnBasedMatchConfig(Builder builder) {
        this.Jv = builder.Jv;
        this.JZ = builder.JZ;
        this.JO = builder.JO;
        this.JN = (String[]) builder.JR.toArray(new String[builder.JR.size()]);
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Bundle createAutoMatchCriteria(int i, int i2, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(Multiplayer.EXTRA_MIN_AUTOMATCH_PLAYERS, i);
        bundle.putInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS, i2);
        bundle.putLong(Multiplayer.EXTRA_EXCLUSIVE_BIT_MASK, j);
        return bundle;
    }

    public Bundle getAutoMatchCriteria() {
        return this.JO;
    }

    public String[] getInvitedPlayerIds() {
        return this.JN;
    }

    public int getMinPlayers() {
        return this.JZ;
    }

    public int getVariant() {
        return this.Jv;
    }
}