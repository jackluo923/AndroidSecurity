package com.zeptolab.ctr.scorer;

import android.app.Activity;
import android.content.Intent;
import android.opengl.GLSurfaceView;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.example.games.basegameutils.GameHelper;
import com.google.example.games.basegameutils.GameHelper.GameHelperListener;
import com.google.example.games.basegameutils.GameHelper.SignInFailureReason;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.L;
import com.zeptolab.ctr.scorer.CtrScorer.Stats;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GoogleScorer extends CtrScorer implements GameHelperListener {
    public static final int CLIENT_ALL = 7;
    public static final int CLIENT_APPSTATE = 4;
    public static final int CLIENT_GAMES = 1;
    public static final int CLIENT_PLUS = 2;
    public static String TAG;
    public static Map achMap;
    public static List ldbMap;
    final int RC_RESOLVE;
    final int RC_UNUSED;
    private String[] mAdditionalScopes;
    protected boolean mDebugLog;
    protected String mDebugTag;
    protected GameHelper mHelper;
    protected int mRequestedClients;
    private boolean signedIn;
    protected GLSurfaceView view;
    private boolean working;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String val$leaderboardID;
        final /* synthetic */ int val$scoreResult;

        AnonymousClass_1(String str, int i) {
            this.val$leaderboardID = str;
            this.val$scoreResult = i;
        }

        public void run() {
            Games.Leaderboards.submitScore(GoogleScorer.this.getApiClient(), this.val$leaderboardID, (long) this.val$scoreResult);
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ String val$realAchievementName;

        AnonymousClass_2(String str) {
            this.val$realAchievementName = str;
        }

        public void run() {
            L.i(TAG, "unlockAchievement");
            Games.Achievements.unlock(GoogleScorer.this.getApiClient(), this.val$realAchievementName);
        }
    }

    static {
        TAG = "GoogleScorer";
    }

    public GoogleScorer(Activity activity, GLSurfaceView gLSurfaceView) {
        super(activity);
        this.RC_RESOLVE = 5000;
        this.RC_UNUSED = 5001;
        this.mRequestedClients = 1;
        this.mDebugTag = "GoogleScorer";
        this.mDebugLog = true;
        this.signedIn = false;
        this.working = false;
        this.view = null;
        this.view = gLSurfaceView;
        achMap = new CtrGoogleAchievementMap();
        ldbMap = new CtrGoogleLeaderboardsMap();
    }

    public void activateScorerUI() {
    }

    public void appendStats(Stats stats) {
        L.i(TAG, "APPENDING STATS");
        Iterator it = stats.achievements.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            L.i(TAG, "ACHIEVMENT: " + str);
            postAchievement(str);
        }
    }

    protected void beginUserInitiatedSignIn() {
        this.mHelper.beginUserInitiatedSignIn();
    }

    public void gamePlayEnded(int i, int i2) {
        if (!this.signedIn) {
            return;
        }
        if (i > ldbMap.size()) {
            L.e(TAG, "Missing leaderboard id");
        } else {
            this.mainActivity.runOnUiThread(new AnonymousClass_1((String) ldbMap.get(i), i2));
        }
    }

    protected GoogleApiClient getApiClient() {
        return this.mHelper.getApiClient();
    }

    public GameHelper getGameHelper() {
        if (this.mHelper == null) {
            this.mHelper = new GameHelper(this.mainActivity, this.mRequestedClients);
            this.mHelper.enableDebugLog(this.mDebugLog);
        }
        return this.mHelper;
    }

    protected String getInvitationId() {
        return this.mHelper.getInvitationId();
    }

    public String getName() {
        return ZBuildConfig.market;
    }

    protected SignInFailureReason getSignInError() {
        return this.mHelper.getSignInError();
    }

    public Stats getStats() {
        return null;
    }

    protected boolean hasSignInError() {
        return this.mHelper.hasSignInError();
    }

    public boolean isReady() {
        return this.signedIn;
    }

    public boolean isSignedIn() {
        L.i(TAG, "isSignedIn method");
        return this.signedIn;
    }

    public native void nativeScorerSignedIn();

    public native void nativeScorerSignedOut();

    public void onActivityResult(int i, int i2, Intent intent) {
        this.mHelper.onActivityResult(i, i2, intent);
    }

    public void onCreate() {
        L.d(TAG, "onCreate");
        if (this.mHelper == null) {
            getGameHelper();
        }
        this.mHelper.setup(this);
        this.mHelper.enableDebugLog(this.mDebugLog);
        L.d(TAG, "created");
    }

    public void onSignInFailed() {
        L.w(TAG, "onSignInFailed");
        this.signedIn = false;
        this.working = false;
        this.view.queueEvent(new Runnable() {
            public void run() {
                L.d(TAG, "do native logout");
                GoogleScorer.this.nativeScorerSignedOut();
            }
        });
    }

    public void onSignInSucceeded() {
        L.w(TAG, "onSignInSucceeded");
        this.working = false;
        if (!this.signedIn) {
            this.view.queueEvent(new Runnable() {
                public void run() {
                    L.i(TAG, "before nativeScorerSignedIn");
                    GoogleScorer.this.nativeScorerSignedIn();
                }
            });
        }
        this.signedIn = true;
    }

    public void onStart() {
        L.d(TAG, "onStart");
        this.mHelper.onStart(this.mainActivity);
        L.d(TAG, "started");
    }

    public void onStop() {
        L.d(TAG, "onStop");
        this.mHelper.onStop();
        L.d(TAG, "stopped");
    }

    public boolean postAchievement(String str) {
        if (!this.signedIn) {
            return false;
        }
        this.mainActivity.runOnUiThread(new AnonymousClass_2((String) achMap.get(str)));
        return true;
    }

    public void showAchievements() {
        this.mainActivity.runOnUiThread(new Runnable() {
            public void run() {
                if (GoogleScorer.this.isSignedIn()) {
                    GoogleScorer.this.mainActivity.startActivityForResult(Games.Achievements.getAchievementsIntent(GoogleScorer.this.getApiClient()), AdTrackerConstants.WEBVIEW_INVALIDPARAM);
                } else {
                    L.e(TAG, "showAchievements error, not signed in");
                }
            }
        });
    }

    public void showLeaderboards() {
        this.mainActivity.runOnUiThread(new Runnable() {
            public void run() {
                if (GoogleScorer.this.isSignedIn()) {
                    GoogleScorer.this.mainActivity.startActivityForResult(Games.Leaderboards.getAllLeaderboardsIntent(GoogleScorer.this.getApiClient()), AdTrackerConstants.WEBVIEW_INVALIDPARAM);
                } else {
                    L.e(TAG, "showLeaderboards error, not signed in");
                }
            }
        });
    }

    public void signInButtonPressed() {
        if (this.working) {
            L.w(TAG, "signInButtonPressed, working");
        } else if (this.signedIn) {
            this.mainActivity.runOnUiThread(new Runnable() {
                public void run() {
                    L.w(TAG, "signInButtonPressed, before signOut");
                    GoogleScorer.this.signOut();
                    GoogleScorer.this.signedIn = false;
                    GoogleScorer.this.view.queueEvent(new Runnable() {
                        public void run() {
                            L.i(TAG, "before nativeScorerSignedOut");
                            AnonymousClass_5.this.this$0.nativeScorerSignedOut();
                        }
                    });
                }
            });
        } else {
            this.mainActivity.runOnUiThread(new Runnable() {
                public void run() {
                    L.w(TAG, "signInButtonPressed, before signIn");
                    GoogleScorer.this.working = true;
                    GoogleScorer.this.beginUserInitiatedSignIn();
                }
            });
        }
    }

    protected void signOut() {
        this.mHelper.signOut();
    }
}