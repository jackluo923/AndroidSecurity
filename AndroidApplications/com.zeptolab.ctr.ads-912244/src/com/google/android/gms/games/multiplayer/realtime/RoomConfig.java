package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.internal.er;
import java.util.ArrayList;
import java.util.Arrays;

public final class RoomConfig {
    private final String GP;
    private final RoomUpdateListener JK;
    private final RoomStatusUpdateListener JL;
    private final RealTimeMessageReceivedListener JM;
    private final String[] JN;
    private final Bundle JO;
    private final boolean JP;
    private final int Jv;

    public static final class Builder {
        final RoomUpdateListener JK;
        RoomStatusUpdateListener JL;
        RealTimeMessageReceivedListener JM;
        Bundle JO;
        boolean JP;
        String JQ;
        ArrayList JR;
        int Jv;

        private Builder(Object obj) {
            this.JQ = null;
            this.Jv = -1;
            this.JR = new ArrayList();
            this.JP = false;
            this.JK = (RoomUpdateListener) er.b(obj, (Object)"Must provide a RoomUpdateListener");
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder addPlayersToInvite(ArrayList arrayList) {
            er.f(arrayList);
            this.JR.addAll(arrayList);
            return this;
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder addPlayersToInvite(String... strArr) {
            er.f(strArr);
            this.JR.addAll(Arrays.asList(strArr));
            return this;
        }

        public RoomConfig build() {
            return new RoomConfig(null);
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder setAutoMatchCriteria(Bundle bundle) {
            this.JO = bundle;
            return this;
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder setInvitationIdToAccept(String str) {
            er.f(str);
            this.JQ = str;
            return this;
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder setMessageReceivedListener(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.JM = realTimeMessageReceivedListener;
            return this;
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder setRoomStatusUpdateListener(RoomStatusUpdateListener roomStatusUpdateListener) {
            this.JL = roomStatusUpdateListener;
            return this;
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder setSocketCommunicationEnabled(boolean z) {
            this.JP = z;
            return this;
        }

        public com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder setVariant(int i) {
            boolean z;
            z = i == -1 || i > 0;
            er.b(z, (Object)"Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
            this.Jv = i;
            return this;
        }
    }

    private RoomConfig(Builder builder) {
        this.JK = builder.JK;
        this.JL = builder.JL;
        this.JM = builder.JM;
        this.GP = builder.JQ;
        this.Jv = builder.Jv;
        this.JO = builder.JO;
        this.JP = builder.JP;
        this.JN = (String[]) builder.JR.toArray(new String[builder.JR.size()]);
        if (this.JM == null) {
            er.a(this.JP, "Must either enable sockets OR specify a message listener");
        }
    }

    public static Builder builder(RoomUpdateListener roomUpdateListener) {
        return new Builder(null);
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

    public String getInvitationId() {
        return this.GP;
    }

    public String[] getInvitedPlayerIds() {
        return this.JN;
    }

    public RealTimeMessageReceivedListener getMessageReceivedListener() {
        return this.JM;
    }

    public RoomStatusUpdateListener getRoomStatusUpdateListener() {
        return this.JL;
    }

    public RoomUpdateListener getRoomUpdateListener() {
        return this.JK;
    }

    public int getVariant() {
        return this.Jv;
    }

    public boolean isSocketEnabled() {
        return this.JP;
    }
}