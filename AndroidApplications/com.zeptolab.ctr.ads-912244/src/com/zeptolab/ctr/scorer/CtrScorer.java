package com.zeptolab.ctr.scorer;

import android.app.Activity;
import android.content.Intent;
import com.zeptolab.ctr.L;
import java.util.List;

public abstract class CtrScorer {
    public static String TAG;
    public Activity mainActivity;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Class val$screenActivity;

        AnonymousClass_1(Class cls) {
            this.val$screenActivity = cls;
        }

        public void run() {
            try {
                CtrScorer.this.mainActivity.startActivity(new Intent(CtrScorer.this.mainActivity, this.val$screenActivity));
            } catch (Exception e) {
                L.e("CTR", "Scorer UI", e);
            }
        }
    }

    public class Stats {
        protected List achievements;
        protected List leaderboards;

        public Stats() {
            this.achievements = null;
            this.leaderboards = null;
        }

        public boolean isCheated() {
            return this.achievements == null || this.leaderboards == null;
        }
    }

    public CtrScorer(Activity activity) {
        this.mainActivity = activity;
    }

    public abstract void activateScorerUI();

    public void activateUI(Class cls) {
        this.mainActivity.runOnUiThread(new AnonymousClass_1(cls));
    }

    public abstract void appendStats(Stats stats);

    public abstract void gamePlayEnded(int i, int i2);

    public String getName() {
        return "noname";
    }

    public abstract Stats getStats();

    public abstract boolean isReady();

    public boolean isSignedIn() {
        L.i(TAG, "isSignedIn in CtrScorer");
        return false;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public abstract boolean postAchievement(String str);

    public void reset() {
    }

    public void showAchievements() {
    }

    public void showLeaderboards() {
    }

    public void signInButtonPressed() {
    }
}