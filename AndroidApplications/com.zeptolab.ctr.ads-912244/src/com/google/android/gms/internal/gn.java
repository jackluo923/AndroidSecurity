package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import java.util.List;

public final class gn implements RealTimeMultiplayer {
    public void create(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        Games.c(googleApiClient).a(roomConfig);
    }

    public void declineInvitation(GoogleApiClient googleApiClient, String str) {
        Games.c(googleApiClient).m(str, 0);
    }

    public void dismissInvitation(GoogleApiClient googleApiClient, String str) {
        Games.c(googleApiClient).l(str, 0);
    }

    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2) {
        return Games.c(googleApiClient).b(i, i2, true);
    }

    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2, boolean z) {
        return Games.c(googleApiClient).b(i, i2, z);
    }

    public RealTimeSocket getSocketForParticipant(GoogleApiClient googleApiClient, String str, String str2) {
        return Games.c(googleApiClient).i(str, str2);
    }

    public Intent getWaitingRoomIntent(GoogleApiClient googleApiClient, Room room, int i) {
        return Games.c(googleApiClient).a(room, i);
    }

    public void join(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        Games.c(googleApiClient).b(roomConfig);
    }

    public void leave(GoogleApiClient googleApiClient, RoomUpdateListener roomUpdateListener, String str) {
        Games.c(googleApiClient).a(roomUpdateListener, str);
    }

    public int sendReliableMessage(GoogleApiClient googleApiClient, ReliableMessageSentCallback reliableMessageSentCallback, byte[] bArr, String str, String str2) {
        return Games.c(googleApiClient).a(reliableMessageSentCallback, bArr, str, str2);
    }

    public int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] bArr, String str, String str2) {
        return Games.c(googleApiClient).a(bArr, str, new String[]{str2});
    }

    public int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] bArr, String str, List list) {
        return Games.c(googleApiClient).a(bArr, str, (String[]) list.toArray(new String[list.size()]));
    }

    public int sendUnreliableMessageToOthers(GoogleApiClient googleApiClient, byte[] bArr, String str) {
        return Games.c(googleApiClient).d(bArr, str);
    }
}