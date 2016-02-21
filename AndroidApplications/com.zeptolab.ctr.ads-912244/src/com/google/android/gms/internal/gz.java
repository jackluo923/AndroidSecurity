package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;

public final class gz implements SafeParcelable, GameRequest {
    public static final ha CREATOR;
    private final ArrayList IG;
    private final int wj;

    static {
        CREATOR = new ha();
    }

    gz(int i, ArrayList arrayList) {
        this.wj = i;
        this.IG = arrayList;
        fR();
    }

    private void fR() {
        ed.v(!this.IG.isEmpty());
        GameRequest gameRequest = (GameRequest) this.IG.get(0);
        int size = this.IG.size();
        int i = 1;
        while (i < size) {
            GameRequest gameRequest2 = (GameRequest) this.IG.get(i);
            ed.a(gameRequest.getType() == gameRequest2.getType(), "All the requests must be of the same type");
            ed.a(gameRequest.getSender().equals(gameRequest2.getSender()), "All the requests must be from the same sender");
            i++;
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(gz gzVar) {
        if (!(gzVar instanceof gz)) {
            return false;
        }
        if (this == gzVar) {
            return true;
        }
        gzVar = gzVar;
        if (gzVar.IG.size() != this.IG.size()) {
            return false;
        }
        int size = this.IG.size();
        int i = 0;
        while (i < size) {
            if (!((GameRequest) this.IG.get(i)).equals((GameRequest) gzVar.IG.get(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    public ArrayList fT() {
        return new ArrayList(this.IG);
    }

    public ArrayList fU() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public GameRequest freeze() {
        return this;
    }

    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public byte[] getData() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public long getExpirationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Player getRecipient() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getRecipientStatus() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getRecipientStatus(String str) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public String getRequestId() {
        return ((GameRequestEntity) this.IG.get(0)).getRequestId();
    }

    public Player getSender() {
        return ((GameRequestEntity) this.IG.get(0)).getSender();
    }

    public int getType() {
        return ((GameRequestEntity) this.IG.get(0)).getType();
    }

    public int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(this.IG.toArray());
    }

    public boolean isConsumed() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public boolean isDataValid() {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ha.a(this, parcel, i);
    }
}