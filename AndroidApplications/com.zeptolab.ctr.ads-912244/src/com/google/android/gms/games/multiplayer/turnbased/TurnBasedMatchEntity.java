package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fm;
import java.util.ArrayList;

public final class TurnBasedMatchEntity implements SafeParcelable, TurnBasedMatch {
    public static final TurnBasedMatchEntityCreator CREATOR;
    private final String FH;
    private final String GV;
    private final Bundle JO;
    private final String JS;
    private final GameEntity Jq;
    private final long Jr;
    private final ArrayList Ju;
    private final int Jv;
    private final String Ka;
    private final long Kb;
    private final String Kc;
    private final int Kd;
    private final int Ke;
    private final byte[] Kf;
    private final String Kg;
    private final byte[] Kh;
    private final int Ki;
    private final int Kj;
    private final boolean Kk;
    private final String Kl;
    private final int wj;

    static {
        CREATOR = new TurnBasedMatchEntityCreator();
    }

    TurnBasedMatchEntity(int i, GameEntity gameEntity, String str, String str2, long j, String str3, long j2, String str4, int i2, int i3, int i4, byte[] bArr, ArrayList arrayList, String str5, byte[] bArr2, int i5, Bundle bundle, int i6, boolean z, String str6, String str7) {
        this.wj = i;
        this.Jq = gameEntity;
        this.GV = str;
        this.JS = str2;
        this.Jr = j;
        this.Ka = str3;
        this.Kb = j2;
        this.Kc = str4;
        this.Kd = i2;
        this.Kj = i6;
        this.Jv = i3;
        this.Ke = i4;
        this.Kf = bArr;
        this.Ju = arrayList;
        this.Kg = str5;
        this.Kh = bArr2;
        this.Ki = i5;
        this.JO = bundle;
        this.Kk = z;
        this.FH = str6;
        this.Kl = str7;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnBasedMatch) {
        this.wj = 2;
        this.Jq = new GameEntity(turnBasedMatch.getGame());
        this.GV = turnBasedMatch.getMatchId();
        this.JS = turnBasedMatch.getCreatorId();
        this.Jr = turnBasedMatch.getCreationTimestamp();
        this.Ka = turnBasedMatch.getLastUpdaterId();
        this.Kb = turnBasedMatch.getLastUpdatedTimestamp();
        this.Kc = turnBasedMatch.getPendingParticipantId();
        this.Kd = turnBasedMatch.getStatus();
        this.Kj = turnBasedMatch.getTurnStatus();
        this.Jv = turnBasedMatch.getVariant();
        this.Ke = turnBasedMatch.getVersion();
        this.Kg = turnBasedMatch.getRematchId();
        this.Ki = turnBasedMatch.getMatchNumber();
        this.JO = turnBasedMatch.getAutoMatchCriteria();
        this.Kk = turnBasedMatch.isLocallyModified();
        this.FH = turnBasedMatch.getDescription();
        this.Kl = turnBasedMatch.getDescriptionParticipantId();
        Object data = turnBasedMatch.getData();
        if (data == null) {
            this.Kf = null;
        } else {
            this.Kf = new byte[data.length];
            System.arraycopy(data, 0, this.Kf, 0, data.length);
        }
        data = turnBasedMatch.getPreviousMatchData();
        if (data == null) {
            this.Kh = null;
        } else {
            this.Kh = new byte[data.length];
            System.arraycopy(data, 0, this.Kh, 0, data.length);
        }
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        this.Ju = new ArrayList(size);
        int i = 0;
        while (i < size) {
            this.Ju.add((ParticipantEntity) ((Participant) participants.get(i)).freeze());
            i++;
        }
    }

    static int a(TurnBasedMatch turnBasedMatch) {
        return ep.hashCode(new Object[]{turnBasedMatch.getGame(), turnBasedMatch.getMatchId(), turnBasedMatch.getCreatorId(), Long.valueOf(turnBasedMatch.getCreationTimestamp()), turnBasedMatch.getLastUpdaterId(), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp()), turnBasedMatch.getPendingParticipantId(), Integer.valueOf(turnBasedMatch.getStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus()), turnBasedMatch.getDescription(), Integer.valueOf(turnBasedMatch.getVariant()), Integer.valueOf(turnBasedMatch.getVersion()), turnBasedMatch.getParticipants(), turnBasedMatch.getRematchId(), Integer.valueOf(turnBasedMatch.getMatchNumber()), turnBasedMatch.getAutoMatchCriteria(), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots()), Boolean.valueOf(turnBasedMatch.isLocallyModified())});
    }

    static int a(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        int i = 0;
        while (i < size) {
            Participant participant = (Participant) participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
            i++;
        }
        throw new IllegalStateException("Participant " + str + " is not in match " + turnBasedMatch.getMatchId());
    }

    static boolean a(TurnBasedMatch turnBasedMatch, TurnBasedMatch turnBasedMatch2) {
        if (!(turnBasedMatch2 instanceof TurnBasedMatch)) {
            return false;
        }
        if (turnBasedMatch == turnBasedMatch2) {
            return true;
        }
        turnBasedMatch2 = turnBasedMatch2;
        return ep.equal(turnBasedMatch2.getGame(), turnBasedMatch.getGame()) && ep.equal(turnBasedMatch2.getMatchId(), turnBasedMatch.getMatchId()) && ep.equal(turnBasedMatch2.getCreatorId(), turnBasedMatch.getCreatorId()) && ep.equal(Long.valueOf(turnBasedMatch2.getCreationTimestamp()), Long.valueOf(turnBasedMatch.getCreationTimestamp())) && ep.equal(turnBasedMatch2.getLastUpdaterId(), turnBasedMatch.getLastUpdaterId()) && ep.equal(Long.valueOf(turnBasedMatch2.getLastUpdatedTimestamp()), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())) && ep.equal(turnBasedMatch2.getPendingParticipantId(), turnBasedMatch.getPendingParticipantId()) && ep.equal(Integer.valueOf(turnBasedMatch2.getStatus()), Integer.valueOf(turnBasedMatch.getStatus())) && ep.equal(Integer.valueOf(turnBasedMatch2.getTurnStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus())) && ep.equal(turnBasedMatch2.getDescription(), turnBasedMatch.getDescription()) && ep.equal(Integer.valueOf(turnBasedMatch2.getVariant()), Integer.valueOf(turnBasedMatch.getVariant())) && ep.equal(Integer.valueOf(turnBasedMatch2.getVersion()), Integer.valueOf(turnBasedMatch.getVersion())) && ep.equal(turnBasedMatch2.getParticipants(), turnBasedMatch.getParticipants()) && ep.equal(turnBasedMatch2.getRematchId(), turnBasedMatch.getRematchId()) && ep.equal(Integer.valueOf(turnBasedMatch2.getMatchNumber()), Integer.valueOf(turnBasedMatch.getMatchNumber())) && ep.equal(turnBasedMatch2.getAutoMatchCriteria(), turnBasedMatch.getAutoMatchCriteria()) && ep.equal(Integer.valueOf(turnBasedMatch2.getAvailableAutoMatchSlots()), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())) && ep.equal(Boolean.valueOf(turnBasedMatch2.isLocallyModified()), Boolean.valueOf(turnBasedMatch.isLocallyModified()));
    }

    static String b(TurnBasedMatch turnBasedMatch) {
        return ep.e(turnBasedMatch).a("Game", turnBasedMatch.getGame()).a("MatchId", turnBasedMatch.getMatchId()).a("CreatorId", turnBasedMatch.getCreatorId()).a("CreationTimestamp", Long.valueOf(turnBasedMatch.getCreationTimestamp())).a("LastUpdaterId", turnBasedMatch.getLastUpdaterId()).a("LastUpdatedTimestamp", Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())).a("PendingParticipantId", turnBasedMatch.getPendingParticipantId()).a("MatchStatus", Integer.valueOf(turnBasedMatch.getStatus())).a("TurnStatus", Integer.valueOf(turnBasedMatch.getTurnStatus())).a("Description", turnBasedMatch.getDescription()).a("Variant", Integer.valueOf(turnBasedMatch.getVariant())).a("Data", turnBasedMatch.getData()).a("Version", Integer.valueOf(turnBasedMatch.getVersion())).a("Participants", turnBasedMatch.getParticipants()).a("RematchId", turnBasedMatch.getRematchId()).a("PreviousData", turnBasedMatch.getPreviousMatchData()).a("MatchNumber", Integer.valueOf(turnBasedMatch.getMatchNumber())).a("AutoMatchCriteria", turnBasedMatch.getAutoMatchCriteria()).a("AvailableAutoMatchSlots", Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())).a("LocallyModified", Boolean.valueOf(turnBasedMatch.isLocallyModified())).a("DescriptionParticipantId", turnBasedMatch.getDescriptionParticipantId()).toString();
    }

    static String b(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        int i = 0;
        while (i < size) {
            Participant participant = (Participant) participants.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(str)) {
                return participant.getParticipantId();
            }
            i++;
        }
        return null;
    }

    static Participant c(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        int i = 0;
        while (i < size) {
            Participant participant = (Participant) participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
            i++;
        }
        throw new IllegalStateException("Participant " + str + " is not in match " + turnBasedMatch.getMatchId());
    }

    static ArrayList c(TurnBasedMatch turnBasedMatch) {
        ArrayList participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 0;
        while (i < size) {
            arrayList.add(((Participant) participants.get(i)).getParticipantId());
            i++;
        }
        return arrayList;
    }

    public boolean canRematch() {
        return this.Kd == 2 && this.Kg == null;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public TurnBasedMatch freeze() {
        return this;
    }

    public Bundle getAutoMatchCriteria() {
        return this.JO;
    }

    public int getAvailableAutoMatchSlots() {
        return this.JO == null ? 0 : this.JO.getInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS);
    }

    public long getCreationTimestamp() {
        return this.Jr;
    }

    public String getCreatorId() {
        return this.JS;
    }

    public byte[] getData() {
        return this.Kf;
    }

    public String getDescription() {
        return this.FH;
    }

    public void getDescription(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FH, charArrayBuffer);
    }

    public Participant getDescriptionParticipant() {
        return getParticipant(getDescriptionParticipantId());
    }

    public String getDescriptionParticipantId() {
        return this.Kl;
    }

    public Game getGame() {
        return this.Jq;
    }

    public long getLastUpdatedTimestamp() {
        return this.Kb;
    }

    public String getLastUpdaterId() {
        return this.Ka;
    }

    public String getMatchId() {
        return this.GV;
    }

    public int getMatchNumber() {
        return this.Ki;
    }

    public Participant getParticipant(String str) {
        return c(this, str);
    }

    public String getParticipantId(String str) {
        return b(this, str);
    }

    public ArrayList getParticipantIds() {
        return c(this);
    }

    public int getParticipantStatus(String str) {
        return a(this, str);
    }

    public ArrayList getParticipants() {
        return new ArrayList(this.Ju);
    }

    public String getPendingParticipantId() {
        return this.Kc;
    }

    public byte[] getPreviousMatchData() {
        return this.Kh;
    }

    public String getRematchId() {
        return this.Kg;
    }

    public int getStatus() {
        return this.Kd;
    }

    public int getTurnStatus() {
        return this.Kj;
    }

    public int getVariant() {
        return this.Jv;
    }

    public int getVersion() {
        return this.Ke;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return a(this);
    }

    public boolean isDataValid() {
        return true;
    }

    public boolean isLocallyModified() {
        return this.Kk;
    }

    public String toString() {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i) {
        TurnBasedMatchEntityCreator.a(this, parcel, i);
    }
}