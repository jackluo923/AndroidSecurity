package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.ep.a;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.gu;
import java.util.HashMap;

public final class ScoreSubmissionData {
    private static final String[] IH;
    private String Gh;
    private String IJ;
    private HashMap Jp;
    private int yJ;

    public static final class Result {
        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public Result(long j, String str, String str2, boolean z) {
            this.rawScore = j;
            this.formattedScore = str;
            this.scoreTag = str2;
            this.newBest = z;
        }

        public String toString() {
            return ep.e(this).a("RawScore", Long.valueOf(this.rawScore)).a("FormattedScore", this.formattedScore).a("ScoreTag", this.scoreTag).a("NewBest", Boolean.valueOf(this.newBest)).toString();
        }
    }

    static {
        IH = new String[]{"leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"};
    }

    public ScoreSubmissionData(DataHolder dataHolder) {
        this.yJ = dataHolder.getStatusCode();
        this.Jp = new HashMap();
        int count = dataHolder.getCount();
        er.x(count == 3);
        int i = 0;
        while (i < count) {
            int I = dataHolder.I(i);
            if (i == 0) {
                this.IJ = dataHolder.getString("leaderboardId", i, I);
                this.Gh = dataHolder.getString("playerId", i, I);
            }
            if (dataHolder.getBoolean("hasResult", i, I)) {
                a(new Result(dataHolder.getLong("rawScore", i, I), dataHolder.getString("formattedScore", i, I), dataHolder.getString("scoreTag", i, I), dataHolder.getBoolean("newBest", i, I)), dataHolder.getInteger("timeSpan", i, I));
            }
            i++;
        }
    }

    private void a(Result result, int i) {
        this.Jp.put(Integer.valueOf(i), result);
    }

    public String getLeaderboardId() {
        return this.IJ;
    }

    public String getPlayerId() {
        return this.Gh;
    }

    public Result getScoreResult(int i) {
        return (Result) this.Jp.get(Integer.valueOf(i));
    }

    public String toString() {
        a a = ep.e(this).a("PlayerId", this.Gh).a("StatusCode", Integer.valueOf(this.yJ));
        int i = 0;
        while (i < 3) {
            Result result = (Result) this.Jp.get(Integer.valueOf(i));
            a.a("TimesSpan", gu.aW(i));
            a.a("Result", result == null ? "null" : result.toString());
            i++;
        }
        return a.toString();
    }
}