package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fm;
import com.google.android.gms.internal.fy;

public final class GameEntity extends fy implements Game {
    public static final Creator CREATOR;
    private final String FE;
    private final String FF;
    private final String FG;
    private final String FH;
    private final String FI;
    private final Uri FJ;
    private final Uri FK;
    private final Uri FL;
    private final boolean FM;
    private final boolean FN;
    private final String FO;
    private final int FP;
    private final int FQ;
    private final int FR;
    private final boolean FS;
    private final boolean FT;
    private final String FU;
    private final String FV;
    private final String FW;
    private final boolean FX;
    private final int wj;
    private final String wk;

    static final class a extends a {
        a() {
        }

        public GameEntity aj(Parcel parcel) {
            if (GameEntity.c(GameEntity.dY()) || GameEntity.ae(GameEntity.class.getCanonicalName())) {
                return super.aj(parcel);
            }
            Uri parse;
            Uri parse2;
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            parse = readString7 == null ? null : Uri.parse(readString7);
            readString7 = parcel.readString();
            parse2 = readString7 == null ? null : Uri.parse(readString7);
            readString7 = parcel.readString();
            return new GameEntity(2, readString, readString2, readString3, readString4, readString5, readString6, parse, parse2, readString7 == null ? null : Uri.parse(readString7), parcel.readInt() > 0, parcel.readInt() > 0, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false);
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return aj(parcel);
        }
    }

    static {
        CREATOR = new a();
    }

    GameEntity(int i, String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Uri uri2, Uri uri3, boolean z, boolean z2, String str7, int i2, int i3, int i4, boolean z3, boolean z4, String str8, String str9, String str10, boolean z5) {
        this.wj = i;
        this.wk = str;
        this.FE = str2;
        this.FF = str3;
        this.FG = str4;
        this.FH = str5;
        this.FI = str6;
        this.FJ = uri;
        this.FU = str8;
        this.FK = uri2;
        this.FV = str9;
        this.FL = uri3;
        this.FW = str10;
        this.FM = z;
        this.FN = z2;
        this.FO = str7;
        this.FP = i2;
        this.FQ = i3;
        this.FR = i4;
        this.FS = z3;
        this.FT = z4;
        this.FX = z5;
    }

    public GameEntity(Game game) {
        this.wj = 2;
        this.wk = game.getApplicationId();
        this.FF = game.getPrimaryCategory();
        this.FG = game.getSecondaryCategory();
        this.FH = game.getDescription();
        this.FI = game.getDeveloperName();
        this.FE = game.getDisplayName();
        this.FJ = game.getIconImageUri();
        this.FU = game.getIconImageUrl();
        this.FK = game.getHiResImageUri();
        this.FV = game.getHiResImageUrl();
        this.FL = game.getFeaturedImageUri();
        this.FW = game.getFeaturedImageUrl();
        this.FM = game.isPlayEnabledGame();
        this.FN = game.isInstanceInstalled();
        this.FO = game.getInstancePackageName();
        this.FP = game.getGameplayAclStatus();
        this.FQ = game.getAchievementTotalCount();
        this.FR = game.getLeaderboardCount();
        this.FS = game.isRealTimeMultiplayerEnabled();
        this.FT = game.isTurnBasedMultiplayerEnabled();
        this.FX = game.isMuted();
    }

    static int a(Game game) {
        return ep.hashCode(new Object[]{game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), Boolean.valueOf(game.isPlayEnabledGame()), Boolean.valueOf(game.isInstanceInstalled()), game.getInstancePackageName(), Integer.valueOf(game.getGameplayAclStatus()), Integer.valueOf(game.getAchievementTotalCount()), Integer.valueOf(game.getLeaderboardCount()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isMuted())});
    }

    static boolean a(Game game, Game game2) {
        if (!(game2 instanceof Game)) {
            return false;
        }
        if (game == game2) {
            return true;
        }
        game2 = game2;
        if (ep.equal(game2.getApplicationId(), game.getApplicationId()) && ep.equal(game2.getDisplayName(), game.getDisplayName()) && ep.equal(game2.getPrimaryCategory(), game.getPrimaryCategory()) && ep.equal(game2.getSecondaryCategory(), game.getSecondaryCategory()) && ep.equal(game2.getDescription(), game.getDescription()) && ep.equal(game2.getDeveloperName(), game.getDeveloperName()) && ep.equal(game2.getIconImageUri(), game.getIconImageUri()) && ep.equal(game2.getHiResImageUri(), game.getHiResImageUri()) && ep.equal(game2.getFeaturedImageUri(), game.getFeaturedImageUri()) && ep.equal(Boolean.valueOf(game2.isPlayEnabledGame()), Boolean.valueOf(game.isPlayEnabledGame())) && ep.equal(Boolean.valueOf(game2.isInstanceInstalled()), Boolean.valueOf(game.isInstanceInstalled())) && ep.equal(game2.getInstancePackageName(), game.getInstancePackageName()) && ep.equal(Integer.valueOf(game2.getGameplayAclStatus()), Integer.valueOf(game.getGameplayAclStatus())) && ep.equal(Integer.valueOf(game2.getAchievementTotalCount()), Integer.valueOf(game.getAchievementTotalCount())) && ep.equal(Integer.valueOf(game2.getLeaderboardCount()), Integer.valueOf(game.getLeaderboardCount())) && ep.equal(Boolean.valueOf(game2.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()))) {
            boolean z;
            Boolean valueOf = Boolean.valueOf(game2.isTurnBasedMultiplayerEnabled());
            z = game.isTurnBasedMultiplayerEnabled() && ep.equal(Boolean.valueOf(game2.isMuted()), Boolean.valueOf(game.isMuted()));
            if (ep.equal(valueOf, Boolean.valueOf(z))) {
                return true;
            }
        }
        return false;
    }

    static String b(Game game) {
        return ep.e(game).a("ApplicationId", game.getApplicationId()).a("DisplayName", game.getDisplayName()).a("PrimaryCategory", game.getPrimaryCategory()).a("SecondaryCategory", game.getSecondaryCategory()).a("Description", game.getDescription()).a("DeveloperName", game.getDeveloperName()).a("IconImageUri", game.getIconImageUri()).a("IconImageUrl", game.getIconImageUrl()).a("HiResImageUri", game.getHiResImageUri()).a("HiResImageUrl", game.getHiResImageUrl()).a("FeaturedImageUri", game.getFeaturedImageUri()).a("FeaturedImageUrl", game.getFeaturedImageUrl()).a("PlayEnabledGame", Boolean.valueOf(game.isPlayEnabledGame())).a("InstanceInstalled", Boolean.valueOf(game.isInstanceInstalled())).a("InstancePackageName", game.getInstancePackageName()).a("AchievementTotalCount", Integer.valueOf(game.getAchievementTotalCount())).a("LeaderboardCount", Integer.valueOf(game.getLeaderboardCount())).a("RealTimeMultiplayerEnabled", Boolean.valueOf(game.isRealTimeMultiplayerEnabled())).a("TurnBasedMultiplayerEnabled", Boolean.valueOf(game.isTurnBasedMultiplayerEnabled())).toString();
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public Game freeze() {
        return this;
    }

    public int getAchievementTotalCount() {
        return this.FQ;
    }

    public String getApplicationId() {
        return this.wk;
    }

    public String getDescription() {
        return this.FH;
    }

    public void getDescription(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FH, charArrayBuffer);
    }

    public String getDeveloperName() {
        return this.FI;
    }

    public void getDeveloperName(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FI, charArrayBuffer);
    }

    public String getDisplayName() {
        return this.FE;
    }

    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FE, charArrayBuffer);
    }

    public Uri getFeaturedImageUri() {
        return this.FL;
    }

    public String getFeaturedImageUrl() {
        return this.FW;
    }

    public int getGameplayAclStatus() {
        return this.FP;
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

    public String getInstancePackageName() {
        return this.FO;
    }

    public int getLeaderboardCount() {
        return this.FR;
    }

    public String getPrimaryCategory() {
        return this.FF;
    }

    public String getSecondaryCategory() {
        return this.FG;
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

    public boolean isInstanceInstalled() {
        return this.FN;
    }

    public boolean isMuted() {
        return this.FX;
    }

    public boolean isPlayEnabledGame() {
        return this.FM;
    }

    public boolean isRealTimeMultiplayerEnabled() {
        return this.FS;
    }

    public boolean isTurnBasedMultiplayerEnabled() {
        return this.FT;
    }

    public String toString() {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        String str = null;
        if (dZ()) {
            parcel.writeString(this.wk);
            parcel.writeString(this.FE);
            parcel.writeString(this.FF);
            parcel.writeString(this.FG);
            parcel.writeString(this.FH);
            parcel.writeString(this.FI);
            parcel.writeString(this.FJ == null ? null : this.FJ.toString());
            parcel.writeString(this.FK == null ? null : this.FK.toString());
            if (this.FL != null) {
                str = this.FL.toString();
            }
            parcel.writeString(str);
            parcel.writeInt(this.FM ? 1 : 0);
            if (!this.FN) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            parcel.writeString(this.FO);
            parcel.writeInt(this.FP);
            parcel.writeInt(this.FQ);
            parcel.writeInt(this.FR);
        } else {
            a.a(this, parcel, i);
        }
    }
}