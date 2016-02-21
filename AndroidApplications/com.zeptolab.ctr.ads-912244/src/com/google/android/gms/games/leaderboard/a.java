package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fm;
import java.util.ArrayList;

public final class a implements Leaderboard {
    private final String FE;
    private final Uri FJ;
    private final String FU;
    private final String IJ;
    private final int IK;
    private final ArrayList IL;
    private final Game IM;

    public a(Leaderboard leaderboard) {
        this.IJ = leaderboard.getLeaderboardId();
        this.FE = leaderboard.getDisplayName();
        this.FJ = leaderboard.getIconImageUri();
        this.FU = leaderboard.getIconImageUrl();
        this.IK = leaderboard.getScoreOrder();
        Game game = leaderboard.getGame();
        this.IM = game == null ? null : new GameEntity(game);
        ArrayList variants = leaderboard.getVariants();
        int size = variants.size();
        this.IL = new ArrayList(size);
        int i = 0;
        while (i < size) {
            this.IL.add((f) ((LeaderboardVariant) variants.get(i)).freeze());
            i++;
        }
    }

    static int a_(Leaderboard leaderboard) {
        return ep.hashCode(new Object[]{leaderboard.getLeaderboardId(), leaderboard.getDisplayName(), leaderboard.getIconImageUri(), Integer.valueOf(leaderboard.getScoreOrder()), leaderboard.getVariants()});
    }

    static boolean a_(Leaderboard leaderboard, Leaderboard leaderboard2) {
        if (!(leaderboard2 instanceof Leaderboard)) {
            return false;
        }
        if (leaderboard == leaderboard2) {
            return true;
        }
        leaderboard2 = leaderboard2;
        return ep.equal(leaderboard2.getLeaderboardId(), leaderboard.getLeaderboardId()) && ep.equal(leaderboard2.getDisplayName(), leaderboard.getDisplayName()) && ep.equal(leaderboard2.getIconImageUri(), leaderboard.getIconImageUri()) && ep.equal(Integer.valueOf(leaderboard2.getScoreOrder()), Integer.valueOf(leaderboard.getScoreOrder())) && ep.equal(leaderboard2.getVariants(), leaderboard.getVariants());
    }

    static String b(Leaderboard leaderboard) {
        return ep.e(leaderboard).a("LeaderboardId", leaderboard.getLeaderboardId()).a("DisplayName", leaderboard.getDisplayName()).a("IconImageUri", leaderboard.getIconImageUri()).a("IconImageUrl", leaderboard.getIconImageUrl()).a("ScoreOrder", Integer.valueOf(leaderboard.getScoreOrder())).a("Variants", leaderboard.getVariants()).toString();
    }

    public boolean equals(Object obj) {
        return a(this, obj);
    }

    public Leaderboard fW() {
        return this;
    }

    public /* synthetic */ Object freeze() {
        return fW();
    }

    public String getDisplayName() {
        return this.FE;
    }

    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        fm.b(this.FE, charArrayBuffer);
    }

    public Game getGame() {
        return this.IM;
    }

    public Uri getIconImageUri() {
        return this.FJ;
    }

    public String getIconImageUrl() {
        return this.FU;
    }

    public String getLeaderboardId() {
        return this.IJ;
    }

    public int getScoreOrder() {
        return this.IK;
    }

    public ArrayList getVariants() {
        return new ArrayList(this.IL);
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
}