package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.fy;
import java.util.ArrayList;

public final class RoomEntity extends fy implements Room {
    public static final Creator CREATOR;
    private final String FH;
    private final String GU;
    private final Bundle JO;
    private final String JS;
    private final int JT;
    private final int JU;
    private final long Jr;
    private final ArrayList Ju;
    private final int Jv;
    private final int wj;

    static final class a extends b {
        a() {
        }

        public RoomEntity aq(Parcel parcel) {
            if (RoomEntity.c(RoomEntity.dY()) || RoomEntity.ae(RoomEntity.class.getCanonicalName())) {
                return super.aq(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            String readString3 = parcel.readString();
            int readInt2 = parcel.readInt();
            Bundle readBundle = parcel.readBundle();
            int readInt3 = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt3);
            int i = 0;
            while (i < readInt3) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
                i++;
            }
            return new RoomEntity(2, readString, readString2, readLong, readInt, readString3, readInt2, readBundle, arrayList, -1);
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return aq(parcel);
        }
    }

    static {
        CREATOR = new a();
    }

    RoomEntity(int i, String str, String str2, long j, int i2, String str3, int i3, Bundle bundle, ArrayList arrayList, int i4) {
        this.wj = i;
        this.GU = str;
        this.JS = str2;
        this.Jr = j;
        this.JT = i2;
        this.FH = str3;
        this.Jv = i3;
        this.JO = bundle;
        this.Ju = arrayList;
        this.JU = i4;
    }

    public RoomEntity(Room room) {
        this.wj = 2;
        this.GU = room.getRoomId();
        this.JS = room.getCreatorId();
        this.Jr = room.getCreationTimestamp();
        this.JT = room.getStatus();
        this.FH = room.getDescription();
        this.Jv = room.getVariant();
        this.JO = room.getAutoMatchCriteria();
        ArrayList participants = room.getParticipants();
        int size = participants.size();
        this.Ju = new ArrayList(size);
        int i = 0;
        while (i < size) {
            this.Ju.add((ParticipantEntity) ((Participant) participants.get(i)).freeze());
            i++;
        }
        this.JU = room.getAutoMatchWaitEstimateSeconds();
    }

    static int a(Room room) {
        return ep.hashCode(new Object[]{room.getRoomId(), room.getCreatorId(), Long.valueOf(room.getCreationTimestamp()), Integer.valueOf(room.getStatus()), room.getDescription(), Integer.valueOf(room.getVariant()), room.getAutoMatchCriteria(), room.getParticipants(), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())});
    }

    static int a(Room room, String str) {
        ArrayList participants = room.getParticipants();
        int size = participants.size();
        int i = 0;
        while (i < size) {
            Participant participant = (Participant) participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
            i++;
        }
        throw new IllegalStateException("Participant " + str + " is not in room " + room.getRoomId());
    }

    static boolean a(Room room, Room room2) {
        if (!(room2 instanceof Room)) {
            return false;
        }
        if (room == room2) {
            return true;
        }
        room2 = room2;
        return ep.equal(room2.getRoomId(), room.getRoomId()) && ep.equal(room2.getCreatorId(), room.getCreatorId()) && ep.equal(Long.valueOf(room2.getCreationTimestamp()), Long.valueOf(room.getCreationTimestamp())) && ep.equal(Integer.valueOf(room2.getStatus()), Integer.valueOf(room.getStatus())) && ep.equal(room2.getDescription(), room.getDescription()) && ep.equal(Integer.valueOf(room2.getVariant()), Integer.valueOf(room.getVariant())) && ep.equal(room2.getAutoMatchCriteria(), room.getAutoMatchCriteria()) && ep.equal(room2.getParticipants(), room.getParticipants()) && ep.equal(Integer.valueOf(room2.getAutoMatchWaitEstimateSeconds()), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds()));
    }

    static String b(Room room) {
        return ep.e(room).a("RoomId", room.getRoomId()).a("CreatorId", room.getCreatorId()).a("CreationTimestamp", Long.valueOf(room.getCreationTimestamp())).a("RoomStatus", Integer.valueOf(room.getStatus())).a("Description", room.getDescription()).a("Variant", Integer.valueOf(room.getVariant())).a("AutoMatchCriteria", room.getAutoMatchCriteria()).a("Participants", room.getParticipants()).a("AutoMatchWaitEstimateSeconds", Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())).toString();
    }

    static String b(Room room, String str) {
        ArrayList participants = room.getParticipants();
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

    static Participant c(Room room, String str) {
        ArrayList participants = room.getParticipants();
        int size = participants.size();
        int i = 0;
        while (i < size) {
            Participant participant = (Participant) participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
            i++;
        }
        throw new IllegalStateException("Participant " + str + " is not in match " + room.getRoomId());
    }

    static ArrayList c(Room room) {
        ArrayList participants = room.getParticipants();
        int size = participants.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 0;
        while (i < size) {
            arrayList.add(((Participant) participants.get(i)).getParticipantId());
            i++;
        }
        return arrayList;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public Room freeze() {
        return this;
    }

    public Bundle getAutoMatchCriteria() {
        return this.JO;
    }

    public int getAutoMatchWaitEstimateSeconds() {
        return this.JU;
    }

    public long getCreationTimestamp() {
        return this.Jr;
    }

    public String getCreatorId() {
        return this.JS;
    }

    public String getDescription() {
        return this.FH;
    }

    public void getDescription(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FH, charArrayBuffer);
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

    public String getRoomId() {
        return this.GU;
    }

    public int getStatus() {
        return this.JT;
    }

    public int getVariant() {
        return this.Jv;
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

    public String toString() {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (dZ()) {
            parcel.writeString(this.GU);
            parcel.writeString(this.JS);
            parcel.writeLong(this.Jr);
            parcel.writeInt(this.JT);
            parcel.writeString(this.FH);
            parcel.writeInt(this.Jv);
            parcel.writeBundle(this.JO);
            int size = this.Ju.size();
            parcel.writeInt(size);
            int i2 = 0;
            while (i2 < size) {
                ((ParticipantEntity) this.Ju.get(i2)).writeToParcel(parcel, i);
                i2++;
            }
        } else {
            b.a(this, parcel, i);
        }
    }
}