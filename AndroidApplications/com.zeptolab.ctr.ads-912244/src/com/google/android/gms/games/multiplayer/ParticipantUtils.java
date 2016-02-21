package com.google.android.gms.games.multiplayer;

import com.google.android.gms.games.Player;
import com.google.android.gms.internal.er;
import java.util.ArrayList;

public final class ParticipantUtils {
    private ParticipantUtils() {
    }

    public static boolean aE(Object obj) {
        er.b(obj, (Object)"Participant ID must not be null");
        return obj.startsWith("p_");
    }

    public static String getParticipantId(ArrayList arrayList, String str) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Participant participant = (Participant) arrayList.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(str)) {
                return participant.getParticipantId();
            }
            i++;
        }
        return null;
    }
}