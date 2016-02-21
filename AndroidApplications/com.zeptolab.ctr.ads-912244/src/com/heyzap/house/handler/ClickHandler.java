package com.heyzap.house.handler;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Toast;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.concurrent.atomic.AtomicBoolean;

public class ClickHandler {
    private AtomicBoolean marketIntentLaunched;
    private AdModel model;

    public ClickHandler(AdModel adModel) {
        this.marketIntentLaunched = new AtomicBoolean(false);
        this.model = adModel;
    }

    private boolean launchIfMarket(Context context, String str) {
        if (Utils.isAmazon()) {
            if (str.startsWith("amzn")) {
                launchMarketIntent(context, str);
                return true;
            } else if (str.contains("amazon.com/gp/mas/dl/android?")) {
                launchMarketIntent(context, "amzn://apps/" + str.substring(str.indexOf("android?")));
                return true;
            }
        } else if (str.startsWith(Event.INTENT_MARKET)) {
            launchMarketIntent(context, str);
            return true;
        } else if (str.contains("play.google")) {
            int indexOf = str.indexOf("details?");
            if (indexOf == -1) {
                launchMarketIntent(context, str);
                return true;
            } else {
                launchMarketIntent(context, "market://" + str.substring(indexOf));
                return true;
            }
        }
        return false;
    }

    private void launchMarketIntent(Context context, String str) {
        if (this.marketIntentLaunched.compareAndSet(false, true)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(AccessibilityNodeInfoCompat.ACTION_SET_SELECTION);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                try {
                    String str2;
                    if (Utils.isAmazon()) {
                        str2 = "The Appstore cannot be found.";
                    } else {
                        str2 = "The Play Store cannot be found.";
                    }
                    Toast.makeText(context, "Market not found, cannot install", 1).show();
                } catch (RuntimeException e2) {
                    RuntimeException runtimeException = e2;
                    Logger.log("(LAUNCH MARKET FAILED)");
                    runtimeException.printStackTrace();
                }
            }
        }
    }

    public void doClick(Activity activity) {
        doClick(activity, this.model.actionUrl, null);
    }

    public void doClick(Activity activity, String str, String str2) {
        if (this.model.onClick(activity, str2).booleanValue()) {
            try {
                Manager.handler.postDelayed(new c(this, ProgressDialog.show(activity, AdTrackerConstants.BLANK, "Loading...", true)), 3000);
            } catch (Exception e) {
                e.printStackTrace();
            }
            Manager.getInstance().getOnStatusListener(Integer.valueOf(this.model.getAdUnit())).onClick(this.model.getTag());
            gotoMarket(activity, str);
        }
    }

    protected void gotoMarket(Activity activity, String str) {
        this.marketIntentLaunched.set(false);
        if (!launchIfMarket(activity, str)) {
            WebView webView = new WebView(activity);
            webView.setWebViewClient(new d(this, activity));
            webView.setWebChromeClient(new WebChromeClient());
            webView.getSettings().setJavaScriptEnabled(true);
            webView.postDelayed(new e(this, activity, webView, str), 250);
            webView.postDelayed(new g(this, activity, webView, str), 750);
            webView.postDelayed(new i(this, activity, str), 1250);
        }
    }
}