package com.millennialmedia.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

@Deprecated
public class MMBroadcastReceiver extends BroadcastReceiver {
    public static final String ACTION_AD_SINGLE_TAP = "millennialmedia.action.ACTION_AD_SINGLE_TAP";
    public static final String ACTION_DISPLAY_STARTED = "millennialmedia.action.ACTION_DISPLAY_STARTED";
    public static final String ACTION_FETCH_FAILED = "millennialmedia.action.ACTION_FETCH_FAILED";
    public static final String ACTION_FETCH_STARTED_CACHING = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING";
    public static final String ACTION_FETCH_SUCCEEDED = "millennialmedia.action.ACTION_FETCH_SUCCEEDED";
    public static final String ACTION_GETAD_FAILED = "millennialmedia.action.ACTION_GETAD_FAILED";
    public static final String ACTION_GETAD_SUCCEEDED = "millennialmedia.action.ACTION_GETAD_SUCCEEDED";
    public static final String ACTION_INTENT_STARTED = "millennialmedia.action.ACTION_INTENT_STARTED";
    public static final String ACTION_OVERLAY_CLOSED = "millennialmedia.action.ACTION_OVERLAY_CLOSED";
    public static final String ACTION_OVERLAY_OPENED = "millennialmedia.action.ACTION_OVERLAY_OPENED";
    @Deprecated
    public static final String ACTION_OVERLAY_TAP = "millennialmedia.action.ACTION_OVERLAY_TAP";
    public static final String CATEGORY_SDK = "millennialmedia.category.CATEGORY_SDK";
    private static final String a = "MMBroadcastReceiver";

    public static IntentFilter createIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addCategory(CATEGORY_SDK);
        intentFilter.addAction(ACTION_DISPLAY_STARTED);
        intentFilter.addAction(ACTION_FETCH_FAILED);
        intentFilter.addAction(ACTION_FETCH_SUCCEEDED);
        intentFilter.addAction(ACTION_FETCH_STARTED_CACHING);
        intentFilter.addAction(ACTION_GETAD_FAILED);
        intentFilter.addAction(ACTION_GETAD_SUCCEEDED);
        intentFilter.addAction(ACTION_INTENT_STARTED);
        intentFilter.addAction(ACTION_OVERLAY_CLOSED);
        intentFilter.addAction(ACTION_OVERLAY_OPENED);
        intentFilter.addAction(ACTION_OVERLAY_TAP);
        intentFilter.addAction(ACTION_AD_SINGLE_TAP);
        return intentFilter;
    }

    public void displayStarted(MMAd mMAd) {
        MMLog.c(a, "Millennial Media display started.");
    }

    public void fetchFailure(MMAd mMAd) {
        MMLog.c(a, "Millennial Media fetch failed.");
    }

    public void fetchFinishedCaching(MMAd mMAd) {
        MMLog.c(a, "Millennial Media fetch finished caching.");
    }

    public void fetchStartedCaching(MMAd mMAd) {
        MMLog.c(a, "Millennial Media fetch started caching.");
    }

    public void getAdFailure(MMAd mMAd) {
        MMLog.c(a, "Millennial Media ad Failure.");
    }

    public void getAdSuccess(MMAd mMAd) {
        MMLog.c(a, "Millennial Media ad Success.");
    }

    public void intentStarted(MMAd mMAd, String str) {
        if (str != null) {
            MMLog.c(a, "Millennial Media started intent: " + str);
        }
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        String stringExtra = intent.getStringExtra("packageName");
        long longExtra = intent.getLongExtra("internalId", -4);
        MMAd mMAd = null;
        if (context.getPackageName().equals(stringExtra)) {
            if (longExtra != -4) {
                MMAdImpl a = MMAdImplController.a(longExtra);
                if (a != null) {
                    mMAd = a.d();
                }
            }
            MMLog.a(a, " @@ Intent - Ad in receiver = " + (mMAd == null ? " null" : mMAd.toString()));
            if (action.equals(ACTION_OVERLAY_OPENED)) {
                overlayOpened(mMAd);
            } else if (action.equals(ACTION_OVERLAY_CLOSED)) {
                overlayClosed(mMAd);
            } else if (action.equals(ACTION_OVERLAY_TAP)) {
                overlayTap(mMAd);
            } else if (action.equals(ACTION_AD_SINGLE_TAP)) {
                onSingleTap(mMAd);
            } else if (action.equals(ACTION_DISPLAY_STARTED)) {
                displayStarted(mMAd);
            } else if (action.equals(ACTION_FETCH_FAILED)) {
                fetchFailure(mMAd);
            } else if (action.equals(ACTION_FETCH_SUCCEEDED)) {
                fetchFinishedCaching(mMAd);
            } else if (action.equals(ACTION_FETCH_STARTED_CACHING)) {
                fetchStartedCaching(mMAd);
            } else if (action.equals(ACTION_GETAD_FAILED)) {
                getAdFailure(mMAd);
            } else if (action.equals(ACTION_GETAD_SUCCEEDED)) {
                getAdSuccess(mMAd);
            } else if (action.equals(ACTION_INTENT_STARTED)) {
                intentStarted(mMAd, intent.getStringExtra("intentType"));
            }
        }
    }

    public void onSingleTap(MMAd mMAd) {
        MMLog.c(a, "Millennial Media ad Tap.");
    }

    public void overlayClosed(MMAd mMAd) {
        MMLog.c(a, "Millennial Media overlay closed.");
    }

    public void overlayOpened(MMAd mMAd) {
        MMLog.c(a, "Millennial Media overlay opened.");
    }

    @Deprecated
    public void overlayTap(MMAd mMAd) {
        MMLog.c(a, "Millennial Media overlay Tap.");
    }
}