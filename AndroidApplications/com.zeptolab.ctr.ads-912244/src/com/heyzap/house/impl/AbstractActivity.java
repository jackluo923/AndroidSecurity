package com.heyzap.house.impl;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.ClickHandler;
import com.heyzap.house.model.AdCache;
import com.heyzap.house.model.AdModel;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.heyzap.sdk.ads.HeyzapAds;
import com.heyzap.sdk.ads.InterstitialAd;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public abstract class AbstractActivity extends Activity {
    public static final int ACTIVITY_ACTION_HIDE = 2;
    public static final int ACTIVITY_ACTION_SHOW = 1;
    public static final String ACTIVITY_INTENT_ACTION_KEY = "action";
    public static final String ACTIVITY_INTENT_CONTEXT_KEY = "ad_context";
    public static final String ACTIVITY_INTENT_IMPRESSION_KEY = "impression_id";
    public static final String ACTIVITY_INTENT_ORIGINAL_ORIENTATION = "original_orientation";
    protected AdModel currentAd;
    protected Boolean currentAdComplete;
    protected String currentAdImpressionId;
    protected String currentAdTag;
    protected int currentAdUnit;
    private int originalOrientation;
    private ProgressDialog progressDialog;

    public static interface AdActionListener {
        void click();

        void clickUrl(String str, String str2);

        void completed();

        void error();

        void hide();

        void installHeyzap();

        void restart();

        void show();
    }

    public AbstractActivity() {
        this.currentAdTag = null;
        this.currentAdImpressionId = null;
        this.currentAdUnit = 0;
        this.currentAdComplete = Boolean.valueOf(false);
        this.originalOrientation = 0;
        this.progressDialog = null;
    }

    @SuppressLint({"InlinedApi"})
    private void lockCurrentAdOrientation() {
        int requiredOrientation = this.currentAd.getRequiredOrientation();
        if (requiredOrientation != 0) {
            switch (requiredOrientation) {
                case ACTIVITY_ACTION_SHOW:
                    if (Utils.getSdkVersion() > 8) {
                        setRequestedOrientation(GoogleScorer.CLIENT_ALL);
                    } else {
                        setRequestedOrientation(ACTIVITY_ACTION_SHOW);
                    }
                case ACTIVITY_ACTION_HIDE:
                    if (Utils.getSdkVersion() > 8) {
                        setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
                    } else {
                        setRequestedOrientation(0);
                    }
                default:
                    break;
            }
        }
    }

    public void finish() {
        super.finish();
    }

    public abstract View getContentView();

    protected void handleIntent(Intent intent) {
        if (intent.getExtras() == null) {
            finish();
        }
        if (!intent.getExtras().containsKey(ACTIVITY_INTENT_ACTION_KEY)) {
            finish();
        }
        if (intent.getExtras().containsKey(ACTIVITY_INTENT_ORIGINAL_ORIENTATION)) {
            this.originalOrientation = intent.getExtras().getInt(ACTIVITY_INTENT_ORIGINAL_ORIENTATION);
        }
        if (intent.getExtras().containsKey(ACTIVITY_INTENT_ACTION_KEY)) {
            switch (intent.getExtras().getInt(ACTIVITY_INTENT_ACTION_KEY)) {
                case ACTIVITY_ACTION_HIDE:
                    if (this.currentAd == null) {
                        finish();
                    } else {
                        onHide();
                    }
                default:
                    this.currentAdImpressionId = intent.getStringExtra(ACTIVITY_INTENT_IMPRESSION_KEY);
                    this.currentAdUnit = intent.getIntExtra(ACTIVITY_INTENT_CONTEXT_KEY, 0);
                    this.currentAd = AdCache.getInstance().peek(this.currentAdImpressionId);
                    if (this.currentAd == null || this.currentAd.isExpired().booleanValue()) {
                        try {
                            Manager.getInstance().getOnStatusListener(Integer.valueOf(this.currentAdUnit)).onFailedToShow(null);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        finish();
                    } else {
                        this.currentAdTag = this.currentAd.getTag();
                        lockCurrentAdOrientation();
                        prepare();
                        setContentView(getContentView());
                        onShow();
                        Manager.lastActivity = this;
                    }
            }
        }
    }

    public void onClick() {
        onClick(this.currentAd.actionUrl, null);
    }

    public void onClick(String str, String str2) {
        new ClickHandler(this.currentAd).doClick(this, str, str2);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @SuppressLint({"NewApi"})
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        super.requestWindowFeature(ACTIVITY_ACTION_SHOW);
        getWindow().getDecorView().setBackgroundColor(0);
        if (Utils.getSdkVersion() >= 11) {
            getWindow().setFlags(16777216, 16777216);
        }
        if (HeyzapAds.hasStarted().booleanValue()) {
            handleIntent(getIntent());
        } else {
            finish();
        }
    }

    protected void onDestroy() {
        if (this.progressDialog != null && this.progressDialog.isShowing()) {
            this.progressDialog.cancel();
        }
        super.onDestroy();
    }

    public void onHide() {
        if (this.currentAd != null) {
            Logger.format("(HIDE) %s", new Object[]{this.currentAd});
            Manager.getInstance().getOnStatusListener(Integer.valueOf(this.currentAd.getAdUnit())).onHide(this.currentAd.getTag());
            try {
                this.currentAd.cleanup(this);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (Manager.SLOW_CLOSE.booleanValue()) {
                this.progressDialog = new ProgressDialog(this);
                this.progressDialog.setTitle("Please wait...");
                this.progressDialog.setMessage(AdTrackerConstants.BLANK);
                this.progressDialog.setIndeterminate(true);
                this.progressDialog.setCancelable(false);
                this.progressDialog.show();
            }
            finish();
            AdCache.getInstance().pop(this.currentAdImpressionId);
            switch (this.currentAdUnit) {
                case ACTIVITY_ACTION_SHOW:
                    if (!Manager.getInstance().isFlagEnabled(ACTIVITY_ACTION_SHOW).booleanValue()) {
                        InterstitialAd.fetch(this.currentAdTag, this.originalOrientation);
                    }
                    break;
            }
            Manager.lastActivity = null;
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent(intent);
    }

    protected void onPause() {
        super.onPause();
    }

    public abstract Boolean onPrepared();

    protected void onResume() {
        super.onResume();
    }

    public void onShow() {
        this.currentAd.onImpression(this);
        Manager.getInstance().getOnStatusListener(Integer.valueOf(this.currentAd.getAdUnit())).onShow(this.currentAd.getTag());
    }

    public abstract void prepare();
}