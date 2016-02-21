package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.fy;

public final class ParticipantEntity extends fy implements Participant {
    public static final Creator CREATOR;
    private final String FE;
    private final Uri FJ;
    private final Uri FK;
    private final String FU;
    private final String FV;
    private final String GZ;
    private final boolean JA;
    private final PlayerEntity JB;
    private final int JC;
    private final ParticipantResult JD;
    private final int Jy;
    private final String Jz;
    private final int wj;

    static final class a extends c {
        a() {
        }

        public ParticipantEntity ao(Parcel parcel) {
            boolean z = 1;
            if (ParticipantEntity.c(ParticipantEntity.dY()) || ParticipantEntity.ae(ParticipantEntity.class.getCanonicalName())) {
                return super.ao(parcel);
            }
            Uri parse;
            Uri parse2;
            boolean z2;
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            parse = readString3 == null ? null : Uri.parse(readString3);
            String readString4 = parcel.readString();
            parse2 = readString4 == null ? null : Uri.parse(readString4);
            int readInt = parcel.readInt();
            String readString5 = parcel.readString();
            z2 = parcel.readInt() > 0;
            if (parcel.readInt() <= 0) {
                z = false;
            }
            return new ParticipantEntity(3, readString, readString2, parse, parse2, readInt, readString5, z2, i != 0 ? (PlayerEntity) PlayerEntity.CREATOR.createFromParcel(parcel) : null, 7, null, null, null);
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return ao(parcel);
        }
    }

    static {
        CREATOR = new a();
    }

    ParticipantEntity(int i, String str, String str2, Uri uri, Uri uri2, int i2, String str3, boolean z, PlayerEntity playerEntity, int i3, ParticipantResult participantResult, String str4, String str5) {
        this.wj = i;
        this.GZ = str;
        this.FE = str2;
        this.FJ = uri;
        this.FK = uri2;
        this.Jy = i2;
        this.Jz = str3;
        this.JA = z;
        this.JB = playerEntity;
        this.JC = i3;
        this.JD = participantResult;
        this.FU = str4;
        this.FV = str5;
    }

    public ParticipantEntity(Participant participant) {
        this.wj = 3;
        this.GZ = participant.getParticipantId();
        this.FE = participant.getDisplayName();
        this.FJ = participant.getIconImageUri();
        this.FK = participant.getHiResImageUri();
        this.Jy = participant.getStatus();
        this.Jz = participant.ge();
        this.JA = participant.isConnectedToRoom();
        Player player = participant.getPlayer();
        this.JB = player == null ? null : new PlayerEntity(player);
        this.JC = participant.getCapabilities();
        this.JD = participant.getResult();
        this.FU = participant.getIconImageUrl();
        this.FV = participant.getHiResImageUrl();
    }

    static int a(Participant participant) {
        return ep.hashCode(new Object[]{participant.getPlayer(), Integer.valueOf(participant.getStatus()), participant.ge(), Boolean.valueOf(participant.isConnectedToRoom()), participant.getDisplayName(), participant.getIconImageUri(), participant.getHiResImageUri(), Integer.valueOf(participant.getCapabilities()), participant.getResult()});
    }

    static boolean a(Participant participant, Participant participant2) {
        if (!(participant2 instanceof Participant)) {
            return false;
        }
        if (participant == participant2) {
            return true;
        }
        participant2 = participant2;
        return ep.equal(participant2.getPlayer(), participant.getPlayer()) && ep.equal(Integer.valueOf(participant2.getStatus()), Integer.valueOf(participant.getStatus())) && ep.equal(participant2.ge(), participant.ge()) && ep.equal(Boolean.valueOf(participant2.isConnectedToRoom()), Boolean.valueOf(participant.isConnectedToRoom())) && ep.equal(participant2.getDisplayName(), participant.getDisplayName()) && ep.equal(participant2.getIconImageUri(), participant.getIconImageUri()) && ep.equal(participant2.getHiResImageUri(), participant.getHiResImageUri()) && ep.equal(Integer.valueOf(participant2.getCapabilities()), Integer.valueOf(participant.getCapabilities())) && ep.equal(participant2.getResult(), participant.getResult());
    }

    static String b(Participant participant) {
        return ep.e(participant).a("Player", participant.getPlayer()).a("Status", Integer.valueOf(participant.getStatus())).a("ClientAddress", participant.ge()).a("ConnectedToRoom", Boolean.valueOf(participant.isConnectedToRoom())).a("DisplayName", participant.getDisplayName()).a("IconImage", participant.getIconImageUri()).a("IconImageUrl", participant.getIconImageUrl()).a("HiResImage", participant.getHiResImageUri()).a("HiResImageUrl", participant.getHiResImageUrl()).a("Capabilities", Integer.valueOf(participant.getCapabilities())).a("Result", participant.getResult()).toString();
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public Participant freeze() {
        return this;
    }

    public String ge() {
        return this.Jz;
    }

    public int getCapabilities() {
        return this.JC;
    }

    public String getDisplayName() {
        return this.JB == null ? this.FE : this.JB.getDisplayName();
    }

    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.JB == null) {
            fm.b(this.FE, charArrayBuffer);
        } else {
            this.JB.getDisplayName(charArrayBuffer);
        }
    }

    public Uri getHiResImageUri() {
        return this.JB == null ? this.FK : this.JB.getHiResImageUri();
    }

    public String getHiResImageUrl() {
        return this.JB == null ? this.FV : this.JB.getHiResImageUrl();
    }

    public Uri getIconImageUri() {
        return this.JB == null ? this.FJ : this.JB.getIconImageUri();
    }

    public String getIconImageUrl() {
        return this.JB == null ? this.FU : this.JB.getIconImageUrl();
    }

    public String getParticipantId() {
        return this.GZ;
    }

    public Player getPlayer() {
        return this.JB;
    }

    public ParticipantResult getResult() {
        return this.JD;
    }

    public int getStatus() {
        return this.Jy;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return a(this);
    }

    public boolean isConnectedToRoom() {
        return this.JA;
    }

    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i) {
        String str = null;
        int i2 = 0;
        if (dZ()) {
            parcel.writeString(this.GZ);
            parcel.writeString(this.FE);
            parcel.writeString(this.FJ == null ? null : this.FJ.toString());
            if (this.FK != null) {
                str = this.FK.toString();
            }
            parcel.writeString(str);
            parcel.writeInt(this.Jy);
            parcel.writeString(this.Jz);
            parcel.writeInt(this.JA ? 1 : 0);
            if (this.JB != null) {
                i2 = 1;
            }
            parcel.writeInt(i2);
            if (this.JB != null) {
                this.JB.writeToParcel(parcel, i);
            }
        } else {
            c.a(this, parcel, i);
        }
    }
}