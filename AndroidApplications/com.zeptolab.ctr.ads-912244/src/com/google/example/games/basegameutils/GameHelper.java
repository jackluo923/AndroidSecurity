package com.google.example.games.basegameutils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.appstate.AppStateManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.plus.Plus;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.ArrayList;

public class GameHelper implements ConnectionCallbacks, OnConnectionFailedListener {
    public static final int CLIENT_ALL = 7;
    public static final int CLIENT_APPSTATE = 4;
    public static final int CLIENT_GAMES = 1;
    public static final int CLIENT_NONE = 0;
    public static final int CLIENT_PLUS = 2;
    static final int DEFAULT_MAX_SIGN_IN_ATTEMPTS = 0;
    static final int RC_RESOLVE = 9001;
    static final int RC_UNUSED = 9002;
    static final String TAG = "GameHelper";
    private final String GAMEHELPER_SHARED_PREFS;
    private final String KEY_SIGN_IN_CANCELLATIONS;
    Activity mActivity;
    Context mAppContext;
    ApiOptions mAppStateApiOptions;
    boolean mConnectOnStart;
    private boolean mConnecting;
    ConnectionResult mConnectionResult;
    boolean mDebugLog;
    boolean mExpectingResolution;
    ApiOptions mGamesApiOptions;
    GoogleApiClient mGoogleApiClient;
    Builder mGoogleApiClientBuilder;
    Handler mHandler;
    Invitation mInvitation;
    GameHelperListener mListener;
    int mMaxAutoSignInAttempts;
    ApiOptions mPlusApiOptions;
    int mRequestedClients;
    ArrayList mRequests;
    private boolean mSetupDone;
    boolean mShowErrorDialogs;
    boolean mSignInCancelled;
    SignInFailureReason mSignInFailureReason;
    TurnBasedMatch mTurnBasedMatch;
    boolean mUserInitiatedSignIn;

    public static interface GameHelperListener {
        void onSignInFailed();

        void onSignInSucceeded();
    }

    public static class SignInFailureReason {
        public static final int NO_ACTIVITY_RESULT_CODE = -100;
        int mActivityResultCode;
        int mServiceErrorCode;

        public SignInFailureReason(int i) {
            this(i, -100);
        }

        public SignInFailureReason(int i, int i2) {
            this.mServiceErrorCode = 0;
            this.mActivityResultCode = -100;
            this.mServiceErrorCode = i;
            this.mActivityResultCode = i2;
        }

        public int getActivityResultCode() {
            return this.mActivityResultCode;
        }

        public int getServiceErrorCode() {
            return this.mServiceErrorCode;
        }

        public String toString() {
            return "SignInFailureReason(serviceErrorCode:" + GameHelperUtils.errorCodeToString(this.mServiceErrorCode) + (this.mActivityResultCode == -100 ? ")" : ",activityResultCode:" + GameHelperUtils.activityResponseCodeToString(this.mActivityResultCode) + ")");
        }
    }

    public GameHelper(Activity activity, int i) {
        this.mSetupDone = false;
        this.mConnecting = false;
        this.mExpectingResolution = false;
        this.mSignInCancelled = false;
        this.mActivity = null;
        this.mAppContext = null;
        this.mGoogleApiClientBuilder = null;
        this.mGamesApiOptions = null;
        this.mPlusApiOptions = null;
        this.mAppStateApiOptions = null;
        this.mGoogleApiClient = null;
        this.mRequestedClients = 0;
        this.mConnectOnStart = true;
        this.mUserInitiatedSignIn = false;
        this.mConnectionResult = null;
        this.mSignInFailureReason = null;
        this.mShowErrorDialogs = true;
        this.mDebugLog = false;
        this.mListener = null;
        this.mMaxAutoSignInAttempts = 0;
        this.GAMEHELPER_SHARED_PREFS = "GAMEHELPER_SHARED_PREFS";
        this.KEY_SIGN_IN_CANCELLATIONS = "KEY_SIGN_IN_CANCELLATIONS";
        this.mActivity = activity;
        this.mAppContext = activity.getApplicationContext();
        this.mRequestedClients = i;
        this.mHandler = new Handler();
    }

    private void doApiOptionsPreCheck() {
        if (this.mGoogleApiClientBuilder != null) {
            String str = "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup().";
            logError(str);
            throw new IllegalStateException(str);
        }
    }

    static Dialog makeSimpleDialog(Activity activity, String str) {
        return new AlertDialog.Builder(activity).setMessage(str).setNeutralButton(17039370, null).create();
    }

    static Dialog makeSimpleDialog(Activity activity, String str, String str2) {
        return new AlertDialog.Builder(activity).setMessage(str2).setTitle(str).setNeutralButton(17039370, null).create();
    }

    public static void showFailureDialog(Activity activity, int i, int i2) {
        if (activity == null) {
            Log.e(TAG, "*** No Activity. Can't show failure dialog!");
        } else {
            Dialog makeSimpleDialog;
            switch (i) {
                case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED:
                    makeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, CLIENT_GAMES));
                    break;
                case GamesActivityResultCodes.RESULT_LICENSE_FAILED:
                    makeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED:
                    makeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, CLIENT_PLUS));
                    break;
                default:
                    makeSimpleDialog = GooglePlayServicesUtil.getErrorDialog(i2, activity, RC_UNUSED, null);
                    if (makeSimpleDialog == null) {
                        Log.e(TAG, "No standard error dialog available. Making fallback dialog.");
                        makeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, DEFAULT_MAX_SIGN_IN_ATTEMPTS) + " " + GameHelperUtils.errorCodeToString(i2));
                    }
                    break;
            }
            makeSimpleDialog.show();
        }
    }

    void assertConfigured(String str) {
        if (!this.mSetupDone) {
            String str2 = "GameHelper error: Operation attempted without setup: " + str + ". The setup() method must be called before attempting any other operation.";
            logError(str2);
            throw new IllegalStateException(str2);
        }
    }

    public void beginUserInitiatedSignIn() {
        debugLog("beginUserInitiatedSignIn: resetting attempt count.");
        resetSignInCancellations();
        this.mSignInCancelled = false;
        this.mConnectOnStart = true;
        if (this.mGoogleApiClient.isConnected()) {
            logWarn("beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success.");
            notifyListener(true);
        } else if (this.mConnecting) {
            logWarn("beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it's clicked, and re-enable when you get the callback.");
        } else {
            debugLog("Starting USER-INITIATED sign-in flow.");
            this.mUserInitiatedSignIn = true;
            if (this.mConnectionResult != null) {
                debugLog("beginUserInitiatedSignIn: continuing pending sign-in flow.");
                this.mConnecting = true;
                resolveConnectionResult();
            } else {
                debugLog("beginUserInitiatedSignIn: starting new sign-in flow.");
                this.mConnecting = true;
                connect();
            }
        }
    }

    public void clearInvitation() {
        this.mInvitation = null;
    }

    public void clearRequests() {
        this.mRequests = null;
    }

    public void clearTurnBasedMatch() {
        this.mTurnBasedMatch = null;
    }

    void connect() {
        if (this.mGoogleApiClient.isConnected()) {
            debugLog("Already connected.");
        } else {
            debugLog("Starting connection.");
            this.mConnecting = true;
            this.mInvitation = null;
            this.mTurnBasedMatch = null;
            this.mGoogleApiClient.connect();
        }
    }

    public Builder createApiClientBuilder() {
        if (this.mSetupDone) {
            String str = "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup.";
            logError(str);
            throw new IllegalStateException(str);
        } else {
            Builder builder = new Builder(this.mActivity, this, this);
            if ((this.mRequestedClients & 1) != 0) {
                builder.addApi(Games.API, this.mGamesApiOptions);
                builder.addScope(Games.SCOPE_GAMES);
            }
            if ((this.mRequestedClients & 2) != 0) {
                builder.addApi(Plus.API, this.mPlusApiOptions);
                builder.addScope(Plus.SCOPE_PLUS_LOGIN);
            }
            if ((this.mRequestedClients & 4) != 0) {
                builder.addApi(AppStateManager.API, this.mAppStateApiOptions);
                builder.addScope(AppStateManager.SCOPE_APP_STATE);
            }
            this.mGoogleApiClientBuilder = builder;
            return builder;
        }
    }

    void debugLog(String str) {
        if (this.mDebugLog) {
            Log.d(TAG, "GameHelper: " + str);
        }
    }

    public void disconnect() {
        if (this.mGoogleApiClient.isConnected()) {
            debugLog("Disconnecting client.");
            this.mGoogleApiClient.disconnect();
        } else {
            Log.w(TAG, "disconnect() called when client was already disconnected.");
        }
    }

    public void enableDebugLog(boolean z) {
        this.mDebugLog = z;
        if (z) {
            debugLog("Debug log enabled.");
        }
    }

    @Deprecated
    public void enableDebugLog(boolean z, String str) {
        Log.w(TAG, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)");
        enableDebugLog(z);
    }

    public GoogleApiClient getApiClient() {
        if (this.mGoogleApiClient != null) {
            return this.mGoogleApiClient;
        }
        throw new IllegalStateException("No GoogleApiClient. Did you call setup()?");
    }

    public Invitation getInvitation() {
        if (!this.mGoogleApiClient.isConnected()) {
            Log.w(TAG, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mInvitation;
    }

    public String getInvitationId() {
        if (!this.mGoogleApiClient.isConnected()) {
            Log.w(TAG, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mInvitation == null ? null : this.mInvitation.getInvitationId();
    }

    public ArrayList getRequests() {
        if (!this.mGoogleApiClient.isConnected()) {
            Log.w(TAG, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mRequests;
    }

    int getSignInCancellations() {
        return this.mAppContext.getSharedPreferences("GAMEHELPER_SHARED_PREFS", DEFAULT_MAX_SIGN_IN_ATTEMPTS).getInt("KEY_SIGN_IN_CANCELLATIONS", DEFAULT_MAX_SIGN_IN_ATTEMPTS);
    }

    public SignInFailureReason getSignInError() {
        return this.mSignInFailureReason;
    }

    public TurnBasedMatch getTurnBasedMatch() {
        if (!this.mGoogleApiClient.isConnected()) {
            Log.w(TAG, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mTurnBasedMatch;
    }

    void giveUp(SignInFailureReason signInFailureReason) {
        this.mConnectOnStart = false;
        disconnect();
        this.mSignInFailureReason = signInFailureReason;
        if (signInFailureReason.mActivityResultCode == 10004) {
            GameHelperUtils.printMisconfiguredDebugInfo(this.mAppContext);
        }
        showFailureDialog();
        this.mConnecting = false;
        notifyListener(false);
    }

    public boolean hasInvitation() {
        return this.mInvitation != null;
    }

    public boolean hasRequests() {
        return this.mRequests != null;
    }

    public boolean hasSignInError() {
        return this.mSignInFailureReason != null;
    }

    public boolean hasTurnBasedMatch() {
        return this.mTurnBasedMatch != null;
    }

    int incrementSignInCancellations() {
        int signInCancellations = getSignInCancellations();
        Editor edit = this.mAppContext.getSharedPreferences("GAMEHELPER_SHARED_PREFS", DEFAULT_MAX_SIGN_IN_ATTEMPTS).edit();
        edit.putInt("KEY_SIGN_IN_CANCELLATIONS", signInCancellations + 1);
        edit.commit();
        return signInCancellations + 1;
    }

    public boolean isConnecting() {
        return this.mConnecting;
    }

    public boolean isSignedIn() {
        return this.mGoogleApiClient != null && this.mGoogleApiClient.isConnected();
    }

    void logError(String str) {
        Log.e(TAG, "*** GameHelper ERROR: " + str);
    }

    void logWarn(String str) {
        Log.w(TAG, "!!! GameHelper WARNING: " + str);
    }

    public Dialog makeSimpleDialog(String str) {
        if (this.mActivity != null) {
            return makeSimpleDialog(this.mActivity, str);
        }
        logError("*** makeSimpleDialog failed: no current Activity!");
        return null;
    }

    public Dialog makeSimpleDialog(String str, String str2) {
        if (this.mActivity != null) {
            return makeSimpleDialog(this.mActivity, str, str2);
        }
        logError("*** makeSimpleDialog failed: no current Activity!");
        return null;
    }

    void notifyListener(boolean z) {
        String str;
        StringBuilder append = new StringBuilder().append("Notifying LISTENER of sign-in ");
        if (z) {
            str = "SUCCESS";
        } else if (this.mSignInFailureReason != null) {
            str = "FAILURE (error)";
        } else {
            str = "FAILURE (no error)";
        }
        debugLog(append.append(str).toString());
        if (this.mListener == null) {
            return;
        }
        if (z) {
            this.mListener.onSignInSucceeded();
        } else {
            this.mListener.onSignInFailed();
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        debugLog("onActivityResult: req=" + (i == 9001 ? "RC_RESOLVE" : String.valueOf(i)) + ", resp=" + GameHelperUtils.activityResponseCodeToString(i2));
        if (i != 9001) {
            debugLog("onActivityResult: request code not meant for us. Ignoring.");
        } else {
            this.mExpectingResolution = false;
            if (!this.mConnecting) {
                debugLog("onActivityResult: ignoring because we are not connecting.");
            } else if (i2 == -1) {
                debugLog("onAR: Resolution was RESULT_OK, so connecting current client again.");
                connect();
            } else if (i2 == 10001) {
                debugLog("onAR: Resolution was RECONNECT_REQUIRED, so reconnecting.");
                connect();
            } else if (i2 == 0) {
                debugLog("onAR: Got a cancellation result, so disconnecting.");
                this.mSignInCancelled = true;
                this.mConnectOnStart = false;
                this.mUserInitiatedSignIn = false;
                this.mSignInFailureReason = null;
                this.mConnecting = false;
                this.mGoogleApiClient.disconnect();
                debugLog("onAR: # of cancellations " + getSignInCancellations() + " --> " + incrementSignInCancellations() + ", max " + this.mMaxAutoSignInAttempts);
                notifyListener(false);
            } else {
                debugLog("onAR: responseCode=" + GameHelperUtils.activityResponseCodeToString(i2) + ", so giving up.");
                giveUp(new SignInFailureReason(this.mConnectionResult.getErrorCode(), i2));
            }
        }
    }

    public void onConnected(Bundle bundle) {
        debugLog("onConnected: connected!");
        if (bundle != null) {
            debugLog("onConnected: connection hint provided. Checking for invite.");
            Invitation invitation = (Invitation) bundle.getParcelable(Multiplayer.EXTRA_INVITATION);
            if (!(invitation == null || invitation.getInvitationId() == null)) {
                debugLog("onConnected: connection hint has a room invite!");
                this.mInvitation = invitation;
                debugLog("Invitation ID: " + this.mInvitation.getInvitationId());
            }
            this.mRequests = Games.Requests.getGameRequestsFromBundle(bundle);
            if (!this.mRequests.isEmpty()) {
                debugLog("onConnected: connection hint has " + this.mRequests.size() + " request(s)");
            }
            debugLog("onConnected: connection hint provided. Checking for TBMP game.");
            this.mTurnBasedMatch = (TurnBasedMatch) bundle.getParcelable(Multiplayer.EXTRA_TURN_BASED_MATCH);
        }
        succeedSignIn();
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        boolean z = CLIENT_GAMES;
        debugLog("onConnectionFailed");
        this.mConnectionResult = connectionResult;
        debugLog("Connection failure:");
        debugLog("   - code: " + GameHelperUtils.errorCodeToString(this.mConnectionResult.getErrorCode()));
        debugLog("   - resolvable: " + this.mConnectionResult.hasResolution());
        debugLog("   - details: " + this.mConnectionResult.toString());
        int signInCancellations = getSignInCancellations();
        if (this.mUserInitiatedSignIn) {
            debugLog("onConnectionFailed: WILL resolve because user initiated sign-in.");
        } else if (this.mSignInCancelled) {
            debugLog("onConnectionFailed WILL NOT resolve (user already cancelled once).");
            z = false;
        } else if (signInCancellations < this.mMaxAutoSignInAttempts) {
            debugLog("onConnectionFailed: WILL resolve because we have below the max# of attempts, " + signInCancellations + " < " + this.mMaxAutoSignInAttempts);
        } else {
            debugLog("onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: " + signInCancellations + " >= " + this.mMaxAutoSignInAttempts);
            z = false;
        }
        if (i == 0) {
            debugLog("onConnectionFailed: since we won't resolve, failing now.");
            this.mConnectionResult = connectionResult;
            this.mConnecting = false;
            notifyListener(false);
        } else {
            debugLog("onConnectionFailed: resolving problem...");
            resolveConnectionResult();
        }
    }

    public void onConnectionSuspended(int i) {
        debugLog("onConnectionSuspended, cause=" + i);
        disconnect();
        this.mSignInFailureReason = null;
        debugLog("Making extraordinary call to onSignInFailed callback");
        this.mConnecting = false;
        notifyListener(false);
    }

    public void onStart(Activity activity) {
        this.mActivity = activity;
        this.mAppContext = activity.getApplicationContext();
        debugLog("onStart");
        assertConfigured("onStart");
        if (!this.mConnectOnStart) {
            debugLog("Not attempting to connect becase mConnectOnStart=false");
            debugLog("Instead, reporting a sign-in failure.");
            this.mHandler.postDelayed(new Runnable() {
                public void run() {
                    GameHelper.this.notifyListener(false);
                }
            }, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        } else if (this.mGoogleApiClient.isConnected()) {
            Log.w(TAG, "GameHelper: client was already connected on onStart()");
        } else {
            debugLog("Connecting client.");
            this.mConnecting = true;
            this.mGoogleApiClient.connect();
        }
    }

    public void onStop() {
        debugLog("onStop");
        assertConfigured("onStop");
        if (this.mGoogleApiClient.isConnected()) {
            debugLog("Disconnecting client due to onStop");
            this.mGoogleApiClient.disconnect();
        } else {
            debugLog("Client already disconnected when we got onStop.");
        }
        this.mConnecting = false;
        this.mExpectingResolution = false;
        this.mActivity = null;
    }

    public void reconnectClient() {
        if (this.mGoogleApiClient.isConnected()) {
            debugLog("Reconnecting client.");
            this.mGoogleApiClient.reconnect();
        } else {
            Log.w(TAG, "reconnectClient() called when client is not connected.");
            connect();
        }
    }

    void resetSignInCancellations() {
        Editor edit = this.mAppContext.getSharedPreferences("GAMEHELPER_SHARED_PREFS", DEFAULT_MAX_SIGN_IN_ATTEMPTS).edit();
        edit.putInt("KEY_SIGN_IN_CANCELLATIONS", DEFAULT_MAX_SIGN_IN_ATTEMPTS);
        edit.commit();
    }

    void resolveConnectionResult() {
        if (this.mExpectingResolution) {
            debugLog("We're already expecting the result of a previous resolution.");
        } else {
            debugLog("resolveConnectionResult: trying to resolve result: " + this.mConnectionResult);
            if (this.mConnectionResult.hasResolution()) {
                debugLog("Result has resolution. Starting it.");
                try {
                    this.mExpectingResolution = true;
                    this.mConnectionResult.startResolutionForResult(this.mActivity, RC_RESOLVE);
                } catch (SendIntentException e) {
                    debugLog("SendIntentException, so connecting again.");
                    connect();
                } catch (NullPointerException e2) {
                    debugLog("NullPointerException: " + e2.getLocalizedMessage());
                    connect();
                }
            } else {
                debugLog("resolveConnectionResult: result has no resolution. Giving up.");
                giveUp(new SignInFailureReason(this.mConnectionResult.getErrorCode()));
            }
        }
    }

    public void setAppStateApiOptions(ApiOptions apiOptions) {
        doApiOptionsPreCheck();
        this.mAppStateApiOptions = apiOptions;
    }

    public void setConnectOnStart(boolean z) {
        debugLog("Forcing mConnectOnStart=" + z);
        this.mConnectOnStart = z;
    }

    public void setGamesApiOptions(ApiOptions apiOptions) {
        doApiOptionsPreCheck();
        this.mGamesApiOptions = apiOptions;
    }

    public void setMaxAutoSignInAttempts(int i) {
        this.mMaxAutoSignInAttempts = i;
    }

    public void setPlusApiOptions(ApiOptions apiOptions) {
        doApiOptionsPreCheck();
        this.mPlusApiOptions = apiOptions;
    }

    public void setShowErrorDialogs(boolean z) {
        this.mShowErrorDialogs = z;
    }

    public void setup(GameHelperListener gameHelperListener) {
        if (this.mSetupDone) {
            String str = "GameHelper: you cannot call GameHelper.setup() more than once!";
            logError(str);
            throw new IllegalStateException(str);
        } else {
            this.mListener = gameHelperListener;
            debugLog("Setup: requested clients: " + this.mRequestedClients);
            if (this.mGoogleApiClientBuilder == null) {
                createApiClientBuilder();
            }
            this.mGoogleApiClient = this.mGoogleApiClientBuilder.build();
            this.mGoogleApiClientBuilder = null;
            this.mSetupDone = true;
        }
    }

    public void showFailureDialog() {
        if (this.mSignInFailureReason != null) {
            int serviceErrorCode = this.mSignInFailureReason.getServiceErrorCode();
            int activityResultCode = this.mSignInFailureReason.getActivityResultCode();
            if (this.mShowErrorDialogs) {
                showFailureDialog(this.mActivity, activityResultCode, serviceErrorCode);
            } else {
                debugLog("Not showing error dialog because mShowErrorDialogs==false. Error was: " + this.mSignInFailureReason);
            }
        }
    }

    public void signOut() {
        if (this.mGoogleApiClient.isConnected()) {
            if ((this.mRequestedClients & 2) != 0) {
                debugLog("Clearing default account on PlusClient.");
                Plus.AccountApi.clearDefaultAccount(this.mGoogleApiClient);
            }
            if ((this.mRequestedClients & 1) != 0) {
                debugLog("Signing out from GamesClient.");
                Games.signOut(this.mGoogleApiClient);
            }
            debugLog("Disconnecting client.");
            this.mConnectOnStart = false;
            this.mConnecting = false;
            this.mGoogleApiClient.disconnect();
        } else {
            debugLog("signOut: was already disconnected, ignoring.");
        }
    }

    void succeedSignIn() {
        debugLog("succeedSignIn");
        this.mSignInFailureReason = null;
        this.mConnectOnStart = true;
        this.mUserInitiatedSignIn = false;
        this.mConnecting = false;
        notifyListener(true);
    }
}