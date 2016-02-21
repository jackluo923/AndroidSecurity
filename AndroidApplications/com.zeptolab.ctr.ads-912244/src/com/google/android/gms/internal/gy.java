package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;

public final class gy implements SafeParcelable, Invitation {
    public static final gx CREATOR;
    private final ArrayList IF;
    private final int wj;

    static {
        CREATOR = new gx();
    }

    gy(int i, ArrayList arrayList) {
        this.wj = i;
        this.IF = arrayList;
        fR();
    }

    private void fR() {
        ed.v(!this.IF.isEmpty());
        Invitation invitation = (Invitation) this.IF.get(0);
        int size = this.IF.size();
        int i = 1;
        while (i < size) {
            ed.a(invitation.getInviter().equals(((Invitation) this.IF.get(i)).getInviter()), "All the invitations must be from the same inviter");
            i++;
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(gy gyVar) {
        if (!(gyVar instanceof gy)) {
            return false;
        }
        if (this == gyVar) {
            return true;
        }
        gyVar = gyVar;
        if (gyVar.IF.size() != this.IF.size()) {
            return false;
        }
        int size = this.IF.size();
        int i = 0;
        while (i < size) {
            if (!((Invitation) this.IF.get(i)).equals((Invitation) gyVar.IF.get(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    public ArrayList fS() {
        return new ArrayList(this.IF);
    }

    public Invitation freeze() {
        return this;
    }

    public int getAvailableAutoMatchSlots() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public String getInvitationId() {
        return ((InvitationEntity) this.IF.get(0)).getInvitationId();
    }

    public int getInvitationType() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Participant getInviter() {
        return ((InvitationEntity) this.IF.get(0)).getInviter();
    }

    public ArrayList getParticipants() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVariant() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(this.IF.toArray());
    }

    public boolean isDataValid() {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i) {
        gx.a(this, parcel, i);
    }
}