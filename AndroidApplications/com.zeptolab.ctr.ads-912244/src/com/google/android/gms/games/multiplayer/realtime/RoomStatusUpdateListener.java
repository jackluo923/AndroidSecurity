package com.google.android.gms.games.multiplayer.realtime;

import java.util.List;

public interface RoomStatusUpdateListener {
    void onConnectedToRoom(Room room);

    void onDisconnectedFromRoom(Room room);

    void onP2PConnected(String str);

    void onP2PDisconnected(String str);

    void onPeerDeclined(Room room, List list);

    void onPeerInvitedToRoom(Room room, List list);

    void onPeerJoined(Room room, List list);

    void onPeerLeft(Room room, List list);

    void onPeersConnected(Room room, List list);

    void onPeersDisconnected(Room room, List list);

    void onRoomAutoMatching(Room room);

    void onRoomConnecting(Room room);
}