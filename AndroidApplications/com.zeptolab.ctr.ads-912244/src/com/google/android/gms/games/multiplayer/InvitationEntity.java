package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.fy;
import java.util.ArrayList;

public final class InvitationEntity extends fy implements Invitation {
    public static final Creator CREATOR;
    private final String GP;
    private final GameEntity Jq;
    private final long Jr;
    private final int Js;
    private final ParticipantEntity Jt;
    private final ArrayList Ju;
    private final int Jv;
    private final int Jw;
    private final int wj;

    static final class a extends a {
        a() {
        }

        public InvitationEntity an(Parcel parcel) {
            if (InvitationEntity.c(InvitationEntity.dY()) || InvitationEntity.ae(InvitationEntity.class.getCanonicalName())) {
                return super.an(parcel);
            }
            GameEntity gameEntity = (GameEntity) GameEntity.CREATOR.createFromParcel(parcel);
            String readString = parcel.readString();
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            ParticipantEntity participantEntity = (ParticipantEntity) ParticipantEntity.CREATOR.createFromParcel(parcel);
            int readInt2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt2);
            int i = 0;
            while (i < readInt2) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
                i++;
            }
            return new InvitationEntity(2, gameEntity, readString, readLong, readInt, participantEntity, arrayList, -1, 0);
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return an(parcel);
        }
    }

    static {
        CREATOR = new a();
    }

    InvitationEntity(int i, GameEntity gameEntity, String str, long j, int i2, ParticipantEntity participantEntity, ArrayList arrayList, int i3, int i4) {
        this.wj = i;
        this.Jq = gameEntity;
        this.GP = str;
        this.Jr = j;
        this.Js = i2;
        this.Jt = participantEntity;
        this.Ju = arrayList;
        this.Jv = i3;
        this.Jw = i4;
    }

    InvitationEntity(Invitation invitation) {
        this.wj = 2;
        this.Jq = new GameEntity(invitation.getGame());
        this.GP = invitation.getInvitationId();
        this.Jr = invitation.getCreationTimestamp();
        this.Js = invitation.getInvitationType();
        this.Jv = invitation.getVariant();
        this.Jw = invitation.getAvailableAutoMatchSlots();
        String participantId = invitation.getInviter().getParticipantId();
        Participant participant = null;
        ArrayList participants = invitation.getParticipants();
        int size = participants.size();
        this.Ju = new ArrayList(size);
        int i = 0;
        while (i < size) {
            Participant participant2 = (Participant) participants.get(i);
            if (participant2.getParticipantId().equals(participantId)) {
                participant = participant2;
            }
            this.Ju.add((ParticipantEntity) participant2.freeze());
            i++;
        }
        er.b(obj, (Object)"Must have a valid inviter!");
        this.Jt = (ParticipantEntity) obj.freeze();
    }

    static int a(Invitation invitation) {
        return ep.hashCode(new Object[]{invitation.getGame(), invitation.getInvitationId(), Long.valueOf(invitation.getCreationTimestamp()), Integer.valueOf(invitation.getInvitationType()), invitation.getInviter(), invitation.getParticipants(), Integer.valueOf(invitation.getVariant()), Integer.valueOf(invitation.getAvailableAutoMatchSlots())});
    }

    static boolean a(Invitation invitation, Invitation invitation2) {
        if (!(invitation2 instanceof Invitation)) {
            return false;
        }
        if (invitation == invitation2) {
            return true;
        }
        invitation2 = invitation2;
        return ep.equal(invitation2.getGame(), invitation.getGame()) && ep.equal(invitation2.getInvitationId(), invitation.getInvitationId()) && ep.equal(Long.valueOf(invitation2.getCreationTimestamp()), Long.valueOf(invitation.getCreationTimestamp())) && ep.equal(Integer.valueOf(invitation2.getInvitationType()), Integer.valueOf(invitation.getInvitationType())) && ep.equal(invitation2.getInviter(), invitation.getInviter()) && ep.equal(invitation2.getParticipants(), invitation.getParticipants()) && ep.equal(Integer.valueOf(invitation2.getVariant()), Integer.valueOf(invitation.getVariant())) && ep.equal(Integer.valueOf(invitation2.getAvailableAutoMatchSlots()), Integer.valueOf(invitation.getAvailableAutoMatchSlots()));
    }

    static String b(Invitation invitation) {
        return ep.e(invitation).a("Game", invitation.getGame()).a("InvitationId", invitation.getInvitationId()).a("CreationTimestamp", Long.valueOf(invitation.getCreationTimestamp())).a("InvitationType", Integer.valueOf(invitation.getInvitationType())).a("Inviter", invitation.getInviter()).a("Participants", invitation.getParticipants()).a("Variant", Integer.valueOf(invitation.getVariant())).a("AvailableAutoMatchSlots", Integer.valueOf(invitation.getAvailableAutoMatchSlots())).toString();
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public Invitation freeze() {
        return this;
    }

    public int getAvailableAutoMatchSlots() {
        return this.Jw;
    }

    public long getCreationTimestamp() {
        return this.Jr;
    }

    public Game getGame() {
        return this.Jq;
    }

    public String getInvitationId() {
        return this.GP;
    }

    public int getInvitationType() {
        return this.Js;
    }

    public Participant getInviter() {
        return this.Jt;
    }

    public ArrayList getParticipants() {
        return new ArrayList(this.Ju);
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
            this.Jq.writeToParcel(parcel, i);
            parcel.writeString(this.GP);
            parcel.writeLong(this.Jr);
            parcel.writeInt(this.Js);
            this.Jt.writeToParcel(parcel, i);
            int size = this.Ju.size();
            parcel.writeInt(size);
            int i2 = 0;
            while (i2 < size) {
                ((ParticipantEntity) this.Ju.get(i2)).writeToParcel(parcel, i);
                i2++;
            }
        } else {
            a.a(this, parcel, i);
        }
    }
}