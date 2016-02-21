package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.fy;

public final class PlayerEntity extends fy implements Player {
    public static final Creator CREATOR;
    private final String FE;
    private final Uri FJ;
    private final Uri FK;
    private final String FU;
    private final String FV;
    private final String Gh;
    private final long Gi;
    private final int Gj;
    private final long Gk;
    private final int wj;

    static final class a extends c {
        a() {
        }

        public PlayerEntity ak(Parcel parcel) {
            if (PlayerEntity.c(PlayerEntity.dY()) || PlayerEntity.ae(PlayerEntity.class.getCanonicalName())) {
                return super.ak(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            return new PlayerEntity(4, readString, readString2, readString3 == null ? null : Uri.parse(readString3), readString4 == null ? null : Uri.parse(readString4), parcel.readLong(), -1, -1, null, null);
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return ak(parcel);
        }
    }

    static {
        CREATOR = new a();
    }

    PlayerEntity(int i, String str, String str2, Uri uri, Uri uri2, long j, int i2, long j2, String str3, String str4) {
        this.wj = i;
        this.Gh = str;
        this.FE = str2;
        this.FJ = uri;
        this.FU = str3;
        this.FK = uri2;
        this.FV = str4;
        this.Gi = j;
        this.Gj = i2;
        this.Gk = j2;
    }

    public PlayerEntity(Player player) {
        this.wj = 4;
        this.Gh = player.getPlayerId();
        this.FE = player.getDisplayName();
        this.FJ = player.getIconImageUri();
        this.FU = player.getIconImageUrl();
        this.FK = player.getHiResImageUri();
        this.FV = player.getHiResImageUrl();
        this.Gi = player.getRetrievedTimestamp();
        this.Gj = player.fl();
        this.Gk = player.getLastPlayedWithTimestamp();
        ed.d(this.Gh);
        ed.d(this.FE);
        ed.v(this.Gi > 0);
    }

    static int a(Player player) {
        return ep.hashCode(new Object[]{player.getPlayerId(), player.getDisplayName(), player.getIconImageUri(), player.getHiResImageUri(), Long.valueOf(player.getRetrievedTimestamp())});
    }

    static boolean a(Player player, Player player2) {
        if (!(player2 instanceof Player)) {
            return false;
        }
        if (player == player2) {
            return true;
        }
        player2 = player2;
        return ep.equal(player2.getPlayerId(), player.getPlayerId()) && ep.equal(player2.getDisplayName(), player.getDisplayName()) && ep.equal(player2.getIconImageUri(), player.getIconImageUri()) && ep.equal(player2.getHiResImageUri(), player.getHiResImageUri()) && ep.equal(Long.valueOf(player2.getRetrievedTimestamp()), Long.valueOf(player.getRetrievedTimestamp()));
    }

    static String b(Player player) {
        return ep.e(player).a("PlayerId", player.getPlayerId()).a("DisplayName", player.getDisplayName()).a("IconImageUri", player.getIconImageUri()).a("IconImageUrl", player.getIconImageUrl()).a("HiResImageUri", player.getHiResImageUri()).a("HiResImageUrl", player.getHiResImageUrl()).a("RetrievedTimestamp", Long.valueOf(player.getRetrievedTimestamp())).toString();
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public int fl() {
        return this.Gj;
    }

    public Player freeze() {
        return this;
    }

    public String getDisplayName() {
        return this.FE;
    }

    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FE, charArrayBuffer);
    }

    public Uri getHiResImageUri() {
        return this.FK;
    }

    public String getHiResImageUrl() {
        return this.FV;
    }

    public Uri getIconImageUri() {
        return this.FJ;
    }

    public String getIconImageUrl() {
        return this.FU;
    }

    public long getLastPlayedWithTimestamp() {
        return this.Gk;
    }

    public String getPlayerId() {
        return this.Gh;
    }

    public long getRetrievedTimestamp() {
        return this.Gi;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public boolean hasHiResImage() {
        return getHiResImageUri() != null;
    }

    public boolean hasIconImage() {
        return getIconImageUri() != null;
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
        String str = null;
        if (dZ()) {
            parcel.writeString(this.Gh);
            parcel.writeString(this.FE);
            parcel.writeString(this.FJ == null ? null : this.FJ.toString());
            if (this.FK != null) {
                str = this.FK.toString();
            }
            parcel.writeString(str);
            parcel.writeLong(this.Gi);
        } else {
            c.a(this, parcel, i);
        }
    }
}